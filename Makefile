HUGO ?= hugo
PUBLIC = public
BRANCH_DEPLOY = gh-pages
PORT = 1337

# ── Default ───────────────────────────────────────────────────────────────────

.DEFAULT_GOAL := help

help:
	@echo ""
	@echo "  make serve    — start local dev server (localhost:1337, live reload)"
	@echo "  make build    — production build into $(PUBLIC)/"
	@echo "  make clean    — remove $(PUBLIC)/"
	@echo "  make deploy   — push $(PUBLIC)/ to $(BRANCH_DEPLOY) branch (GitHub Pages)"
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

# ── Deploy (manual fallback — CI/CD via GitHub Actions is preferred) ──────────
# Requires: git worktree or gh-pages branch pre-created
# Usage: make deploy  (only if not using GitHub Actions)

deploy: build
	cd $(PUBLIC) && \
	git init && \
	git checkout -b $(BRANCH_DEPLOY) && \
	git add -A && \
	git commit -m "deploy: $$(date -u '+%Y-%m-%d %H:%M:%S UTC')" && \
	git push -f origin $(BRANCH_DEPLOY)

.PHONY: help serve build clean deploy
