load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def anchore_deps():
    http_archive(
        name = "grype_linux_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "1de013f33a235d0c25f7dc496f7efd1621712ab4bc9f327652c62d1af4bdeb64",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.48.0/grype_0.48.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_linux_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "2ecae2883e99aa15929a7df8b480838fbc7409e29e94345375d86569afb58ade",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.48.0/grype_0.48.0_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_amd64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "c8da0a4277979d93404d879c80d0ed751b301b5974dbdb0112cc577e19125f95",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.48.0/grype_0.48.0_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_darwin_arm64",
        build_file_content = 'exports_files(["grype"], visibility = ["//visibility:public"])',
        sha256 = "cb1129a882ffe2471cd5406bc6004924cb5d8a172a8bd38037e673f0bcdca80a",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.48.0/grype_0.48.0_darwin_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "grype_windows",
        build_file_content = 'exports_files(["grype.exe"], visibility = ["//visibility:public"])',
        sha256 = "f643b5705f2d1f7c67df9163d8493acce22d743f5fae7a13817d8b74be67dba6",
        urls = [
            "https://github.com/anchore/grype/releases/download/v0.48.0/grype_0.48.0_windows_amd64.zip",
        ],
    )

    http_archive(
        name = "syft_linux_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "00794a0eafe3e86cf10e096fffd8f983551fc8585937deb4fc44203635f0b2ca",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.54.0/syft_0.54.0_linux_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_linux_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "60f6f2bedc716b10a1aa7791f9c7d67a11563dd13d11c370bccc28edc801d9be",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.54.0/syft_0.54.0_linux_arm64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_amd64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "c400be25b706e2156623c62ce3044b5e0d4e4c535baddcbf361e02a17653e2b4",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.54.0/syft_0.54.0_darwin_amd64.tar.gz",
        ],
    )

    http_archive(
        name = "syft_darwin_arm64",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "e308e8ac8aba47c3a9fbf70473437a0dcd713f8ed7b53bd3ca231019b3bc12ad",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.54.0/syft_0.54.0_darwin_arm64.zip",
        ],
    )

    http_archive(
        name = "syft_windows",
        build_file_content = 'exports_files(["syft"], visibility = ["//visibility:public"])',
        sha256 = "b62445765fdd71dc52f3cc9077ad2c002666c29c0e4d9cef78a85b6e44516c5f",
        urls = [
            "https://github.com/anchore/syft/releases/download/v0.54.0/syft_0.54.0_windows_amd64.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "io_bazel_stardoc",
        sha256 = "c9794dcc8026a30ff67cf7cf91ebe245ca294b20b071845d12c192afe243ad72",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.5.0/stardoc-0.5.0.tar.gz",
            "https://github.com/bazelbuild/stardoc/releases/download/0.5.0/stardoc-0.5.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
        ],
        sha256 = "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_docker",
        sha256 = "59536e6ae64359b716ba9c46c39183403b01eabfbd57578e84398b4829ca499a",
        strip_prefix = "rules_docker-0.22.0",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.22.0/rules_docker-v0.22.0.tar.gz"],
    )

    _maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_protobuf",
	    sha256 = "25f1292d4ea6666f460a2a30038eef121e6c3937ae0f61d610611dfb14b0bd32",
        strip_prefix = "protobuf-3.19.1",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/refs/tags/v3.19.1.zip"],
    )
