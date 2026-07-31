<!-- regenerate: off -->
<!-- This README is maintained by hand; the i-d-template auto-regeneration is disabled. -->

# OpenID Authentication Token Protocol

This is the working area for the Internet-Draft "OpenID Authentication Token
Protocol", intended for the OpenID Connect Working Group.

* [Editor's Copy](https://gffletch.github.io/openid_authn_token/#go.draft-openid-authn-token-protocol.html)
* [Compare Editor's Copy to Individual Draft](https://gffletch.github.io/openid_authn_token/#go.draft-openid-authn-token-protocol.diff)

## Draft format and build process

> **Note (process change, 2026-07):** This draft is moving toward the OpenID
> Foundation authoring toolchain. The repository now carries the spec in **two
> Markdown source files**. When you change the spec, please keep both in sync.

1. **`draft-openid-authn-token-protocol.md`** — the original **kramdown-rfc**
   source (martinthomson/i-d-template). This is what CI builds and publishes as
   the Editor's Copy on GitHub Pages. Refs use `{{RFCxxxx}}`; body uses
   `--- abstract` / `--- middle` / `--- back`.

2. **`openid-authn-token-1_0.md`** — the **mmark** source in the OpenID
   Foundation house format (built with `danielfett/markdown2rfc`, i.e.
   mmark → xml2rfc). This is the copy submitted to the OpenID Connect Working
   Group. Front matter is TOML between `%%%`; refs use `[@!RFCxxxx]`
   (normative) / `[@?RFCxxxx]` (informative); body uses `.# Abstract` /
   `{mainmatter}` / `{backmatter}`.

Pre-adoption this is a personal draft: the built HTML/TXT of the mmark source is
submitted to the WG mailing list. If the work is adopted, it will move to its
own repository under the `openid` GitHub organization.

## Command Line Usage

Build the OpenID Foundation (mmark) copy locally with `make`:

```sh
$ make          # HTML + TXT
$ make html     # HTML only
$ make txt      # plain text only
$ make clean    # remove build outputs
```

This requires the OIDF toolchain, available via Homebrew:

```sh
$ brew install mmark xml2rfc
```

For byte-for-byte parity with the OpenID Foundation CI pipeline, you can instead
build with the same Docker image the OIDF uses:

```sh
$ docker run -v `pwd`:/data danielfett/markdown2rfc openid-authn-token-1_0.md
```

The kramdown Editor's Copy is built automatically by CI (GitHub Actions), so
installing the kramdown toolchain locally is not required.

## Contributing

See the
[guidelines for contributions](https://github.com/gffletch/openid_authn_token/blob/main/CONTRIBUTING.md).

The contributing file also has tips on how to make contributions, if you
don't already know how to do that.
