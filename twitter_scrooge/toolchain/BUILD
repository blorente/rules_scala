load("@io_bazel_rules_scala//scala:providers.bzl", "declare_deps_provider")
load("//scala/toolchains:toolchains.bzl", "declare_deps_toolchain")
load("//twitter_scrooge/toolchain:toolchain.bzl", "twitter_scrooge_toolchain_deps")

twitter_scrooge_toolchain_deps(
    name = "deps_for_twitter_scrooge",
    provider_id = "scrooge_deps",
    visibility = ["//visibility:public"],
)

declare_deps_provider(
    name = "scrooge_deps_provider",
    visibility = ["//visibility:public"],
    deps = [
        "@libthrift//jar",
        "@io_bazel_rules_scala_scrooge_core",
        "@io_bazel_rules_scala_scrooge_generator",
        "@io_bazel_rules_scala_util_core",
        "@io_bazel_rules_scala_util_logging",
    ],
)

declare_deps_toolchain(
    name = "twitter_scrooge_deps_toolchain_impl",
    visibility = ["//visibility:public"],
    dep_providers = {
        ":scrooge_deps_provider": "scrooge_deps",
    }
)

toolchain(
    name = "twitter_scrooge_deps_toolchain",
    toolchain = ":twitter_scrooge_deps_toolchain_impl",
    toolchain_type = "@io_bazel_rules_scala//twitter_scrooge/toolchain:twitter_scrooge_toolchain_type",
    visibility = ["//visibility:public"],
)

toolchain_type(
    name = "twitter_scrooge_toolchain_type",
    visibility = ["//visibility:public"],
)
