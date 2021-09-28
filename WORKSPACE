workspace(
    name = "monorepo-example",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//:local.bzl", "local_archive")

local_archive(
	 name = "io_bazel_rules_go",
	 src = "rules_go-70b8365a.tar.gz",
)
# http_archive(
#    name = "io_bazel_rules_go",
#    sha256 = "8e968b5fcea1d2d64071872b12737bbb5514524ee5f0a4f54f5920266c261acb",
#    urls = [
#        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.28.0/rules_go-v0.28.0.zip",
#        "https://github.com/bazelbuild/rules_go/releases/download/v0.28.0/rules_go-v0.28.0.zip",
#    ],
# )

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.17")

http_archive(
    name = "bazel_gazelle",
    sha256 = "62ca106be173579c0a167deb23358fdfe71ffa1e4cfdddf5582af26520f1c66f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.23.0/bazel-gazelle-v0.23.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.23.0/bazel-gazelle-v0.23.0.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
load("//:deps.bzl", "go_dependencies")

# gazelle:repository_macro deps.bzl%go_dependencies
go_dependencies()

gazelle_dependencies()

http_archive(
    name = "com_google_protobuf",
    sha256 = "d0f5f605d0d656007ce6c8b5a82df3037e1d8fe8b121ed42e536f569dec16113",
    strip_prefix = "protobuf-3.14.0",
    urls = [
        "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.14.0.tar.gz",
        "https://github.com/protocolbuffers/protobuf/archive/v3.14.0.tar.gz",
    ],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

http_archive(
    name = "com_github_seh_rules_cue",
    sha256 = "fac750fb438b98628d1cf6bca7d73885db9754d9517b64203cee05a164428d76",
    strip_prefix = "rules_cue-cb515350a1a691058d3ccfe2d8528c8766d69b0c",
    url = "https://github.com/seh/rules_cue/archive/cb515350a1a691058d3ccfe2d8528c8766d69b0c.zip",
)

load(
    "@com_github_seh_rules_cue//cue:deps.bzl",
    "cue_register_tool",
    "cue_rules_dependencies",
)

cue_register_tool()

cue_rules_dependencies()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "4e1a5633267a0ca1d550cced2919dd4148575c0bafd47608b88aea79c41b5ca3",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/4.2.0/rules_nodejs-4.2.0.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")
node_repositories(package_json = ["//:package.json"])
