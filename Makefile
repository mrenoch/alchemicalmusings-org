HUGO ?= hugo
PUBLIC = public
BRANCH_DEPLOY = gh-pages
REMOTE_URL = https://github.com/mrenoch/alchemicalmusings-org.git
PORT = 1337

# ── Default ───────────────────────────────────────────────────────────────────

.DEFAULT_GOAL := help

help:
	@echo ""
	@echo "  make serve      — start local dev server (localhost:1337, live reload)"
	@echo "  make build      — production build into $(PUBLIC)/"
	@echo "  make clean      — remove $(PUBLIC)/"
	@echo "  make linkcheck  — check for broken links in built site (requires lychee)"
	@echo "  make linkcheck-post  — check a single post (POST=2026/my-post-slug)"
	@echo "  make deploy     — push $(PUBLIC)/ to $(BRANCH_DEPLOY) branch (GitHub Pages)"
	@echo ""

# ── Development ───────────────────────────────────────────────────────────────

serve:
	$(HUGO) server  -p $(PORT)

serve-drafts:
	$(HUGO) server --buildDrafts --buildFuture -p $(PORT)	

# ── Build ─────────────────────────────────────────────────────────────────────

build: clean
	$(HUGO) --minify

# ── Clean ─────────────────────────────────────────────────────────────────────

clean:
	rm -rf $(PUBLIC)/*

# ── Link checking ─────────────────────────────────────────────────────────────
# Requires lychee: brew install lychee
# Runs against the built site — call 'make build' first.
#
# Not fully working smoothly.  Got a useful report when running site locally 
#
# Full site:   make linkcheck
# Single post: make linkcheck-post POST=2026/johns-best-friend

LYCHEE_FLAGS = \
	--verbose \
	--no-progress \
	--base-url file://$(PWD)/$(PUBLIC) \
	--timeout 30 \
	--max-retries 2

linkcheck:
	lychee $(LYCHEE_FLAGS) \
	  --exclude-path './$(PUBLIC)/tags/**' \
	  --exclude-path './$(PUBLIC)/categories/**' \
	  './$(PUBLIC)/**/*.html'

POST ?= 2026/johns-best-friend
linkcheck-post:
	lychee $(LYCHEE_FLAGS) \
	  './$(PUBLIC)/$(POST)/index.html'

# ── Deploy (manual fallback — CI/CD via GitHub Actions is preferred) ──────────
# Requires: git worktree or gh-pages branch pre-created
# Usage: make deploy  (only if not using GitHub Actions)

deploy: build
	cd $(PUBLIC) && \
	git init && \
	git remote add origin $(REMOTE_URL) && \
	git checkout -b $(BRANCH_DEPLOY) && \
	git add -A && \
	git commit -m "deploy: $$(date -u '+%Y-%m-%d %H:%M:%S UTC')" && \
	git push -f origin $(BRANCH_DEPLOY)

.PHONY: help serve build clean linkcheck linkcheck-post deploy
