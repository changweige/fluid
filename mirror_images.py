import os
from os import PathLike
import sys
import yaml
import docker
import posixpath
import logging
import subprocess

from argparse import ArgumentParser


def execute(cmd, **kwargs):
    exc = None

    shell = kwargs.pop("shell", False)
    print_output = kwargs.pop("print_output", False)
    print_cmd = kwargs.pop("print_cmd", True)
    print_err = kwargs.pop("print_err", True)

    if print_cmd:
        logging.info("Executing command: %s" % cmd)

    try:
        output = subprocess.check_output(
            cmd, shell=shell, stderr=subprocess.STDOUT, **kwargs
        )
        output = output.decode("utf-8")
        if print_output:
            logging.info("%s" % output)
    except subprocess.CalledProcessError as exc:
        o = exc.output.decode() if exc.output is not None else ""
        if print_err:
            logging.error(
                "Command: %s\nReturn code: %d\nError output:\n%s"
                % (cmd, exc.returncode, o)
            )

        return False, o

    return True, output


def load_values(p: PathLike):
    with open(p) as fd:
        values = yaml.safe_load(fd)

    return values


def filter_all_container_images(values: dict, new_repo, images: list, new_values: dict):
    for k, v in values.items():
        new_values[k] = v
        if isinstance(v, dict):
            filter_all_container_images(v, new_repo, images, new_values)
        if k == "image" and isinstance(v, str):
            tokens = v.split(":")
            if len(tokens) != 2:
                continue
            else:
                images.append(v)
                b = posixpath.basename(v)
                new_image_id = posixpath.join(new_repo, b)
                v = new_image_id
                v.replace(v, new_image_id)
                data = bytearray(v.encode())
                data[:] = bytearray(new_image_id.encode())
                print("replace new image ", new_image_id)
                new_values[k] = new_image_id
                values[k] = new_image_id

    return images


def mirror_images(old_images, new_repo):
    engine = "docker"
    for image in old_images:
        b = posixpath.basename(image)
        new_image_id = posixpath.join(new_repo, b)
        print(new_image_id)
        cmd = [engine, "pull", image]
        execute(cmd)
        cmd = [engine, "tag", image, new_image_id]
        execute(cmd)
        cmd = [engine, "push", new_image_id]
        execute(cmd)

if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("--values", type=str, required=True)
    parser.add_argument("--new-repo", type=str, required=True)

    args = parser.parse_args()
    p = args.values
    new_repo = args.new_repo

    values: dict = load_values(p)

    if values is None:
        print("invalid helm chart values")
        sys.exit(-1)

    images = list()
    new_values = dict()
    filter_all_container_images(values, new_repo, images, new_values)
    print("new values ", new_values)

    with open("new_values.yaml", "w") as f:
        yaml.dump(values, f)

    mirror_images(images, new_repo)
