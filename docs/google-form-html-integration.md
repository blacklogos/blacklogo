# Google Form Integration with Custom HTML

A guide for embedding Google Forms into custom HTML/web pages with full styling control.

## Why Custom Integration?

Google Forms' default embed (iframe) looks generic. Custom integration lets you:
- Match your site's design
- Control the UX flow (show thank you message, redirect, etc.)
- Avoid the Google Forms branding

## Step 1: Create Your Google Form

1. Go to [Google Forms](https://forms.google.com)
2. Create a form with your fields (e.g., Email)
3. Get the form URL, it looks like:
   ```
   https://docs.google.com/forms/d/e/FORM_ID/viewform
   ```

## Step 2: Find the Entry IDs

Each form field has a unique entry ID. To find it:

### Method 1: Inspect the Form HTML
```bash
curl -s "https://docs.google.com/forms/d/e/YOUR_FORM_ID/viewform" | grep -oE '\[\[?[0-9]{5,12}' | head -5
```

The first number is typically your field's entry ID.

### Method 2: Browser DevTools
1. Open the Google Form in browser
2. Right-click the input field → Inspect
3. Look for `name="entry.XXXXXXX"` or `data-params` containing the ID

### Method 3: Pre-fill URL
1. Click the 3-dot menu in Google Forms → "Get pre-filled link"
2. Fill in test data and generate link
3. The URL will contain `entry.XXXXXXX=your_test_data`

## Step 3: Build the Form Action URL

```
https://docs.google.com/forms/d/e/FORM_ID/formResponse
```

Note: Change `viewform` to `formResponse`

## Step 4: The Hidden Iframe Method

**Important:** `fetch()` with `no-cors` does NOT work reliably with Google Forms. Use the hidden iframe method instead.

### Why fetch() fails:
- `no-cors` mode prevents reading the response
- Google Forms may not process the request properly
- FormData encoding issues

### The Working Solution:

```html
<form id="customForm">
  <input type="email" id="email" placeholder="your@email.com" required>
  <button type="submit">Submit</button>
</form>

<div id="thankYou" style="display: none;">
  Thank you for subscribing!
</div>

<script>
const FORM_ACTION = "https://docs.google.com/forms/d/e/YOUR_FORM_ID/formResponse";
const EMAIL_ENTRY = "entry.XXXXXXX"; // Your entry ID

document.getElementById('customForm').addEventListener('submit', function(e) {
  e.preventDefault();
  
  const email = document.getElementById('email').value;
  
  // 1. Create hidden iframe (prevents redirect)
  const iframe = document.createElement('iframe');
  iframe.name = 'hidden_iframe';
  iframe.style.display = 'none';
  document.body.appendChild(iframe);
  
  // 2. Create a form element
  const googleForm = document.createElement('form');
  googleForm.method = 'POST';
  googleForm.action = FORM_ACTION;
  googleForm.target = 'hidden_iframe'; // Submit to hidden iframe
  
  // 3. Add form data as hidden inputs
  const input = document.createElement('input');
  input.type = 'hidden';
  input.name = EMAIL_ENTRY;
  input.value = email;
  googleForm.appendChild(input);
  
  // 4. Submit
  document.body.appendChild(googleForm);
  googleForm.submit();
  
  // 5. Show success message
  document.getElementById('customForm').style.display = 'none';
  document.getElementById('thankYou').style.display = 'block';
  
  // 6. Cleanup
  setTimeout(() => {
    document.body.removeChild(googleForm);
    document.body.removeChild(iframe);
  }, 1000);
});
</script>
```

## Multiple Fields Example

```javascript
const FORM_ACTION = "https://docs.google.com/forms/d/e/YOUR_FORM_ID/formResponse";
const FIELDS = {
  email: "entry.778960156",
  name: "entry.123456789",
  message: "entry.987654321"
};

document.getElementById('contactForm').addEventListener('submit', function(e) {
  e.preventDefault();
  
  // Create iframe
  const iframe = document.createElement('iframe');
  iframe.name = 'hidden_iframe';
  iframe.style.display = 'none';
  document.body.appendChild(iframe);
  
  // Create form
  const googleForm = document.createElement('form');
  googleForm.method = 'POST';
  googleForm.action = FORM_ACTION;
  googleForm.target = 'hidden_iframe';
  
  // Add all fields
  Object.entries(FIELDS).forEach(([fieldId, entryName]) => {
    const input = document.createElement('input');
    input.type = 'hidden';
    input.name = entryName;
    input.value = document.getElementById(fieldId).value;
    googleForm.appendChild(input);
  });
  
  // Submit and cleanup
  document.body.appendChild(googleForm);
  googleForm.submit();
  
  setTimeout(() => {
    document.body.removeChild(googleForm);
    document.body.removeChild(iframe);
  }, 1000);
  
  // Show thank you
  showThankYou();
});
```

## Astro/React/Vue Integration

For frameworks, pass the constants and use the same logic:

### Astro Example
```astro
---
const GOOGLE_FORM_ACTION = "https://docs.google.com/forms/d/e/FORM_ID/formResponse";
const EMAIL_FIELD_NAME = "entry.778960156";
---

<form id="email-form">
  <input type="email" id="email-input" required />
  <button type="submit">Subscribe</button>
</form>

<script define:vars={{ GOOGLE_FORM_ACTION, EMAIL_FIELD_NAME }}>
  document.getElementById('email-form').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const email = document.getElementById('email-input').value;
    
    const iframe = document.createElement('iframe');
    iframe.name = 'hidden_iframe';
    iframe.style.display = 'none';
    document.body.appendChild(iframe);
    
    const googleForm = document.createElement('form');
    googleForm.method = 'POST';
    googleForm.action = GOOGLE_FORM_ACTION;
    googleForm.target = 'hidden_iframe';
    
    const input = document.createElement('input');
    input.type = 'hidden';
    input.name = EMAIL_FIELD_NAME;
    input.value = email;
    googleForm.appendChild(input);
    
    document.body.appendChild(googleForm);
    googleForm.submit();
    
    // Handle success UI...
    
    setTimeout(() => {
      document.body.removeChild(googleForm);
      document.body.removeChild(iframe);
    }, 1000);
  });
</script>
```

## Common Issues

### Issue: Form submits but no data in Google Forms
- **Cause:** Wrong entry ID
- **Fix:** Double-check entry ID using curl method above

### Issue: Page redirects to Google Forms
- **Cause:** Missing `target` on form or iframe not created
- **Fix:** Ensure `googleForm.target = 'hidden_iframe'` and iframe exists

### Issue: CORS errors in console
- **Cause:** Using `fetch()` instead of iframe method
- **Fix:** Use the hidden iframe approach (fetch with no-cors doesn't work)

### Issue: Form data shows as empty
- **Cause:** Input `name` doesn't match entry ID format
- **Fix:** Use exact format `entry.XXXXXXX`

## Quick Reference

| Step | Action |
|------|--------|
| 1 | Get Form ID from URL |
| 2 | Find entry IDs (curl or inspect) |
| 3 | Build formResponse URL |
| 4 | Create hidden iframe |
| 5 | Create form with target=iframe |
| 6 | Add hidden inputs with entry.XXX names |
| 7 | Submit and cleanup |

## Template

Copy this template and replace the placeholders:

```javascript
// Configuration
const GOOGLE_FORM_ACTION = "https://docs.google.com/forms/d/e/REPLACE_FORM_ID/formResponse";
const EMAIL_FIELD = "entry.REPLACE_ENTRY_ID";

// Form handler
function submitToGoogleForm(email) {
  const iframe = document.createElement('iframe');
  iframe.name = 'gform_iframe';
  iframe.style.display = 'none';
  document.body.appendChild(iframe);

  const form = document.createElement('form');
  form.method = 'POST';
  form.action = GOOGLE_FORM_ACTION;
  form.target = 'gform_iframe';

  const input = document.createElement('input');
  input.type = 'hidden';
  input.name = EMAIL_FIELD;
  input.value = email;
  form.appendChild(input);

  document.body.appendChild(form);
  form.submit();

  setTimeout(() => {
    document.body.removeChild(form);
    document.body.removeChild(iframe);
  }, 1000);
}
```
