load("@io_bazel_rules_go//go:def.bzl", _go_binary = "go_binary")

def go_binary(name, **kwargs):
    _go_binary(
        name = name,
        **kwargs,
    )

    _go_binary(
        name = name +".for-container",
        goos = "linux",
        goarch = "amd64",
        **kwargs,
    )
