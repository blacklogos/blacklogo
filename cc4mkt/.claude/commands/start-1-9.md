# Start Lesson 1.9: Using the Claude Code Marketplace

Welcome to the plugin ecosystem! This is where Claude Code becomes truly extensible and powerful.

## What Are Plugins?

Plugins are packaged collections of functionality you can install with a single command:

**What a plugin can include:**
- 📝 **Slash Commands** - User-initiated shortcuts (like this lesson!)
- 🤖 **Subagents** - Specialized reviewers with their own context
- 🧠 **Skills** - Auto-invoked expertise (Claude loads them when needed)
- 🪝 **Hooks** - Workflow automation triggers
- 🔌 **MCP Servers** - External tool integrations

Think of plugins as "app stores for Claude Code" - pre-built functionality you can add instantly.

---

## Why Plugins Matter for Marketers

**Without plugins:**
- Build everything from scratch
- Reinvent workflows each time
- No shared best practices
- Isolated tools and processes

**With plugins:**
- Install proven workflows instantly
- Share tools across teams
- Leverage community expertise
- Systematic, repeatable processes

**Example:** Instead of manually creating campaign workflows, install a plugin that gives you `/plan`, `/execute`, and `/review` commands for complete campaign automation.

---

## The Marketplace System

Marketplaces are GitHub repositories that host collections of plugins.

**Official Marketplaces:**
- `anthropics/skills` - Official Anthropic skills
- `EveryInc/every-marketplace` - Compounding Engineering (and Marketing!)
- Community marketplaces - Hundreds of contributed plugins

---

## How to Use Marketplaces

### Step 1: Add a Marketplace

```
/plugin marketplace add EveryInc/every-marketplace
```

This connects Claude Code to the marketplace repository.

### Step 2: Browse Available Plugins

```
/plugin
```

Then select **"Browse Plugins"** from the menu.

You'll see:
- Plugin name and description
- What it includes (commands, agents, skills)
- Installation status
- Quick install option

### Step 3: Install a Plugin

```
/plugin install compounding-marketing@every-marketplace
```

This installs the plugin and makes all its components available.

### Step 4: Verify Installation

```
/help
```

You'll see new commands available! For example:
- `/compounding-marketing:plan` - Campaign planner
- `/compounding-marketing:execute` - Content generator
- `/compounding-marketing:review` - Multi-agent reviewer

---

## Let's Try It: Install a Plugin

**Interactive Exercise:**

I'll guide you through installing a real plugin. Let's try installing a simple utility plugin first.

**Option 1: Install Anthropic Skills**
```
/plugin marketplace add anthropics/skills
/plugin
[Browse and select a skill to install]
```

**Option 2: Explore EveryInc Marketplace**
```
/plugin marketplace add EveryInc/every-marketplace
/plugin
[Browse available plugins]
```

Try one now! Tell me:
- "Add the anthropics/skills marketplace"
- "Show me available plugins"

I'll walk you through it step by step.

---

## Understanding Skills (Auto-Invoked)

Skills are special - Claude automatically loads them based on context.

**Example Scenario:**

You: "I need to research competitors"

Claude thinks: *"Competitor research... let me check if there's a skill for this"*
- Scans available skills
- Finds "Marketing Research Skill"
- Loads only the relevant templates
- Provides structured research framework

**You never had to:**
- Remember the skill exists
- Manually invoke it
- Know the command

**It just works automatically!**

This is the "intelligence" in the plugin system - context-aware assistance.

---

## Plugin Components Explained

### 1. Commands (User-Initiated)

You type `/command-name` to trigger them.

**Examples:**
- `/compounding-marketing:plan` - Start campaign planning
- `/compounding-marketing:execute` - Generate content
- `/compounding-marketing:review` - Launch multi-agent review

**When to use:** When YOU want to start a specific workflow.

### 2. Skills (Auto-Invoked)

Claude loads them automatically based on task context.

