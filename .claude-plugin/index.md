# Marketing Tools Marketplace

> AI-powered marketing automation plugins for Claude Code

## Featured Plugins

### Compounding Marketing
**@marketing-tools/compounding-marketing**

Systematic campaign workflow with Plan → Execute → Review stages. Each campaign makes the next one easier through accumulated templates and patterns.

**Version:** 0.1.0
**Category:** Workflow Automation
**Install:** `/plugin install compounding-marketing@marketing-tools-marketplace`

**Commands:**
- `/compounding-marketing:plan` - Research and create comprehensive campaign briefs
- `/compounding-marketing:execute` - Generate multi-channel content with parallel subagents (Coming Soon)
- `/compounding-marketing:review` - Launch 12+ specialized reviewers for comprehensive feedback (Coming Soon)

**Agents:** 6 specialized reviewers (12+ planned)
**Templates:** Campaign briefs, content calendars, email sequences, landing pages

[View Documentation →](../plugins/compounding-marketing/PLUGIN.md)

---

### Content Factory
**@marketing-tools/content-factory**

Rapid, multi-format content generation. Create weeks of content in hours with intelligent batch processing and content repurposing.

**Version:** 0.1.0
**Category:** Content Generation
**Install:** `/plugin install content-factory@marketing-tools-marketplace`

**Commands:**
- `/content-factory:generate` - Batch content creation across multiple formats
- `/content-factory:repurpose` - Transform one content piece into many formats
- `/content-factory:schedule` - Create and organize content calendars

**Features:**
- Parallel generation using specialized subagents
- Format transformation (blog → email → social → video script)
- Auto-categorization and organization
- Brand voice consistency checking

**Templates:** Blog posts, emails, social media, video scripts, podcast outlines

[View Documentation →](../plugins/content-factory/PLUGIN.md)

---

## All Plugins

### 🎯 Workflow Automation
- **compounding-marketing** - Systematic campaign workflows with Plan → Execute → Review stages

### ⚡ Content Creation
- **content-factory** - Rapid multi-format content generation and repurposing

### 🔍 Coming Soon
- **seo-optimizer** - Comprehensive SEO analysis and optimization
- **social-scheduler** - Social media planning and automation
- **email-sequencer** - Email marketing campaign workflows
- **analytics-reporter** - Marketing data analysis and reporting

## Installation

### Method 1: Add Marketplace (Recommended)

```bash
# Add the marketplace to Claude Code
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace

# Browse available plugins
/plugin

# Install a plugin
/plugin install compounding-marketing@marketing-tools-marketplace
```

### Method 2: Quick Install via NPX

```bash
npx claude-plugins install @blacklogos/marketing-tools-marketplace/compounding-marketing
```

### Method 3: Manual Installation

```bash
git clone https://github.com/blacklogos/marketing-tools-marketplace.git
cd marketing-tools-marketplace
ln -s $(pwd)/plugins/compounding-marketing ~/.claude/plugins/compounding-marketing
```

## Getting Started

1. **Install the marketplace:**
   ```
   /plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace
   ```

2. **Start with Compounding Marketing:**
   - Best for systematic campaign workflows
   - Includes planning, execution, and review stages
   - Great for learning the compounding philosophy

3. **Add Content Factory for rapid content:**
   - Perfect for high-volume content needs
   - Excellent for content repurposing
   - Integrates well with Compounding Marketing

4. **Explore shared resources:**
   - Check `shared/agents/` for specialized reviewers
   - Use `shared/templates/` for common marketing assets
   - Leverage `shared/skills/` for auto-invoked expertise

## Plugin Categories

- **🎯 Workflow Automation** - Campaign management and systematic processes
- **⚡ Content Creation** - Content generation and optimization
- **🔍 SEO & Search** - Search engine optimization tools
- **📱 Social Media** - Social platform planning and automation
- **📧 Email Marketing** - Email campaign creation and optimization
- **📊 Analytics** - Data analysis and reporting

## Philosophy

### The Compounding Effect

Our plugins are built on the principle that **each use makes the next one easier**:

- **Campaign 1**: Create templates and patterns (40 hours)
- **Campaign 5**: Leverage accumulated knowledge (15 hours - 62% faster)
- **Campaign 10**: Fully systematized workflows (10 hours - 75% faster)

### Why Multiple Plugins?

- **Modularity:** Install only what you need
- **Specialization:** Each plugin does one thing exceptionally well
- **Composability:** Mix and match plugins for custom workflows
- **Shareability:** Team-wide consistency across tools
- **Updatability:** Get improvements automatically

## Support & Community

- **Course**: [Claude Code for Marketers](https://github.com/blacklogos/cc4mkt)
- **Documentation**: [Getting Started Guide](../docs/GETTING-STARTED.md)
- **Examples**: [Example Workflows](../examples/)
- **Issues**: [GitHub Issues](https://github.com/blacklogos/marketing-tools-marketplace/issues)
- **Discussions**: [GitHub Discussions](https://github.com/blacklogos/marketing-tools-marketplace/discussions)

## For Plugin Developers

Want to contribute or create your own marketing plugin?

- [Plugin Development Guide](../docs/PLUGIN-DEVELOPMENT.md)
- [Contributing Guidelines](../docs/CONTRIBUTING.md)
- [API Reference](../docs/API-REFERENCE.md)

## License

MIT License - See [LICENSE](../LICENSE) file

## Credits

- **Inspired by**: [EveryInc/every-marketplace](https://github.com/EveryInc/every-marketplace) - Compounding Engineering Philosophy
- **Created for**: Claude Code for Marketers course
- **Maintained by**: blacklogos team

---

**Start compounding today.** Install the marketplace and watch your marketing efficiency multiply. 🚀
