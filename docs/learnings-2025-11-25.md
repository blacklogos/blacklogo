# Learnings - November 25, 2025

Session: Building and launching cc4.marketing

---

## 1. Google Forms Custom HTML Integration

**Problem:** `fetch()` with `mode: 'no-cors'` does NOT reliably submit data to Google Forms.

**Solution:** Use hidden iframe method:
```javascript
// Create hidden iframe
const iframe = document.createElement('iframe');
iframe.name = 'hidden_iframe';
iframe.style.display = 'none';
document.body.appendChild(iframe);

// Create form targeting the iframe
const form = document.createElement('form');
form.method = 'POST';
form.action = GOOGLE_FORM_URL;
form.target = 'hidden_iframe';

// Add hidden input with entry.XXXXX name
const input = document.createElement('input');
input.type = 'hidden';
input.name = 'entry.778960156';  // Entry ID from form
input.value = email;
form.appendChild(input);

// Submit and cleanup
document.body.appendChild(form);
form.submit();
setTimeout(() => {
  document.body.removeChild(form);
  document.body.removeChild(iframe);
}, 1000);
```

**Finding Entry IDs:**
```bash
curl -s "GOOGLE_FORM_URL" | grep -oE '\[\[?[0-9]{5,12}' | head -5
```

**Documented in:** `/docs/google-form-html-integration.md`

---

## 2. Astro Sitemap Configuration

**Basic (all same priority):**
```javascript
sitemap({
  changefreq: 'weekly',
  priority: 0.7,
})
```

**Advanced (per-page priorities):**
```javascript
sitemap({
  serialize(item) {
    if (item.url === 'https://example.com/') {
      item.priority = 1.0;
      item.changefreq = 'daily';
    } else if (item.url.includes('/important/')) {
      item.priority = 0.9;
      item.changefreq = 'weekly';
    }
    return item;
  },
})
```

**Priority guidelines:**
- Homepage: 1.0, daily
- Conversion pages: 0.9, weekly
- Core content: 0.8, monthly
- Supporting pages: 0.7, monthly

---

## 3. robots.txt for SEO + AI Bots

Modern robots.txt should explicitly allow AI bots:

```
# AI Bots
User-agent: GPTBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: Claude-Web
Allow: /

User-agent: Anthropic-AI
Allow: /

User-agent: PerplexityBot
Allow: /
```

Also include social crawlers:
```
User-agent: facebookexternalhit
User-agent: Twitterbot
User-agent: LinkedInBot
```

---

## 4. Comprehensive SEO Meta Tags

Essential meta tags for every page:

```html
<!-- Primary -->
<title>{title}</title>
<meta name="description" content={description}>
<meta name="keywords" content={keywords}>
<meta name="robots" content="index, follow">
<link rel="canonical" href={url}>

<!-- Open Graph -->
<meta property="og:type" content="website">
<meta property="og:url" content={url}>
<meta property="og:title" content={title}>
<meta property="og:description" content={description}>
<meta property="og:image" content={image}>
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">

<!-- Twitter -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content={title}>
<meta name="twitter:description" content={description}>
<meta name="twitter:image" content={image}>

<!-- JSON-LD Structured Data -->
<script type="application/ld+json">
  { "@type": "Course", ... }
</script>
```

---

## 5. Image Asset Requirements

**OG Image (social sharing):**
- Size: 1200x630px
- Format: PNG or JPG
- Used by: Facebook, LinkedIn, Twitter link previews

**Social Square (feed posts):**
- Size: 1080x1080px
- Format: PNG
- Used by: Instagram, Threads, feed posts

**Favicons:**
- favicon.svg (scalable)
- favicon-32x32.png
- favicon-16x16.png
- apple-touch-icon.png (180x180)

**Convert SVG to PNG with ImageMagick:**
```bash
magick -background none -density 300 input.svg -resize 1200x630 output.png
```

---

## 6. Astro Framework Notes

**Pass variables to client-side script:**
```astro
---
const API_URL = "https://example.com";
---

<script define:vars={{ API_URL }}>
  // API_URL is available here
  console.log(API_URL);
</script>
```

**Static site generation:**
```javascript
export default defineConfig({
  site: 'https://example.com',
  output: 'static',
  integrations: [mdx(), sitemap()],
});
```

---

## 7. GitHub Release Best Practices

**Create tagged release:**
```bash
git tag v0.1.0
git push origin v0.1.0
gh release create v0.1.0 \
  --title "v0.1.0 - Release Name" \
  --notes "Release notes in markdown"
```

**Semantic versioning:**
- v0.1.0 - Initial public release (beta)
- v1.0.0 - Stable release
- v1.1.0 - New features
- v1.0.1 - Bug fixes

---

## 8. Repository Housekeeping for Launch

Essential files for public repo:
- README.md - Clear project description, how to use
- LICENSE - MIT for open source
- CONTRIBUTING.md - How to contribute
- .gitignore - Proper exclusions
- Proper package.json version

Nice to have:
- CHANGELOG.md
- CODE_OF_CONDUCT.md
- Issue/PR templates in .github/

---

## 9. Analytics Integration

**Beam Analytics:**
```html
<script 
  src="https://beamanalytics.b-cdn.net/beam.min.js" 
  data-token="YOUR_TOKEN" 
  async
></script>
```

**Plausible/Bialytics style:**
```html
<script 
  defer 
  data-domain="yourdomain.com" 
  src="https://analytics.example.com/js/script.js"
></script>
```

Place in `<head>` before other scripts for accurate tracking.

---

## 10. Social Media Launch Content

**Platform-specific formatting:**

| Platform | Format | Length | Hashtags |
|----------|--------|--------|----------|
| LinkedIn | Long-form, paragraphs | 1300 chars | 5-10 |
| Twitter | Short, punchy | 280 chars | 2-3 |
| Twitter Thread | 7-10 tweets | Each 280 | First/last only |
| Threads | Medium, casual | 500 chars | 3-5 |
| Reddit | Detailed, humble | Long OK | None |
| Facebook | Personal, casual | Medium | 0-3 |
| HN | Technical, factual | Brief | None |

**Key elements:**
- What it is (clear value prop)
- How it works (simple steps)
- Why free (builds trust)
- Call to action (link)

---

## Summary

Today's session covered the full lifecycle of preparing a website for public launch:
1. Email capture integration (Google Forms)
2. SEO optimization (meta, sitemap, robots.txt)
3. Visual assets (OG image, favicons, social images)
4. Analytics setup
5. Repository preparation (README, LICENSE, etc.)
6. Social media content creation
7. Release management

The most important technical learning was the Google Forms hidden iframe method - `fetch` with `no-cors` simply doesn't work reliably.
