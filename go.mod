module github.com/fluid-cloudnative/fluid

go 1.18

replace k8s.io/api => k8s.io/api v0.23.0

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.23.0

replace k8s.io/apimachinery => k8s.io/apimachinery v0.23.1-rc.0

replace k8s.io/apiserver => k8s.io/apiserver v0.23.0

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.23.0

replace k8s.io/client-go => k8s.io/client-go v0.23.0

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.23.0

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.23.0

replace k8s.io/code-generator => k8s.io/code-generator v0.23.1-rc.0

replace k8s.io/component-base => k8s.io/component-base v0.23.0

replace k8s.io/component-helpers => k8s.io/component-helpers v0.23.0

replace k8s.io/controller-manager => k8s.io/controller-manager v0.23.0

replace k8s.io/cri-api => k8s.io/cri-api v0.23.1-rc.0

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.23.0

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.23.0

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.23.0

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.23.0

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.23.0

replace k8s.io/kubectl => k8s.io/kubectl v0.23.0

replace k8s.io/kubelet => k8s.io/kubelet v0.23.0

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.23.0

replace k8s.io/metrics => k8s.io/metrics v0.23.0

replace k8s.io/mount-utils => k8s.io/mount-utils v0.23.2-rc.0

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.23.0

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.23.0

replace k8s.io/sample-controller => k8s.io/sample-controller v0.23.0

require (
	github.com/agiledragon/gomonkey/v2 v2.10.1
	github.com/brahma-adshonor/gohook v1.1.9
	github.com/container-storage-interface/spec v1.7.0
	github.com/docker/go-units v0.5.0
	github.com/felixge/fgprof v0.9.3
	github.com/go-logr/logr v1.3.0
	github.com/golang/glog v1.0.0
	github.com/golang/mock v1.6.0
	github.com/kubernetes-csi/drivers v1.0.2
	github.com/onsi/ginkgo v1.16.5
	github.com/onsi/gomega v1.27.10
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.16.0
	github.com/smartystreets/goconvey v1.8.1
	github.com/spf13/cobra v1.7.0
	github.com/stretchr/testify v1.8.4
	go.uber.org/zap v1.24.0
	golang.org/x/crypto v0.14.0
	golang.org/x/net v0.17.0
	google.golang.org/grpc v1.40.0
	gopkg.in/yaml.v2 v2.4.0
	gopkg.in/yaml.v3 v3.0.1
	k8s.io/api v0.23.0
	k8s.io/apimachinery v0.24.0
	k8s.io/client-go v0.23.0
	k8s.io/component-base v0.23.0
	k8s.io/component-helpers v0.23.0
	k8s.io/klog/v2 v2.110.1
	k8s.io/kube-openapi v0.0.0-20211115234752-e816edb12b65
	k8s.io/kubernetes v1.23.0
	k8s.io/utils v0.0.0-20210930125809-cb0fa318a74b
	sigs.k8s.io/controller-runtime v0.11.1
	sigs.k8s.io/yaml v1.3.0
)

require (
	cloud.google.com/go v0.81.0 // indirect
	github.com/PuerkitoBio/purell v1.1.1 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/emicklei/go-restful v2.16.0+incompatible // indirect
	github.com/evanphx/json-patch v4.12.0+incompatible // indirect
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/go-logr/zapr v1.2.0 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.19.5 // indirect
	github.com/go-openapi/swag v0.19.14 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/google/pprof v0.0.0-20211214055906-6f57359322fd // indirect
	github.com/google/uuid v1.1.2 // indirect
	github.com/googleapis/gnostic v0.5.5 // indirect
	github.com/gopherjs/gopherjs v1.17.2 // indirect
	github.com/imdario/mergo v0.3.12 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/jtolds/gls v4.20.0+incompatible // indirect
	github.com/kubernetes-csi/csi-lib-utils v0.9.1 // indirect
	github.com/mailru/easyjson v0.7.6 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/moby/spdystream v0.2.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.42.0 // indirect
	github.com/prometheus/procfs v0.10.1 // indirect
	github.com/rogpeppe/go-internal v1.10.0 // indirect
	github.com/smarty/assertions v1.15.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	go.uber.org/atomic v1.7.0 // indirect
	go.uber.org/multierr v1.6.0 // indirect
	golang.org/x/arch v0.0.0-20190312162104-788fe5ffcd8c // indirect
	golang.org/x/oauth2 v0.5.0 // indirect
	golang.org/x/sys v0.13.0 // indirect
	golang.org/x/term v0.13.0 // indirect
	golang.org/x/text v0.13.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	gomodules.xyz/jsonpatch/v2 v2.2.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20210831024726-fe130286e0e2 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 // indirect
	k8s.io/apiextensions-apiserver v0.23.0 // indirect
	k8s.io/apiserver v0.23.0 // indirect
	sigs.k8s.io/json v0.0.0-20211020170558-c049b76a60c6 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.0 // indirect
)

replace k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.23.0
