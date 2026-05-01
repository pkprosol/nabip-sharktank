# NABIP Shark Tank Landing Page

Static landing page for the NABIP Shark Tank — held at the NABIP Annual Convention 2026, Harrah's Resort, Atlantic City, NJ, Monday, June 29, 2026 (12:30–2:30 PM, exhibit hall).

## Wired

- **Stripe payment link** (entry fee, $10,000): `https://buy.stripe.com/bJe00kf5Ybgx09B3He57W0J`
- All "Apply to Compete" CTAs route directly to Stripe checkout.
- `SPOTS_REMAINING` env var controls the live scarcity counter in the top banner (default `5`).

## TBD before final launch

Search `public/index.html` for `TBD:` to find every deferred item:

- Final panel of judges beyond Al Lewis
- Application deadline date (recommend ~3 weeks pre-event, e.g., June 8, 2026)
- Specific room / booth within Harrah's Resort exhibit hall

## Updating the spots counter

Edit `SPOTS_REMAINING` in `render.yaml` (or the value in the Render dashboard env vars), then redeploy. `build.sh` substitutes the value into the page at build time.

## Deploy to Render

1. Push this repo to GitHub.
2. In Render dashboard → **New** → **Static Site**, connect the repo.
3. Render auto-detects `render.yaml`. Publish directory is `./public`.
4. Custom domain: point DNS (e.g. `nabipsharktank.validationinstitute.com`) to Render per their docs.
