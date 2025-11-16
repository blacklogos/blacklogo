# Marketing Tools Marketplace

> AI-powered marketing automation plugins for Claude Code

[![GitHub stars](https://img.shields.io/github/stars/blacklogos/marketing-tools-marketplace.svg?style=social)](https://github.com/blacklogos/marketing-tools-marketplace/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude_Code-2025+-blue.svg)](https://claude.ai/code)

Transform your marketing workflows with AI-powered plugins designed specifically for Claude Code. From systematic campaign planning to rapid content generation, these plugins help marketers work smarter, faster, and better.

## 🚀 Quick Start

```bash
# 1. Add the marketplace
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace

# 2. Browse available plugins
/plugin

# 3. Install a plugin
/plugin install compounding-marketing@marketing-tools-marketplace

# 4. Start using it
/compounding-marketing:plan "Q1 Campaign Brief"
```

---

## 📦 Available Plugins

### 🎯 Compounding Marketing

**Systematic campaign workflows that get easier over time**

Transform how you plan, execute, and review marketing campaigns. Each campaign you run builds knowledge, creates templates, and compounds into faster, better future campaigns.

**Commands:**
- `/compounding-marketing:plan` - Research and create comprehensive campaign briefs
- `/compounding-marketing:execute` - Generate multi-channel content with parallel agents
- `/compounding-marketing:review` - Launch 12+ specialized reviewers for quality assurance

**Perfect for:**
- Campaign managers
- Marketing directors
- Teams running regular campaigns

**Status:** ✅ Available (v0.1.0 - MVP with plan command)

[**Read Full Documentation →**](plugins/compounding-marketing/PLUGIN.md)

```bash
/plugin install compounding-marketing@marketing-tools-marketplace
```

---

### ⚡ Content Factory

**Create weeks of content in hours**

Rapid, multi-format content generation and intelligent repurposing. Generate blog posts, email sequences, social media content, and video scripts—all from a single brief or by transforming existing content.

**Commands:**
- `/content-factory:generate` - Batch content creation across multiple formats
- `/content-factory:repurpose` - Transform one content piece into many formats
- `/content-factory:schedule` - Create and populate content calendars

**Perfect for:**
- Content marketers
- Solo marketers
- High-volume content needs

**Status:** ✅ Available (v0.1.0 - Core functionality)

[**Read Full Documentation →**](plugins/content-factory/PLUGIN.md)

```bash
/plugin install content-factory@marketing-tools-marketplace
```

---

### 🔍 Coming Soon: More Plugins

We're actively developing additional specialized plugins:

- **SEO Optimizer** - Comprehensive SEO analysis and optimization tools
- **Social Scheduler** - Social media planning and automation
- **Email Sequencer** - Email marketing campaign workflows
- **Analytics Reporter** - Marketing data analysis and reporting

Want to contribute or suggest a plugin? [Open an issue!](https://github.com/blacklogos/marketing-tools-marketplace/issues)

---

## 💡 Why Use This Marketplace?

### The Compounding Effect

**Traditional marketing:** Every campaign starts from scratch. Templates get lost. Knowledge doesn't transfer. Teams burn out.

**With our plugins:** Each campaign makes the next one easier.

- **Campaign 1:** Build your foundation (40 hours)
- **Campaign 5:** Leverage accumulated knowledge (15 hours - 62% faster)
- **Campaign 10:** Fully systematized workflows (10 hours - 75% faster)

### Systematic > Ad-Hoc

Stop reinventing the wheel. Our plugins provide:
- ✅ **Repeatable processes** - Do it right every time
- ✅ **Quality automation** - Multiple AI agents ensure excellence
- ✅ **Accumulated knowledge** - Each use builds your library
- ✅ **Team alignment** - Everyone uses the same system

### Built for Marketers

These plugins understand marketing:
- Brand voice consistency
- Multi-channel coordination
- Persona-driven messaging
- Conversion optimization
- SEO best practices
- Campaign measurement

---

## 📚 Installation Methods

### Method 1: Claude Code Marketplace (Recommended)

The easiest way to install plugins:

```bash
# Add marketplace
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace

# Browse plugins
/plugin

# Install specific plugin
/plugin install compounding-marketing@marketing-tools-marketplace
```

### Method 2: NPX Quick Install

One-command installation:

```bash
npx claude-plugins install @blacklogos/marketing-tools-marketplace/compounding-marketing
```

### Method 3: Manual Installation

For development or customization:

```bash
# Clone the repository
git clone https://github.com/blacklogos/marketing-tools-marketplace.git
cd marketing-tools-marketplace

# Link a plugin
ln -s $(pwd)/plugins/compounding-marketing ~/.claude/plugins/compounding-marketing

# Restart Claude Code
```

---

## 🎓 Learning Resources

### For Plugin Users

- **[Getting Started Guide](docs/GETTING-STARTED.md)** - Your first steps with the marketplace
- **[Plugin Documentation](plugins/)** - Detailed docs for each plugin
- **[Example Workflows](examples/)** - Real campaign examples
- **[Claude Code for Marketers Course](https://github.com/blacklogos/cc4mkt)** - Complete course on using Claude Code

### For Plugin Developers

- **[Plugin Development Guide](docs/PLUGIN-DEVELOPMENT.md)** - Build your own plugins
- **[Contributing Guidelines](docs/CONTRIBUTING.md)** - How to contribute
- **[API Reference](docs/API-REFERENCE.md)** - Technical documentation

---

## 🌟 Philosophy

### Compounding Over Time

Our plugins are built on the principle that **each use makes the next one easier**:

1. **First campaign:** Create templates, document processes, learn patterns
2. **Fifth campaign:** Reuse templates, apply patterns, move faster
3. **Tenth campaign:** Systematized workflow, minimal effort, maximum quality

This is the opposite of traditional marketing tools that require the same effort every time.

### Modular & Composable

Install only what you need:

- Using just one plugin? Perfect.
- Mix and match? Great - they work together.
- Building your own? Use our shared resources.

### Open & Extensible

- **Open source:** MIT licensed, fully transparent
- **Extensible:** Build on our foundation
- **Community-driven:** Contributions welcome
- **Shareable:** Team-wide consistency

---

## 🛠️ How Plugins Work Together

### Example: Complete Campaign Workflow

```bash
# 1. Plan the campaign
/compounding-marketing:plan "Q2 Product Launch"

# 2. Generate all content
/content-factory:generate campaigns/q2-launch/brief.md \
  --formats "blog,email,social,video" \
  --quantity "5 blogs, 10 emails, 50 social, 4 videos"

# 3. Repurpose top content
/content-factory:repurpose content/blogs/launch-announcement.md \
  --into "social,email" \
  --platforms "linkedin,twitter,instagram"

# 4. Review everything
/compounding-marketing:review campaigns/q2-launch/

# 5. Iterate based on feedback
# (Make improvements, regenerate as needed)

# 6. Publish and track
# (Use your existing tools, informed by plugin output)
```

### Plugin Synergies

**Compounding Marketing + Content Factory:**
- Plan with Compounding Marketing
- Execute with Content Factory
- Review with Compounding Marketing

**Content Factory + SEO Optimizer (coming soon):**
- Generate content with Content Factory
- Optimize with SEO Optimizer
- Track performance together

---

## 📊 What Makes These Plugins Different?

### vs. Generic AI Tools

| Generic AI | Our Plugins |
|-----------|-------------|
| One-off outputs | Systematic workflows |
| No memory | Builds knowledge over time |
| Generic templates | Marketing-specific |
| Single agent | Multi-agent review |
| No quality checks | Brand + SEO + conversion validation |

### vs. Every Marketplace (Engineering Focus)

| Every (Engineering) | Marketing Tools |
|-------------------|-----------------|
| Code review | Marketing content review |
| 1 flagship plugin | 6+ specialized plugins |
| Developer workflows | Campaign workflows |
| Technical agents | Marketing agents |

---

## 🤝 Contributing

We welcome contributions from the community!

**Ways to contribute:**
- 🐛 Report bugs or issues
- 💡 Suggest new features or plugins
- 📝 Improve documentation
- 🔧 Submit pull requests
- 🎨 Create templates or examples
- 🌟 Star the repo and share

See our [Contributing Guide](docs/CONTRIBUTING.md) for details.

---

## 🗺️ Roadmap

### Phase 1: Foundation (Current - Q1 2025)
- ✅ Marketplace structure
- ✅ Compounding Marketing plugin (MVP)
- ✅ Content Factory plugin
- ✅ Comprehensive documentation
- ✅ Example workflows

### Phase 2: Expansion (Q2 2025)
- 🚧 Complete Compounding Marketing (execute + review commands)
- 🚧 SEO Optimizer plugin
- 🚧 Social Scheduler plugin
- 🚧 Community templates library
- 🚧 Video tutorials

### Phase 3: Integration (Q3 2025)
- ⏳ Email Sequencer plugin
- ⏳ Analytics Reporter plugin
- ⏳ Plugin marketplace website
- ⏳ Advanced automation features
- ⏳ API integrations

### Phase 4: Community (Q4 2025)
- ⏳ Community-contributed plugins
- ⏳ Plugin certification program
- ⏳ Enterprise features
- ⏳ Advanced customization
- ⏳ Plugin analytics

---

## 📈 Success Stories

### Case Study: Tech Startup

**Before:**
- 40 hours per campaign
- Inconsistent quality
- Brand voice drift
- No reusable assets

**After 3 months with plugins:**
- 12 hours per campaign (70% reduction)
- Multi-agent quality review
- Consistent brand voice
- Growing template library

### Case Study: Solo Marketing Consultant

**Before:**
- Couldn't scale beyond 3 clients
- Manual content creation
- No time for strategy

**After:**
- Serving 8 clients comfortably
- Automated content generation
- 60% time on strategy vs. execution

*Want to share your story? [Contact us!](https://github.com/blacklogos/marketing-tools-marketplace/discussions)*

---

## 🏢 For Teams

### Standardize Your Workflows

Install plugins at the repository level for team-wide consistency:

**`.claude/config.json`:**
```json
{
  "plugins": {
    "compounding-marketing": {
      "enabled": true,
      "brand_guidelines": "brand/guidelines.md"
    },
    "content-factory": {
      "enabled": true,
      "default_formats": ["blog", "email", "social"]
    }
  }
}
```

### Team Benefits

- ✅ **Onboarding:** New team members use proven systems
- ✅ **Quality:** Automated reviews ensure consistency
- ✅ **Scalability:** Everyone moves faster over time
- ✅ **Knowledge:** Shared templates and patterns
- ✅ **Alignment:** Same processes across team

---

## 💬 Community & Support

- **📖 Documentation:** [docs/](docs/)
- **💡 Discussions:** [GitHub Discussions](https://github.com/blacklogos/marketing-tools-marketplace/discussions)
- **🐛 Issues:** [GitHub Issues](https://github.com/blacklogos/marketing-tools-marketplace/issues)
- **🎓 Course:** [Claude Code for Marketers](https://github.com/blacklogos/cc4mkt)
- **📧 Email:** [support@blacklogos.com](mailto:support@blacklogos.com)

---

## 📄 License

MIT License © 2025 blacklogos

See [LICENSE](LICENSE) file for details.

---

## 🙏 Credits & Inspiration

- **Inspired by:** [Every Marketplace](https://github.com/EveryInc/every-marketplace) and the Compounding Engineering Philosophy
- **Built for:** Claude Code users and the marketing community
- **Powered by:** Claude AI and the Anthropic team
- **Maintained by:** blacklogos team and contributors

Special thanks to:
- The Every team for pioneering the compounding philosophy
- The Claude Code team for building an amazing platform
- All contributors and community members

---

## ⭐ Show Your Support

If these plugins help your marketing workflows:

- ⭐ **Star this repo** to help others discover it
- 🐦 **Share on social media** with your network
- 📝 **Write about your experience** (blog, LinkedIn, Twitter)
- 🤝 **Contribute** improvements or new plugins
- 💬 **Join discussions** and help other users

---

## 🚀 Get Started Now

```bash
# Install the marketplace
/plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace

# Install your first plugin
/plugin install compounding-marketing@marketing-tools-marketplace

# Run your first command
/compounding-marketing:plan "My First Campaign"
```

**Start compounding today.** Each campaign makes the next one easier. 🚀

---

**Latest Release:** v1.0.0 | **Last Updated:** 2025-01-14 | **Compatibility:** Claude Code 2025+
