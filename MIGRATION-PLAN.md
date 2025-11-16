# Repository Migration Plan: Move to Branded Repo

## Overview

This plan guides you through moving the Marketing Tools Marketplace and Claude Code for Marketers course from the current `blacklogo` repository to a new, properly branded repository.

**Goal:** Create a clean, professional repository ready for public launch
**Timeline:** Can be done in 1 day (after QC is complete)
**Result:** New repository with proper branding, organization, and documentation

---

## Pre-Migration: Decisions to Make

### Decision 1: Repository Name & Structure

**Option A: Single Repo (Recommended)**
```
marketing-tools-marketplace/
├── marketplace/          # Plugin marketplace
├── course/              # CC4MKT course
├── docs/               # Shared documentation
└── README.md           # Unified introduction
```

**Pros:** Simple, everything together, easier to maintain
**Cons:** Repo might feel large

**Option B: Two Separate Repos**
```
Repo 1: marketing-tools-marketplace/
Repo 2: claude-code-for-marketers/
```

**Pros:** Clear separation, each can have own brand
**Cons:** Need to maintain two repos, cross-references more complex

**Recommendation:** **Option A** (Single Repo)

### Decision 2: Repository Name Options

1. **marketing-tools-marketplace** (descriptive)
2. **claude-marketing-tools** (brand + purpose)
3. **cc4mkt-tools** (course tie-in)
4. **marketflow** (brandable, memorable)
5. **compounding-marketing** (philosophy-driven)

**Recommendation:** `marketing-tools-marketplace` (clear, searchable, professional)

### Decision 3: GitHub Organization vs Personal Account

**Option A: Organization** (e.g., `blacklogos/marketing-tools-marketplace`)
- Professional appearance
- Multiple collaborators
- Better for team projects

**Option B: Personal** (e.g., `yourusername/marketing-tools-marketplace`)
- Simpler to set up
- Personal branding
- Can transfer later

**Recommendation:** Organization if you plan to build a team/brand

### Decision 4: What to Include

**Include:**
- ✅ Marketplace infrastructure (.claude-plugin/, plugins/, shared/)
- ✅ Both plugins (compounding-marketing, content-factory)
- ✅ Course content (cc4mkt/)
- ✅ Documentation (docs/)
- ✅ Examples
- ✅ Templates

**Exclude:**
- ❌ Old website files (index.html, css/, admin/)
- ❌ Personal files (.DS_Store)
- ❌ Legacy content not related to course/marketplace

---

## Migration Plan: 5 Phases

## Phase 1: Preparation (1-2 hours)

### Step 1.1: Create New Repository Structure

**Create directory structure locally:**

```bash
# Create a fresh directory for the new repo
mkdir ~/marketing-tools-marketplace-new
cd ~/marketing-tools-marketplace-new

# Initialize git
git init
git branch -m main

# Create structure
mkdir -p .claude-plugin
mkdir -p plugins/compounding-marketing
mkdir -p plugins/content-factory
mkdir -p shared/agents
mkdir -p shared/templates
mkdir -p shared/skills
mkdir -p docs
mkdir -p examples/campaigns
mkdir -p examples/workflows
mkdir -p course
mkdir -p brand
```

### Step 1.2: Create .gitignore

```bash
cat > .gitignore << 'EOF'
# macOS
.DS_Store
.AppleDouble
.LSOverride

# Thumbnails
._*

# Files that might appear in root
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# IDEs
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
logs/
*.log

# Environment
.env
.env.local

# Dependencies
node_modules/
package-lock.json

# Build outputs
dist/
build/

# Temporary files
tmp/
temp/
*.tmp

# Personal notes
NOTES.md
TODO.md
PERSONAL-*.md

# QC files (keep in old repo)
QC-*.md
EOF
```

### Step 1.3: Plan the File Mapping

Create `MIGRATION-MAP.md`:

