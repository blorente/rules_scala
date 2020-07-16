load("//scala/private/toolchain_deps:toolchain_deps.bzl", "expose_toolchain_deps")

toolchain_type_label = "@io_bazel_rules_scala//twitter_scrooge/toolchain:twitter_scrooge_toolchain_type"

def _twitter_scrooge_toolchain_deps(ctx):
    return expose_toolchain_deps(ctx, toolchain_type_label)

twitter_scrooge_toolchain_deps = rule(
    implementation = _twitter_scrooge_toolchain_deps,
    attrs = {
        "provider_id": attr.string(mandatory = True),
    },
    toolchains = [toolchain_type_label],
)
