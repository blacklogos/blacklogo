# Getting Started with Marketing Tools Marketplace

Welcome to the Marketing Tools Marketplace! This guide will help you get up and running with AI-powered marketing plugins for Claude Code.

## Prerequisites

Before you begin, make sure you have:

- ✅ **Claude Code installed** (2025 native installer or later)
- ✅ **Basic familiarity with Claude Code** (completed setup, understand commands)
- ✅ **A marketing project or campaign** to work on (recommended for practical learning)

**New to Claude Code?** Check out the [Claude Code for Marketers course](https://github.com/blacklogos/cc4mkt) first.

---

## Step 1: Install the Marketplace

Open Claude Code and run:

```bash
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace
```

**What this does:**
- Adds the marketplace to your Claude Code instance
- Makes all plugins discoverable
- Enables easy installation and updates

**Expected output:**
```
✓ Marketplace added successfully
✓ 2 plugins available
✓ Run /plugin to browse
```

---

## Step 2: Browse Available Plugins

See what's available:

```bash
/plugin
```

This opens a menu showing:
- **Featured plugins** with descriptions
- **Installation status** (installed or available)
- **Quick install** options

**Available now:**
- 🎯 **Compounding Marketing** - Systematic campaign workflows
- ⚡ **Content Factory** - Rapid content generation

---

## Step 3: Install Your First Plugin

### Option A: Compounding Marketing (Recommended for beginners)

Perfect if you want to:
- Plan campaigns systematically
- Build reusable templates
- Learn the compounding philosophy

```bash
/plugin install compounding-marketing@marketing-tools-marketplace
```

### Option B: Content Factory

Perfect if you need to:
- Generate lots of content quickly
- Repurpose existing content
- Create content calendars

```bash
/plugin install content-factory@marketing-tools-marketplace
```

### Option C: Install Both

For complete workflow coverage:

```bash
/plugin install compounding-marketing@marketing-tools-marketplace
/plugin install content-factory@marketing-tools-marketplace
```

**Expected output:**
```
✓ Plugin installed successfully
✓ New commands available (run /help to see them)
✓ Ready to use!
```

---

## Step 4: Verify Installation

Check that your plugins are installed:

```bash
/help
```

You should see new commands like:
- `/compounding-marketing:plan`
- `/content-factory:generate`
- `/content-factory:repurpose`
- `/content-factory:schedule`

---

## Step 5: Try Your First Command

### If you installed Compounding Marketing:

```bash
/compounding-marketing:plan "My First Campaign"
```

**You'll be prompted for:**
- Campaign goals and objectives
- Target audience
- Timeline and budget
- Key messages

**Claude will create:**
- Comprehensive campaign brief
- Research summary
- Todo checklist
- Budget allocation plan

**Output location:** `campaigns/my-first-campaign/brief.md`

---

### If you installed Content Factory:

```bash
/content-factory:generate "Blog post about productivity tips" \
  --formats "blog" \
  --quantity "1 blog"
```

**Claude will create:**
- SEO-optimized blog post
- Meta description
- Publishing checklist
- Social media snippets

**Output location:** `content/productivity-tips/blogs/01-post.md`

---

## Next Steps: Your First Real Campaign

Now that you've tried a command, let's run a complete workflow:

### Scenario: Launch a New Product Feature

#### Step 1: Plan the Campaign

```bash
/compounding-marketing:plan "Feature X Launch Campaign" \
  --budget 25000 \
  --duration "4 weeks"
```

Answer Claude's questions about:
- What is Feature X?
- Who needs it?
- What's the main benefit?
- What action should people take?

**Result:** Complete campaign brief in `campaigns/feature-x-launch/brief.md`

---

#### Step 2: Generate Campaign Content

```bash
/content-factory:generate campaigns/feature-x-launch/brief.md \
  --formats "blog,email,social" \
  --quantity "3 blogs, 5 emails, 20 social posts"
```

**Claude will:**
1. Read your campaign brief
2. Generate all content in parallel
3. Validate brand voice and SEO
4. Organize in clean folder structure
5. Create content calendar

**Result:** 28 pieces of content ready to review and publish

---

#### Step 3: Repurpose Your Best Content

Say your launch announcement blog performed well:

```bash
/content-factory:repurpose content/blogs/feature-x-announcement.md \
  --into "social,email" \
  --platforms "linkedin,twitter,instagram"
```

**Result:** 6+ additional content pieces from one blog

---

#### Step 4: Review Quality (Coming Soon)

Once the `/compounding-marketing:review` command is available:

```bash
/compounding-marketing:review campaigns/feature-x-launch/
```

**Will provide:**
- Multi-agent quality review
- Brand voice validation
- SEO optimization check
- Conversion recommendations
- Persona-specific feedback

---

## Understanding the Compounding Effect

### Your First Campaign (40 hours)

**What happens:**
- You create campaign brief from scratch
- Generate content, learn what works
- Document your process
- Create templates for reuse

**Time breakdown:**
- Planning: 8 hours
- Content creation: 20 hours
- Review and editing: 10 hours
- Publishing: 2 hours

---

### Your Fifth Campaign (15 hours - 62% faster)

**What's different:**
- Reuse campaign brief template
- Apply patterns from past campaigns
- Use content templates
- Faster review (know what to check)

**Time breakdown:**
- Planning: 2 hours (using template)
- Content creation: 8 hours (with templates)
- Review and editing: 4 hours (systematic)
- Publishing: 1 hour

---

### Your Tenth Campaign (10 hours - 75% faster)

**What's different:**
- Fully systematized workflow
- Rich template library
- Automated quality checks
- Focus on strategy, not execution

**Time breakdown:**
- Planning: 1 hour
- Content creation: 5 hours (mostly automated)
- Review: 3 hours
- Publishing: 1 hour

**This is compounding in action.** 🚀

---

## Best Practices

### 1. Start with Good Briefs

The quality of generated content depends on your brief quality.

**Good brief:**
```
Campaign: FocusFlow 2.0 Launch
Audience: Remote team managers, 30-45, managing 5-15 people
Problem: Teams struggling with productivity, coordination, burnout
Solution: FocusFlow 2.0 with new team features
Key Benefit: 2x productivity without overtime
Timeline: 6 weeks
Budget: $50,000
Goal: 500 trial sign-ups
```

**Poor brief:**
```
Launch new product
```

### 2. Build Your Brand Guidelines

Create `brand/guidelines.md` early:

```markdown
# Brand Voice

- Professional yet friendly
- Data-driven but accessible
- Empowering and optimistic

# Terminology

✅ Use: workspace, collaboration, productivity
✗ Avoid: folder, teamwork, efficiency

# Style

- Oxford comma: Yes
- Contractions: Acceptable
- Tone: Conversational but authoritative
```

Reference it in commands:
```bash
/content-factory:generate "Campaign" --brand-guidelines brand/guidelines.md
```

### 3. Organize Your Content

Keep a clean structure:

```
your-project/
├── campaigns/
│   ├── q1-launch/
│   │   ├── brief.md
│   │   └── content/
│   └── q2-webinar/
├── content/
│   ├── blogs/
│   ├── emails/
│   └── social/
├── brand/
│   ├── guidelines.md
│   └── personas/
└── templates/
    └── [reusable templates]
```

### 4. Iterate and Improve

After each campaign:
- Review what worked
- Update templates
- Refine processes
- Document learnings

This is how you compound!

---

## Common Workflows

### Workflow 1: Blog-First Content

Start with a comprehensive blog, then repurpose:

```bash
# 1. Generate the blog
/content-factory:generate "Guide to Remote Team Productivity" \
  --formats "blog" \
  --seo-keywords "remote team, productivity, management"

# 2. Repurpose to all formats
/content-factory:repurpose content/blogs/remote-team-guide.md \
  --into "email,social,video-script"
```

**Result:** 1 blog → 1 email → 5 social posts → 1 video script

---

### Workflow 2: Campaign-First Planning

Plan comprehensively, then execute:

```bash
# 1. Plan the campaign
/compounding-marketing:plan "Q2 Brand Awareness Campaign"

# 2. Generate all content at once
/content-factory:generate campaigns/q2-awareness/brief.md \
  --formats "blog,email,social,video"
```

**Result:** Coordinated, multi-channel campaign

---

### Workflow 3: Content Calendar Driven

Create calendar first, fill it in:

```bash
# 1. Create calendar structure
/content-factory:schedule \
  --period "April 2025" \
  --frequency "2 blogs/week, 5 social/day"

# 2. Generate content to fill calendar
/content-factory:generate \
  --from-calendar calendars/april-2025.md
```

**Result:** Fully planned and populated month

---

## Troubleshooting

### Plugin Won't Install

**Error:** "Marketplace not found"

**Solution:**
1. Verify marketplace URL is correct
2. Check internet connection
3. Ensure Claude Code is updated to 2025+

---

### Command Not Found

**Error:** "Command `/compounding-marketing:plan` not recognized"

**Solution:**
1. Verify plugin is installed: `/plugin`
2. Restart Claude Code
3. Reinstall plugin if needed

---

### Generated Content Is Generic

**Problem:** Content doesn't match brand voice

**Solution:**
1. Create and reference brand guidelines
2. Provide more detailed briefs
3. Use `--mode thorough` for higher quality
4. Iterate: Regenerate with more specific instructions

---

### Output Location Unclear

**Problem:** Can't find generated content

**Solution:**
1. Check command output for file paths
2. Use `ls content/` or `ls campaigns/` to explore
3. Read the README.md in output folder

---

## Next Steps

### For Learning More

- **[Plugin Documentation](../plugins/)** - Deep dive into each plugin
- **[Example Workflows](../examples/)** - Real campaign examples
- **[Claude Code for Marketers](https://github.com/blacklogos/cc4mkt)** - Complete course

### For Getting Help

- **[GitHub Discussions](https://github.com/blacklogos/marketing-tools-marketplace/discussions)** - Ask questions
- **[GitHub Issues](https://github.com/blacklogos/marketing-tools-marketplace/issues)** - Report bugs
- **Documentation** - Read plugin-specific docs

### For Contributing

- **[Contributing Guide](CONTRIBUTING.md)** - How to contribute
- **[Plugin Development](PLUGIN-DEVELOPMENT.md)** - Build your own plugin

---

## Quick Reference

### Installation
```bash
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace
/plugin install <plugin-name>@marketing-tools-marketplace
```

### Common Commands
```bash
# Compounding Marketing
/compounding-marketing:plan "<campaign-name>"

# Content Factory
/content-factory:generate "<brief>" --formats "<formats>"
/content-factory:repurpose <file> --into "<formats>"
/content-factory:schedule --period "<timeframe>"
```

### Getting Help
```bash
/help                    # See all commands
/plugin                  # Browse plugins
```

---

**Ready to start compounding?** Pick a real campaign and try it out! 🚀

**Questions?** Join our [GitHub Discussions](https://github.com/blacklogos/marketing-tools-marketplace/discussions)