**Examples:**
- Marketing Research Skill - Auto-loads for competitor analysis
- Campaign Planning Skill - Auto-loads for campaign briefs
- Brand Guidelines Skill - Auto-loads when creating content

**When they activate:** Automatically when Claude detects relevance.

### 3. Subagents (Specialized Reviewers)

Defined in the plugin, available to summon.

**Examples:**
- @brand-voice-guardian
- @seo-specialist
- @conversion-optimizer

**When to use:** When you want specialized perspective or review.

### 4. Hooks (Automation)

Automatic triggers at specific workflow points.

**Examples:**
- Pre-save brand voice check
- Post-create multi-agent review
- Auto-formatting on completion

**When they run:** Automatically at defined trigger points.

---

## Team Configuration

**Pro Tip:** Configure plugins at repository level!

**How it works:**
1. Add plugin configuration to `.claude/` folder
2. Commit to git repository
3. When teammates trust the repository folder, Claude Code automatically:
   - Installs specified marketplaces
   - Installs configured plugins
   - Everyone has the same tools!

**Benefits:**
- Consistent tooling across team
- No manual setup for new members
- Shared workflows and best practices
- Version-controlled plugin configuration

---

## Plugins vs Commands vs Subagents vs Skills vs Hooks

**Quick Reference:**

| Component | How Initiated | Purpose | Example |
|-----------|---------------|---------|---------|
| **Plugin** | Install once | Package of tools | `compounding-marketing` |
| **Command** | You type `/cmd` | Start workflow | `/plan` |
| **Skill** | Auto (by Claude) | Context expertise | Marketing Research |
| **Subagent** | You request | Specialized review | @brand-voice-guardian |
| **Hook** | Auto (trigger) | Workflow automation | Pre-save validation |

---

## Real Marketing Plugin Example

**The "Compounding Marketing Plugin"** (we'll explore this next!)

**What it provides:**

**Commands:**
- `/compounding-marketing:plan` - Research and create campaign brief
- `/compounding-marketing:execute` - Generate content across channels
- `/compounding-marketing:review` - Launch 12+ specialized reviewers

**Skills (auto-invoked):**
- Marketing Research Skill - For competitor/audience analysis
- Campaign Planning Skill - For brief creation
- Content Generation Skill - For copywriting
- Brand Guidelines Skill - For voice consistency

**Subagents (12 total):**
- Brand Voice Guardian
- SEO Specialist
- Conversion Optimizer
- Content Strategist
- Copywriter Specialist
- Analytics Expert
- Competitive Analyst
- Email Specialist
- Social Media Expert
- Startup Sam Reviewer
- Manager Maria Reviewer
- Solo Steve Reviewer

**Hooks:**
- Pre-save brand validation
- Pre-save SEO checklist
- Post-create multi-agent review

**Templates:**
- Campaign brief template
- Content calendar template
- Email sequence template
- Landing page template

**Result:** Complete campaign automation in 3 commands!

---

## Your Challenge

1. **Add a marketplace** (pick one):
   - `anthropics/skills`
   - `EveryInc/every-marketplace`

2. **Browse available plugins**:
   ```
   /plugin
   ```

3. **Install one plugin** that interests you

4. **Verify it worked**:
   ```
   /help
   ```

5. **Try using it!**

---

## What's Next?

In the next lesson, you'll learn the **Compounding Philosophy** - how each campaign makes the next one easier through accumulated knowledge, templates, and patterns.

Then we'll install and use the **Compounding Marketing Plugin** to see 3-stage workflow automation in action!

**Ready?** Type: `/start-2-7` to learn the compounding philosophy!

---

## Quick Reference

```bash
# Add marketplace
/plugin marketplace add user-or-org/repo-name

# Browse plugins
/plugin

# Install plugin
/plugin install plugin-name@marketplace-name

# Verify installation
/help

# Remove plugin (if needed)
/plugin uninstall plugin-name
```

---

**🎉 You now understand the plugin ecosystem!**

This is a game-changer for building reusable, shareable marketing workflows.
