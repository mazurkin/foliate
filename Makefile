SHELL := /bin/bash
ROOT  := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SERVE_HOST = 127.0.0.1
SERVE_PORT = 8000

# -----------------------------------------------------------------------------
# defaults
# -----------------------------------------------------------------------------

.DEFAULT_GOAL = serve

# -----------------------------------------------------------------------------
# serve
# -----------------------------------------------------------------------------

.PHONY: serve
serve:
	@echo "link: http://$(SERVE_HOST):$(SERVE_PORT)/"
	@python3 -m http.server "$(SERVE_PORT)" --bind "$(SERVE_HOST)" --directory "$(ROOT)"