```markdown
# File Migration Mapping

## From blacklogo/ to marketing-tools-marketplace/

### Marketplace Files
- blacklogo/.claude-plugin/ → .claude-plugin/
- blacklogo/plugins/ → plugins/
- blacklogo/shared/ → shared/
- blacklogo/examples/ → examples/
- blacklogo/README.md → README.md
- blacklogo/CLAUDE.md → CLAUDE.md
- blacklogo/LICENSE → LICENSE

### Course Files
- blacklogo/cc4mkt/ → course/

### Documentation
- blacklogo/docs/ → docs/

### Branding (new files)
- → brand/logo.svg
- → brand/guidelines.md
- → brand/colors.md

### NOT Migrated
- blacklogo/index.html (old website)
- blacklogo/css/ (old website)
- blacklogo/admin/ (old website)
- blacklogo/*.html (old website)
- blacklogo/.DS_Store
- blacklogo/QC-*.md (internal)
```

---

## Phase 2: Copy & Clean Content (2-3 hours)

### Step 2.1: Copy Marketplace Files

```bash
# Set paths
OLD_REPO=~/path/to/blacklogo
NEW_REPO=~/marketing-tools-marketplace-new

cd $NEW_REPO

# Copy marketplace configuration
cp -r $OLD_REPO/.claude-plugin/ .

# Copy plugins
cp -r $OLD_REPO/plugins/compounding-marketing/ plugins/
cp -r $OLD_REPO/plugins/content-factory/ plugins/

# Copy shared resources
cp -r $OLD_REPO/shared/agents/ shared/
cp -r $OLD_REPO/shared/templates/ shared/
# Note: skills/ might be empty, that's ok

# Copy documentation
cp -r $OLD_REPO/docs/ .

# Copy examples
cp -r $OLD_REPO/examples/ .

# Copy root files
cp $OLD_REPO/README.md .
cp $OLD_REPO/CLAUDE.md .
cp $OLD_REPO/LICENSE .
```

**Checklist:**
- [ ] All .claude-plugin files copied
- [ ] Both plugins copied completely
- [ ] Shared resources copied
- [ ] All docs copied
- [ ] Examples copied
- [ ] Root files copied

### Step 2.2: Copy Course Content

```bash
cd $NEW_REPO

# Copy entire course
cp -r $OLD_REPO/cc4mkt/ course/

# Rename if desired
# mv course/cc4mkt course/claude-code-for-marketers
```

**Checklist:**
- [ ] All modules copied (0, 1, 2)
- [ ] .claude/ directory copied
- [ ] Bonus content copied
- [ ] Course README copied

### Step 2.3: Clean Unwanted Files

```bash
cd $NEW_REPO

# Remove any .DS_Store files
find . -name ".DS_Store" -delete

# Remove any backup files
find . -name "*.bak" -delete
find . -name "*~" -delete

# Check for any old website files that snuck in
find . -name "*.html" -type f | grep -v course/

# Remove QC files if they were copied
rm -f QC-*.md MIGRATION-*.md
```

### Step 2.4: Verify Structure

```bash
cd $NEW_REPO

# Check the structure
tree -L 2 -I '.git'

# Should look like:
# .
# ├── .claude-plugin/
# ├── .gitignore
# ├── CLAUDE.md
# ├── LICENSE
# ├── README.md
# ├── course/
# ├── docs/
# ├── examples/
# ├── plugins/
# ├── shared/
# └── brand/ (will add next)
```

---

## Phase 3: Add Branding (2-3 hours)

### Step 3.1: Create Brand Directory

```bash
cd $NEW_REPO
mkdir -p brand
```

### Step 3.2: Create Brand Guidelines

