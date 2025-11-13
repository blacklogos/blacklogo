# Start Lesson 1.7: Advanced Navigation & Search

Master finding anything instantly in your marketing projects, no matter how large they get!

## The Marketing File Jungle

After 6 months of campaigns, you might have:
- 500+ content files
- 50+ campaign folders
- Multiple versions of everything
- Files from various team members

**How do you find that one email template from Q2?**

---

## Power Search Techniques

### 1. Pattern Matching (Glob)

Find files by pattern:
```
Find all email templates: **/*email*.html
Find Q2 campaigns: campaigns/2024-q2/**/*
Find all PDFs: **/*.pdf
Find version 2 files: **/*_v2.*
```

Try asking me:
```
Find all files with "launch" in the name
```

---

### 2. Content Search (Grep)

Search INSIDE files for text:
```
Find files mentioning "AI task prioritization"
Find all content targeting "Startup Sam"
Find files with old pricing ($10/user)
Find broken links (http://)
```

Try:
```
Search all content files for mentions of "Asana" (our competitor)
```

---

### 3. Combined Search

Most powerful: combine pattern + content:
```
Find email files mentioning "free trial"
Find blog posts about "team collaboration" from Q1
Find social posts targeting "remote teams"
```

---

## Batch Operations

Once you find files, act on them:

### Batch Renaming
```
Rename all files from "v1" to "v2"
Add date prefix to all campaign files
Fix inconsistent naming in social folder
```

### Batch Updates
```
Update pricing across all files ($10 → $12)
Replace "FocusFlow 1.0" with "FocusFlow 2.0"
Update old links to new domain
```

### Batch Organization
```
Move all Q1 campaigns to archive
Organize files by campaign name
Create campaign-specific folders
```

---

## Real-World Exercise: The Pricing Update

**Scenario**: Your pricing changed from $10/user to $12/user. You need to update this everywhere.

### Step 1: Find All Mentions
```
Search all files for "$10/user" or "$10 per user"
```

### Step 2: Review Context
I'll show you each file and the surrounding text to verify it needs updating.

### Step 3: Batch Update
```
Replace "$10/user" with "$12/user" in all files
```

### Step 4: Verify
```
Search again to ensure all updated
Check for variations like "$10 per user", "ten dollars"
```

Let's do this together! Tell me: **"Update the pricing from $10 to $12"**

---

## Advanced Search Tips

### Use Regular Expressions
```
Find email addresses: [a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}
Find phone numbers: \d{3}-\d{3}-\d{4}
Find dates: \d{4}-\d{2}-\d{2}
```

### Search with Context
```
Show me mentions of "conversion rate" with 3 lines of context
Find "CTA" and show surrounding paragraph
```

### Exclude Patterns
```
Find all markdown files EXCEPT in archive folder
Search for "draft" but exclude old-campaigns/
```

---

## Your Challenge

Complete these search tasks:

1. **Find Files**: Locate all blog posts from Q1 2024
2. **Content Search**: Find all mentions of competitor "Monday.com"
3. **Batch Update**: Update a consistent term across multiple files
4. **Complex Query**: Find email files targeting "Maria" persona with "collaboration" mentioned

Show me what you discover!

---

## 🎉 Module 1 Complete!

You've mastered:
- ✅ File operations and organization
- ✅ Creating marketing assets
- ✅ Using and creating agents
- ✅ Project memory with CLAUDE.md
- ✅ Advanced search and navigation

**Ready for advanced marketing workflows?** Type: `/start-2-1` to begin Module 2!
