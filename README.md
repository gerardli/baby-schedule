# Baby Schedule (GitHub Pages Ready)

### Quick Deploy
1. Create a repo on GitHub (public is fine), name it e.g. `baby-schedule`.
2. Upload all files in this folder to the repo root.
3. Go to **Settings → Pages**:
   - Source: **Deploy from a branch**
   - Branch: **main** (or your default), folder: **/** (root)
4. Wait 1–2 min, your site will be at: `https://<username>.github.io/<repo>/`

### Notes
- PWA enabled (manifest + service worker). Works under subpath.
- Service worker caches `./` relative paths so it functions on GitHub Pages.
- If you change files, bump `CACHE_NAME` in `sw.js` to invalidate old cache.