```bash
cat > brand/guidelines.md << 'EOF'
# Marketing Tools Marketplace - Brand Guidelines

## Brand Identity

**Mission:** Help marketers work smarter through AI-powered automation and compounding workflows.

**Vision:** Every marketer should have access to systematic, efficient marketing tools that get better with each use.

**Values:**
- Systematic over ad-hoc
- Quality through automation
- Knowledge accumulation
- Open and collaborative

---

## Brand Voice

### Characteristics

- **Professional yet approachable** - Expert but not academic
- **Action-oriented** - Focus on what users can do
- **Data-informed** - Back claims with evidence
- **Empowering** - Users can achieve great results
- **Honest** - Acknowledge limitations

### Tone

**Do:**
- Use active voice
- Keep paragraphs short (2-3 sentences)
- Provide concrete examples
- Be specific and actionable
- Show, don't just tell

**Don't:**
- Use hype or hyperbole ("revolutionary", "game-changing")
- Oversimplify complex topics
- Assume technical knowledge
- Use jargon without explanation
- Make promises we can't keep

---

## Visual Identity

### Colors

**Primary:**
- Brand Blue: #2563EB (professional, trustworthy)
- Dark Gray: #1F2937 (text, professional)

**Secondary:**
- Success Green: #10B981 (positive actions)
- Warning Orange: #F59E0B (important notes)
- Error Red: #EF4444 (errors, critical)

**Neutral:**
- Light Gray: #F3F4F6 (backgrounds)
- Medium Gray: #6B7280 (secondary text)
- White: #FFFFFF (primary backgrounds)

### Typography

**Headings:** Inter, system-ui, sans-serif
**Body:** -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
**Code:** "Fira Code", "Courier New", monospace

---

## Terminology

### Preferred Terms

✅ **Use:**
- Plugins (not "extensions", "add-ons", "modules")
- Marketplace (not "store", "repository", "library")
- Campaigns (not "projects" when referring to marketing)
- Workflows (not "processes", "procedures")
- Compounding (our core philosophy)
- Content Factory (our plugin name)
- Agents (not "bots", "AI assistants")

### Avoid

✗ **Don't use:**
- "Revolutionary", "game-changing" (overused)
- "Easy", "simple" without context
- "Just" (minimizes user's effort)
- Technical jargon without explanation

---

## Writing Guidelines

### Documentation

**Structure:**
1. Overview (what is this?)
2. Quick start (get started fast)
3. Detailed guide (comprehensive info)
4. Examples (real use cases)
5. Reference (technical details)

**Style:**
- Start with the "why"
- Provide context before details
- Use examples liberally
- Include visuals when helpful
- Link to related content

### Code Examples

```bash
# Good: Clear description, realistic example
/content-factory:generate "Q2 Product Launch" \
  --formats "blog,email,social" \
  --quantity "5 blogs, 10 emails, 30 social"

# Bad: No context, unclear purpose
/command --flag value
```

### Error Messages

**Good:**
```
Error: Brand guidelines file not found at brand/guidelines.md

To fix:
1. Create the file: touch brand/guidelines.md
2. Add your brand voice and terminology
3. Try the command again

