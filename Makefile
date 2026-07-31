# Makefile — OpenID Authentication Token Protocol
#
# Builds the OpenID Foundation (mmark -> xml2rfc) source,
# `openid-authn-token-1_0.md`, into HTML/TXT for WG-listserv submission.
# Requires the OIDF toolchain locally:  brew install mmark xml2rfc
#
# The kramdown copy (draft-openid-authn-token-protocol.md) is built by CI
# (.github/workflows, via the martinthomson/i-d-template action), NOT this
# Makefile. See CLAUDE.md. To build the kramdown copy locally instead, clone
# https://github.com/martinthomson/i-d-template and use its own Makefile.

OIDF_DRAFT := openid-authn-token-1_0

.PHONY: all html txt clean

# Default: produce both HTML and TXT.
all: html txt

html: $(OIDF_DRAFT).html
txt:  $(OIDF_DRAFT).txt

$(OIDF_DRAFT).xml: $(OIDF_DRAFT).md
	mmark $< > $@

$(OIDF_DRAFT).html: $(OIDF_DRAFT).xml
	xml2rfc --html -o $@ $<

$(OIDF_DRAFT).txt: $(OIDF_DRAFT).xml
	xml2rfc --text -o $@ $<

clean:
	rm -f $(OIDF_DRAFT).xml $(OIDF_DRAFT).html $(OIDF_DRAFT).txt
