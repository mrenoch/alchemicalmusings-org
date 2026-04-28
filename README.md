# alchemicalmusing-org

Jonah's Blog: Aurum nostrum non est aurum vulgi

## Overview 

This repo is a refresh of my wordpress site that served me for over 15 years.  It was built with the help of Anthropic's @Claude and heavily inspired by my team at CCNMTL, and their fabulous hugo work (e.g. https://github.com/ccnmtl/compiled3 and https://github.com/ccnmtl/flgstatic ).

A static snapshot of the original, wordpress v1 site is published at https://classic.alchemicalmusings.org/.

---

## Writing a New Post

New posts use **Hugo leaf bundles** — a directory containing `index.md` plus
any images, rather than a flat `.md` file. This enables Hugo's built-in image
processing (automatic resizing at build time, no manual Photoshop needed).

### 1. Create the bundle directory

```
content/posts/YYYY/MM/my-post-slug/
├── index.md
└── cover.jpg        ← (or whatever you call it)
```

### 2. Front matter

```yaml
---
title: "My Post Title"
date: 2026-05-01T10:00:00
categories:
  - "philosophy"
tags:
  - "memory"
thumbnail:
  src: cover.jpg
  visibility: ["list", "post"]
---
```

- `thumbnail.src` — filename of the image **relative to the bundle directory**
- `visibility: ["list", "post"]` — shows a cropped thumbnail in the post listing
  **and** a larger version (640px wide, floating right) in the single post view
- Omit `visibility` (or set `["list"]`) to show the thumbnail in listing only

Hugo generates both sizes automatically from the same source image.
Put your highest-resolution version in the bundle; Hugo handles the rest.

### 3. Images in the post body

To include the cover (or any image) in the post body with a caption, use
Hugo's built-in `figure` shortcode:

```
{{< figure src="cover.jpg" caption="Optional caption here." >}}
```

Or for a plain inline image:

```markdown
![Alt text](cover.jpg)
```

Hugo resolves page-bundle-relative paths, so no `/images/...` prefix needed.

### 4. Build and preview

```bash
make serve       # live-reload dev server at http://localhost:1337
make build       # production build into public/
```

Push to `main` — GitHub Actions builds and deploys to GitHub Pages automatically.