Learn more: docs/GETTING-STARTED.md#brand-guidelines
```

**Bad:**
```
File not found
```

---

## Messaging Pillars

### 1. Compounding Effect

**Key message:** Each campaign makes the next one easier.

**How we talk about it:**
- "Build once, use forever"
- "Knowledge that accumulates"
- "75% time savings by campaign 10"
- "Your marketing library"

### 2. Systematic Workflows

**Key message:** Repeatable processes beat one-off solutions.

**How we talk about it:**
- "Same quality every time"
- "Proven frameworks"
- "No reinventing the wheel"
- "Systematic over ad-hoc"

### 3. AI-Powered Quality

**Key message:** Multiple AI agents ensure excellence.

**How we talk about it:**
- "Multi-agent review"
- "Automated quality checks"
- "Brand voice consistency"
- "SEO optimization built-in"

### 4. Open & Collaborative

**Key message:** Community-driven, openly developed.

**How we talk about it:**
- "Open source"
- "Community contributions welcome"
- "Build on our foundation"
- "Transparent development"

---

## Use Cases & Examples

### Primary Personas

1. **Solo Marketer Sam**
   - Doing everything alone
   - Needs efficiency
   - Example: "Sam used Content Factory to create 2 weeks of content in 3 hours"

2. **Manager Maria**
   - Leading small team
   - Needs consistency
   - Example: "Maria's team now uses the same templates and agents"

3. **Solopreneur Steve**
   - Multiple clients
   - Needs to scale
   - Example: "Steve serves 8 clients with these tools instead of 3"

### Example Campaigns

Use realistic, specific examples:
- "Q2 Product Launch for SaaS tool"
- "Lead generation campaign for consulting firm"
- "Content marketing for B2B startup"

Avoid vague examples:
- "Marketing campaign"
- "Social media posts"
- "Email blast"

---

## Logo Usage

### Primary Logo

**File:** `brand/logo.svg`
**Usage:** Main branding, documentation headers, website

**Minimum size:** 120px wide
**Clear space:** Logo height × 0.5 on all sides

### Text-Only Logo

**Typography:** "Marketing Tools Marketplace"
**Format:** Inter Bold, #2563EB

**Use when:**
- Small spaces
- Text-only contexts
- Markdown files

---

## Badge Standards

For README.md and documentation:

```markdown
[![GitHub stars](https://img.shields.io/github/stars/blacklogos/marketing-tools-marketplace.svg?style=social)]
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)]
[![Claude Code](https://img.shields.io/badge/Claude_Code-2025+-blue.svg)]
```

---

## Templates

### GitHub Issue Templates

**Bug Report:**
```
**Describe the bug**
[Clear description]

**To Reproduce**
1. Step 1
2. Step 2

**Expected behavior**
[What should happen]

**Environment**
- Plugin version:
- Claude Code version:
```

**Feature Request:**
```
**Problem**
[What problem does this solve?]

**Proposed Solution**
[How would you solve it?]

**Use Cases**
[When would this be used?]
```

---

## Social Media

### Twitter/X

**Voice:** Helpful, data-driven, engaging
**Hashtags:** #MarketingAutomation #AITools #ClaudeCode
**Format:** Tips, examples, use cases

**Example:**
```
Just launched a campaign in 8 hours instead of 40.

How? Compounding Marketing plugin for Claude Code.

Each campaign builds templates for the next. By campaign 10, it takes 10 hours instead of 40.

That's the compounding effect 📈

[link]
```

### LinkedIn

**Voice:** Professional, insight-driven
**Format:** Thought leadership, case studies, how-tos

**Example:**
```
Most marketers recreate from scratch every campaign.

Same effort every time. No learning. Constant burnout.

What if each campaign made the next one easier?

That's the idea behind compounding marketing. Here's how it works...

[detailed post]
```

---

## Version

**Brand Guidelines Version:** 1.0
**Last Updated:** [Date]
**Maintained by:** blacklogos team
EOF
```

### Step 3.3: Create Logo (Text-Based for Now)

```bash
cat > brand/logo.md << 'EOF'
# Marketing Tools Marketplace Logo

## Current Logo (Text-Based)

```
┌──────────────────────────────────────────┐
│                                          │
│   MARKETING TOOLS MARKETPLACE            │
│   AI-Powered Plugins for Claude Code     │
│                                          │
└──────────────────────────────────────────┘
```

## Future Logo

A professional logo design should include:
- Icon representing: tools, compounding, or marketing
- Typography: Clean, modern sans-serif
- Colors: Brand blue (#2563EB) with dark gray (#1F2937)
- Formats: SVG (primary), PNG (fallback)

## Logo Files (To Create)

- `brand/logo.svg` - Primary vector logo
- `brand/logo-light.svg` - For dark backgrounds
- `brand/logo-icon.svg` - Icon only
- `brand/logo-text.svg` - Text only

## Temporary Logo

Until a professional logo is designed, use the text-based version above or:

**GitHub Social Preview:** Create a 1200x630px image with:
- Background: #2563EB (brand blue)
- Text: "Marketing Tools Marketplace" (white, Inter Bold)
- Subtitle: "AI-Powered Plugins for Claude Code" (white, Inter Regular)
- Centered composition
EOF
```

### Step 3.4: Create Color Reference

```bash
cat > brand/colors.md << 'EOF'
# Marketing Tools Marketplace - Color Palette

## Primary Colors

### Brand Blue
- **Hex:** #2563EB
- **RGB:** rgb(37, 99, 235)
- **Use:** Primary brand color, CTAs, links
- **Accessible on:** White backgrounds

### Dark Gray
- **Hex:** #1F2937
- **RGB:** rgb(31, 41, 55)
- **Use:** Body text, headings
- **Accessible on:** White and light backgrounds

## Secondary Colors

### Success Green
- **Hex:** #10B981
- **RGB:** rgb(16, 185, 129)
- **Use:** Success states, positive feedback
- **Context:** ✓ checkmarks, success messages

### Warning Orange
- **Hex:** #F59E0B
- **RGB:** rgb(245, 158, 11)
- **Use:** Warnings, important notes
- **Context:** ⚠️ warnings, "coming soon" labels

### Error Red
- **Hex:** #EF4444
- **RGB:** rgb(239, 68, 68)
- **Use:** Errors, critical issues
- **Context:** ✗ errors, blocking issues

## Neutral Colors

### White
- **Hex:** #FFFFFF
- **RGB:** rgb(255, 255, 255)
- **Use:** Primary backgrounds, cards

### Light Gray
- **Hex:** #F3F4F6
- **RGB:** rgb(243, 244, 246)
- **Use:** Secondary backgrounds, subtle dividers

### Medium Gray
- **Hex:** #6B7280
- **RGB:** rgb(107, 114, 128)
- **Use:** Secondary text, less prominent info

### Dark Gray
- **Hex:** #1F2937
- **RGB:** rgb(31, 41, 55)
- **Use:** Primary text, headings

## Usage Examples

### Documentation
```markdown
**Success:** ✓ Plugin installed successfully
**Warning:** ⚠️ This feature is experimental
**Error:** ✗ Installation failed
**Info:** ℹ️ This requires Claude Code 2025+
```

### Code Blocks
- Background: #1F2937 (dark gray)
- Text: #F3F4F6 (light gray)
- Syntax highlighting: Monokai or similar

### Badges
- License badge: Yellow
- Version badge: Blue
- Status badge: Green (stable), Orange (beta), Red (deprecated)
EOF
```

---

## Phase 4: Update Documentation (1-2 hours)

### Step 4.1: Update Main README.md

Update references to new structure:

```bash
cd $NEW_REPO

# Edit README.md
# Update these sections:
# - Repository URLs
# - File paths (if they changed)
# - Course location (now course/ instead of cc4mkt/)
# - Add brand section
```

**Changes to make:**

1. **Update repository URL:**
```markdown
**Repository:** https://github.com/blacklogos/marketing-tools-marketplace
```

2. **Update course reference:**
```markdown
**Course:** [Claude Code for Marketers](course/)
```

3. **Add brand section** (optional):
```markdown
## Brand & Design

For brand guidelines, logo, and visual identity, see:
- [Brand Guidelines](brand/guidelines.md)
- [Color Palette](brand/colors.md)
- [Logo Files](brand/)
```

### Step 4.2: Update CLAUDE.md

```bash
# Edit CLAUDE.md
# Update structure section to reflect new organization
```

Update the structure section:

```markdown
## Repository Structure

```
marketing-tools-marketplace/
├── .claude-plugin/          # Marketplace configuration
│   ├── index.md            # Plugin catalog
│   └── config.json         # Marketplace metadata
├── plugins/                # All plugin implementations
│   ├── compounding-marketing/
│   └── content-factory/
├── shared/                 # Shared resources across plugins
│   ├── agents/            # Reusable AI agents
│   ├── templates/         # Common templates
│   └── skills/            # Auto-invoked skills
├── docs/                  # Documentation
│   ├── GETTING-STARTED.md
│   ├── PLUGIN-DEVELOPMENT.md
│   └── CONTRIBUTING.md
├── examples/              # Example workflows and campaigns
│   ├── campaigns/
│   └── workflows/
├── course/                # Claude Code for Marketers course
│   ├── module-0/
│   ├── module-1/
│   ├── module-2/
│   └── bonus/
├── brand/                 # Brand assets and guidelines
│   ├── guidelines.md
│   ├── colors.md
│   └── logo.md
├── README.md              # Main marketplace documentation
├── CLAUDE.md              # This file - project memory
└── LICENSE                # MIT license
```
```

### Step 4.3: Update Course README

```bash
# Edit course/README.md (formerly cc4mkt/README.md)
# Update any references to repository structure
```

### Step 4.4: Create Repository README (if using Option A structure)

If you're using a single repo with both marketplace and course, create a top-level orientation:

```bash
cat > REPOSITORY-GUIDE.md << 'EOF'
# Repository Guide

This repository contains two main components:

## 1. Marketing Tools Marketplace

**Location:** Root directory

The marketplace infrastructure that distributes AI-powered marketing plugins for Claude Code.

**Key files:**
- `.claude-plugin/` - Marketplace configuration
- `plugins/` - Plugin implementations
- `README.md` - Marketplace documentation

**Get started:** See main [README.md](README.md)

---

## 2. Claude Code for Marketers Course

**Location:** `course/`

A comprehensive course teaching marketers how to use Claude Code for marketing workflows.

**Key directories:**
- `course/module-0/` - Getting Started
- `course/module-1/` - Core Concepts
- `course/module-2/` - Advanced Applications
- `course/.claude/` - Course commands and agents

**Get started:** See [course/README.md](course/README.md)

---

## How They Work Together

The course teaches marketers how to use Claude Code, including:
- Installing plugins from this marketplace
- Using the Compounding Marketing plugin
- Using the Content Factory plugin
- Building their own workflows

The marketplace provides the tools that course graduates will use in production.

---

## For Contributors

- **Marketplace contributions:** See [docs/CONTRIBUTING.md](docs/CONTRIBUTING.md)
- **Course contributions:** See [course/CONTRIBUTING.md](course/CONTRIBUTING.md)
- **Brand guidelines:** See [brand/guidelines.md](brand/guidelines.md)
EOF
```

---

## Phase 5: Finalize & Publish (1 hour)

### Step 5.1: Final Quality Check

```bash
cd $NEW_REPO

# Check for any remaining old references
grep -r "blacklogo" . --exclude-dir=.git --exclude-dir=course/.git

# Check for any broken links
grep -r "\.\./" . --exclude-dir=.git | grep "\.md:"

# Verify all expected files exist
ls -la .claude-plugin/
ls -la plugins/
ls -la course/
ls -la docs/
ls -la brand/
```

**Checklist:**
- [ ] No references to old repo structure
- [ ] All internal links work
- [ ] All directories have content
- [ ] No .DS_Store or temp files
- [ ] .gitignore is comprehensive

### Step 5.2: Initialize Git

```bash
cd $NEW_REPO

# Stage all files
git add .

# Create initial commit
git commit -m "feat: Initial repository setup for Marketing Tools Marketplace

Complete marketplace infrastructure with:
- 2 production-ready plugins (Compounding Marketing, Content Factory)
- Claude Code for Marketers course (modules 0-2)
- Comprehensive documentation
- Brand guidelines and visual identity
- Example workflows and campaigns
- Shared resources (agents, templates)

Ready for public launch."
```

### Step 5.3: Create GitHub Repository

**On GitHub:**

1. Go to github.com
2. Click "New repository"
3. **Repository name:** marketing-tools-marketplace
4. **Description:** "AI-powered marketing automation plugins for Claude Code. Systematic workflows that get easier with each use."
5. **Visibility:** Public
6. **Initialize:** Don't add README, .gitignore, or license (we have them)
7. Click "Create repository"

### Step 5.4: Push to GitHub

```bash
cd $NEW_REPO

# Add remote
git remote add origin https://github.com/blacklogos/marketing-tools-marketplace.git

# Push to main
git push -u origin main
```

### Step 5.5: Configure GitHub Repository

**Settings to configure:**

1. **About section:**
   - Description: "AI-powered marketing automation plugins for Claude Code"
   - Website: (your website if you have one)
   - Topics: `claude-code`, `marketing`, `ai-tools`, `plugins`, `marketing-automation`

2. **Features:**
   - ✓ Wikis (optional)
   - ✓ Issues
   - ✓ Discussions (recommended for community)
   - ✗ Projects (unless you want)

3. **Social preview:**
   - Upload a 1200x630px image (create based on brand guidelines)

4. **Branch protection (optional):**
   - Protect `main` branch
   - Require pull request reviews

### Step 5.6: Create GitHub Templates (Optional but Recommended)

```bash
cd $NEW_REPO
mkdir -p .github/ISSUE_TEMPLATE

# Bug report template
cat > .github/ISSUE_TEMPLATE/bug_report.md << 'EOF'
---
name: Bug Report
about: Report a bug or issue
title: '[BUG] '
labels: bug
assignees: ''
---

## Describe the Bug

[Clear description of the bug]

## To Reproduce

Steps to reproduce the behavior:
1. Go to '...'
2. Run command '...'
3. See error

## Expected Behavior

[What should have happened]

## Actual Behavior

[What actually happened]

## Environment

- Plugin: [e.g., compounding-marketing v0.1.0]
- Claude Code version: [e.g., 2025.1]
- OS: [e.g., macOS 14.1]

## Additional Context

[Any other relevant information]
EOF

# Feature request template
cat > .github/ISSUE_TEMPLATE/feature_request.md << 'EOF'
---
name: Feature Request
about: Suggest a new feature or improvement
title: '[FEATURE] '
labels: enhancement
assignees: ''
---

## Problem

[What problem does this solve?]

## Proposed Solution

[How would you like to see this solved?]

## Use Cases

[When would this be used? Give examples]

## Alternatives Considered

[What other solutions have you thought about?]

## Additional Context

[Any other relevant information]
EOF

# Pull request template
cat > .github/pull_request_template.md << 'EOF'
## Description

[What does this PR do?]

## Type of Change

- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Breaking change
- [ ] Other: [describe]

## Testing

[How was this tested?]

## Checklist

- [ ] Code follows style guidelines
- [ ] Documentation updated
- [ ] Examples added/updated (if applicable)
- [ ] Tested locally
- [ ] No breaking changes (or documented)

## Related Issues

Closes #[issue number]
EOF

# Commit and push templates
git add .github/
git commit -m "docs: Add GitHub issue and PR templates"
git push
```

---

## Phase 6: Post-Migration Setup (30 min)

### Step 6.1: Update Old Repository

Add a note to the old `blacklogo` repository:

```bash
cd ~/path/to/blacklogo

cat > MOVED.md << 'EOF'
# Repository Moved

This repository has been reorganized and moved to:

**New location:** https://github.com/blacklogos/marketing-tools-marketplace

## What Was Moved

- Marketing Tools Marketplace → new repo (root directory)
- Claude Code for Marketers course → new repo (course/ directory)
- All plugins → new repo (plugins/ directory)
- All documentation → new repo (docs/ directory)

## This Repository

This repository (`blacklogo`) now contains:
- [Whatever you decide to keep here]

## Why We Moved

To create a clean, professional repository structure specifically for:
1. Marketing Tools Marketplace (plugin distribution)
2. Claude Code for Marketers course (educational content)
3. Better organization and discoverability
4. Professional branding and presentation

Please update your bookmarks and references to the new repository.
EOF

git add MOVED.md
git commit -m "docs: Add notice about repository migration"
git push
```

### Step 6.2: Update External References

Update any external links:
- [ ] Personal website
- [ ] LinkedIn profile
- [ ] Twitter bio
- [ ] Blog posts
- [ ] Documentation sites
- [ ] Course links (if hosted elsewhere)

### Step 6.3: Create Announcement

Draft an announcement post:

```markdown
# 🚀 Announcing: Marketing Tools Marketplace

I'm excited to announce the official launch of Marketing Tools Marketplace - a collection of AI-powered plugins for Claude Code designed specifically for marketers.

## What Is It?

A GitHub-hosted marketplace distributing marketing automation plugins that help you:
- Plan campaigns systematically
- Generate content across multiple formats
- Build reusable templates that compound over time

## Two Plugins Available Now:

### 1. Compounding Marketing
Systematic campaign workflows where each campaign makes the next one easier.

### 2. Content Factory
Rapid, multi-format content generation and intelligent repurposing.

## Philosophy: Compounding Over Time

Unlike traditional tools that require the same effort every time:
- Campaign 1: 40 hours
- Campaign 5: 15 hours (62% faster)
- Campaign 10: 10 hours (75% faster)

Each campaign builds templates and patterns for the next.

## Get Started

```bash
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace
```

Full documentation: [link]

## Open Source & Community-Driven

MIT licensed, contributions welcome!

[link to repo]

#MarketingAutomation #AITools #ClaudeCode
```

---

## Migration Checklist

### Pre-Migration
- [ ] Completed 7-day QC plan
- [ ] Fixed all critical issues
- [ ] Decided on repository name
- [ ] Decided on repository structure
- [ ] Created GitHub organization (if applicable)

### During Migration
- [ ] Created new directory structure
- [ ] Copied all marketplace files
- [ ] Copied course content
- [ ] Created brand guidelines
- [ ] Updated all documentation
- [ ] Removed old/unwanted files
- [ ] Added .gitignore
- [ ] Created GitHub templates

### Post-Migration
- [ ] Pushed to GitHub
- [ ] Configured repository settings
- [ ] Added topics and description
- [ ] Created social preview image
- [ ] Updated old repository with notice
- [ ] Updated external references
- [ ] Announced the launch

---

## Success Criteria

Migration is successful when:

1. **✅ Clean structure**: Professional, well-organized repository
2. **✅ Complete content**: All marketplace and course files migrated
3. **✅ Proper branding**: Brand guidelines, colors, visual identity
4. **✅ Updated docs**: All documentation reflects new structure
5. **✅ Working links**: No broken internal references
6. **✅ GitHub ready**: Templates, settings configured
7. **✅ Public launch**: Announced and discoverable

---

## Timeline

**Total time:** 1 day (after QC completion)

- **Phase 1 - Preparation:** 1-2 hours
- **Phase 2 - Copy Content:** 2-3 hours
- **Phase 3 - Branding:** 2-3 hours
- **Phase 4 - Documentation:** 1-2 hours
- **Phase 5 - Finalize:** 1 hour
- **Phase 6 - Post-Migration:** 30 min

**Can be compressed:** Phases can overlap if needed

---

## Tips for Success

1. **Don't rush**: Take time to get branding right
2. **Test links**: Verify all internal links after migration
3. **Fresh eyes**: Have someone else review the new repo
4. **Backup**: Keep the old repo until you're 100% confident
5. **Document**: Keep notes on what you change and why

---

**Ready to migrate?** Complete the QC plan first, then start Phase 1! 🚀
