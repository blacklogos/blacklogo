# Marketing Tools Marketplace - Project Memory

## Project Overview

This is a GitHub-hosted marketplace that distributes AI-powered marketing plugins for Claude Code. The marketplace helps marketers work smarter through systematic workflows, automated quality checks, and compounding knowledge.

**Repository:** https://github.com/blacklogos/marketing-tools-marketplace
**License:** MIT
**Compatibility:** Claude Code 2025+

---

## Core Philosophy

### The Compounding Effect

Every use of our plugins makes the next use easier:

1. **First campaign:** Build templates, learn patterns (40 hours)
2. **Fifth campaign:** Reuse templates, apply patterns (15 hours)
3. **Tenth campaign:** Systematized workflow (10 hours)

This is the opposite of traditional tools that require the same effort every time.

### Design Principles

- **Systematic over ad-hoc:** Repeatable processes beat one-off solutions
- **Quality through automation:** Multi-agent review ensures excellence
- **Knowledge accumulation:** Build a library, don't start from scratch
- **Modular and composable:** Use what you need, ignore the rest
- **Open and extensible:** Community can build on our foundation

---

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
├── README.md              # Main marketplace documentation
├── CLAUDE.md              # This file - project memory
└── LICENSE                # MIT license
```

---

## Available Plugins

### 1. Compounding Marketing (v0.1.0)

**Purpose:** Systematic campaign workflow automation

**Status:** MVP - plan command available, execute and review coming soon

**Commands:**
- `/compounding-marketing:plan` - ✅ Available
- `/compounding-marketing:execute` - 🚧 In development
- `/compounding-marketing:review` - 🚧 In development

**Agents (6 current, 12 planned):**
- brand-voice-guardian
- seo-specialist
- conversion-optimizer
- startup-sam-reviewer
- manager-maria-reviewer
- solo-steve-reviewer

**Templates:**
- campaign-brief.md
- content-calendar.md
- email-sequence.md
- (more planned)

**Location:** `plugins/compounding-marketing/`

---

### 2. Content Factory (v0.1.0)

**Purpose:** Rapid multi-format content generation and repurposing

**Status:** Core functionality complete

**Commands:**
- `/content-factory:generate` - ✅ Available
- `/content-factory:repurpose` - ✅ Available
- `/content-factory:schedule` - ✅ Available

**Templates:**
- blog-template.md
- social-media-template.md
- video-script-template.md

**Location:** `plugins/content-factory/`

---

## Planned Plugins

### 3. SEO Optimizer (Planned - Q2 2025)

**Purpose:** Comprehensive SEO analysis and optimization

**Commands:**
- `/seo:audit`
- `/seo:keywords`
- `/seo:optimize`
- `/seo:schema`

---

### 4. Social Scheduler (Planned - Q2 2025)

**Purpose:** Social media planning and automation

**Commands:**
- `/social:plan`
- `/social:generate`
- `/social:hashtags`
- `/social:threads`

---

### 5. Email Sequencer (Planned - Q3 2025)

**Purpose:** Email marketing campaign workflows

**Commands:**
- `/email:sequence`
- `/email:subject-lines`
- `/email:optimize`
- `/email:segment`

---

### 6. Analytics Reporter (Planned - Q3 2025)

**Purpose:** Marketing data analysis and reporting

**Commands:**
- `/analytics:report`
- `/analytics:insights`
- `/analytics:forecast`
- `/analytics:compare`

---

## Brand Voice & Tone

**Voice Characteristics:**
- **Professional yet approachable** - We're experts, not academics
- **Action-oriented** - Focus on what users can do
- **Data-informed** - Back claims with evidence
- **Empowering** - Users can achieve great things
- **Honest** - Acknowledge limitations, don't oversell

**Writing Style:**
- Use active voice
- Short paragraphs (2-3 sentences)
- Bullet points for scannability
- Examples and concrete scenarios
- Avoid jargon unless necessary

**Terminology:**

✅ **Use:**
- Plugins (not extensions or add-ons)
- Marketplace (not store or repository)
- Campaign (not project for marketing work)
- Workflows (not processes)
- Compounding (our core concept)

✗ **Avoid:**
- "Revolutionary" or hyperbole
- "Easy" without context
- Assuming prior knowledge
- Technical jargon without explanation

---

## Target Audiences

### Primary: Marketing Professionals

**Personas:**

1. **Solo Marketer Sam (28, Startup Founder)**
   - Doing everything alone
   - Limited budget and time
   - Needs efficiency, scalability
   - Tech-savvy, willing to learn

2. **Manager Maria (38, Marketing Manager)**
   - Leading 3-5 person team
   - Responsible for results
   - Needs consistency, quality
   - Values proven processes

3. **Steve the Solopreneur (32, Consultant)**
   - Serving multiple clients
   - Needs to scale without hiring
   - Quality matters for reputation
   - Time is money

### Secondary: Content Creators

- Bloggers and writers
- Social media managers
- Email marketers
- Video creators

### Tertiary: Agencies

- Marketing agencies
- Content agencies
- Consulting firms

---

## Installation Methods

Users can install plugins via:

1. **Claude Code Marketplace:**
   ```
   /plugin marketplace add https://github.com/blacklogos/marketing-tools-marketplace
   /plugin install <plugin-name>@marketing-tools-marketplace
   ```

2. **NPX CLI:**
   ```
   npx claude-plugins install @blacklogos/marketing-tools-marketplace/<plugin-name>
   ```

3. **Manual:**
   ```
   git clone <repo>
   ln -s plugins/<plugin-name> ~/.claude/plugins/<plugin-name>
   ```

---

## Plugin Development Standards

### File Structure

Every plugin must have:
- `PLUGIN.md` - Documentation
- `commands/` - Command definitions
- `agents/` (optional) - Specialized agents
- `templates/` (optional) - Content templates
- `skills/` (optional) - Auto-invoked skills
- `hooks/` (optional) - Workflow automation

### Command Naming

Format: `/<plugin-name>:<command-name>`

Examples:
- `/compounding-marketing:plan`
- `/content-factory:generate`
- `/seo:audit`

### Documentation Requirements

Each plugin needs:
- Clear purpose and use cases
- Command reference with examples
- Installation instructions
- Quick start guide
- Configuration options

### Quality Standards

All plugins must:
- Include error handling
- Validate inputs
- Provide helpful error messages
- Support both quick and thorough modes
- Include examples in documentation

---

## Shared Resources

### Agents (`shared/agents/`)

Reusable AI agents that plugins can invoke:

- **brand-voice-guardian** - Brand consistency checking
- **seo-specialist** - SEO optimization
- **conversion-optimizer** - Conversion rate optimization

### Templates (`shared/templates/`)

Common templates used across plugins:

- Brand guidelines format
- Persona profile template
- Performance tracking template

### Skills (`shared/skills/`)

Auto-invoked expertise:

- marketing-research
- campaign-planning
- content-generation
- brand-validation

---

## Example Workflows

### Workflow 1: Complete Campaign Launch

```bash
# Step 1: Plan the campaign
/compounding-marketing:plan "Q2 Product Launch" --budget 50000

# Step 2: Generate all content
/content-factory:generate campaigns/q2-launch/brief.md \
  --formats "blog,email,social,video"

# Step 3: Repurpose best content
/content-factory:repurpose content/blogs/announcement.md \
  --into "social" --platforms "linkedin,twitter,instagram"

# Step 4: Review everything
/compounding-marketing:review campaigns/q2-launch/

# Step 5: Publish and track
```

### Workflow 2: Content Repurposing at Scale

```bash
# Batch repurpose all blog posts
for blog in content/blogs/*.md; do
  /content-factory:repurpose $blog --into "social,email"
done
```

### Workflow 3: Monthly Content Calendar

```bash
# Create and populate calendar
/content-factory:schedule \
  --period "March 2025" \
  --frequency "3 blogs/week, 5 social/day" \
  --generate-content true
```

---

## Development Roadmap

### Phase 1: Foundation (Q1 2025) ✅
- [x] Marketplace structure
- [x] Compounding Marketing (MVP)
- [x] Content Factory
- [x] Core documentation
- [x] Example workflows

### Phase 2: Expansion (Q2 2025) 🚧
- [ ] Complete Compounding Marketing (execute + review)
- [ ] SEO Optimizer plugin
- [ ] Social Scheduler plugin
- [ ] Video tutorials
- [ ] Community templates

### Phase 3: Integration (Q3 2025) ⏳
- [ ] Email Sequencer plugin
- [ ] Analytics Reporter plugin
- [ ] Plugin marketplace website
- [ ] Advanced automation
- [ ] API integrations

### Phase 4: Community (Q4 2025) ⏳
- [ ] Community plugins
- [ ] Certification program
- [ ] Enterprise features
- [ ] Plugin analytics

---

## Contributing Guidelines

### Code Contributions

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests/examples
5. Update documentation
6. Submit pull request

### Plugin Contributions

New plugins should:
1. Follow our file structure
2. Include comprehensive docs
3. Provide examples
4. Pass quality review
5. Align with marketplace philosophy

### Documentation Contributions

- Fix typos or unclear sections
- Add examples or use cases
- Improve getting started guides
- Translate to other languages

---

## Testing & Quality

### Before Committing

- [ ] All commands work as documented
- [ ] Examples run successfully
- [ ] Documentation is accurate
- [ ] No broken links
- [ ] Code is commented
- [ ] Error handling works

### Manual Testing Checklist

For each plugin:
- [ ] Install via marketplace
- [ ] Run each command with example inputs
- [ ] Verify output quality
- [ ] Check error messages
- [ ] Test edge cases
- [ ] Validate documentation accuracy

---

## Support & Community

### For Users

- **Documentation:** Start with `docs/GETTING-STARTED.md`
- **Issues:** GitHub Issues for bugs
- **Discussions:** GitHub Discussions for questions
- **Course:** Claude Code for Marketers (cc4mkt)

### For Developers

- **Plugin Guide:** `docs/PLUGIN-DEVELOPMENT.md`
- **API Docs:** `docs/API-REFERENCE.md`
- **Contributing:** `docs/CONTRIBUTING.md`

---

## Metrics & Success

### Key Performance Indicators

**Adoption:**
- Marketplace installations
- Active plugin users
- Plugin usage frequency

**Quality:**
- User satisfaction scores
- Issue resolution time
- Documentation clarity ratings

**Community:**
- GitHub stars and forks
- Contributions from community
- Discussions activity

**Impact:**
- Time saved per campaign
- Quality improvements
- User-reported ROI

---

## Common Issues & Solutions

### Installation Problems

**Issue:** Plugin not found after marketplace add

**Solution:**
- Verify marketplace URL
- Run `/plugin` to refresh
- Check Claude Code version (needs 2025+)

### Command Errors

**Issue:** Command fails with unclear error

**Solution:**
- Check command syntax in plugin docs
- Verify all required parameters
- Check file paths are absolute
- Review error message for specifics

### Output Quality

**Issue:** Generated content not meeting expectations

**Solution:**
- Provide more detailed briefs
- Specify brand guidelines
- Use `--mode thorough` for higher quality
- Iterate with feedback

---

## Versioning

We follow semantic versioning (semver):

- **MAJOR** (1.x.x): Breaking changes
- **MINOR** (x.1.x): New features, backwards compatible
- **PATCH** (x.x.1): Bug fixes

Current versions:
- **Marketplace:** v1.0.0
- **Compounding Marketing:** v0.1.0 (MVP)
- **Content Factory:** v0.1.0

---

## License

MIT License - see LICENSE file for full text

Key points:
- Free to use commercially
- Free to modify and distribute
- Must include original license
- No warranty provided

---

## Related Projects

- **[Claude Code for Marketers](https://github.com/blacklogos/cc4mkt)** - Comprehensive course
- **[Every Marketplace](https://github.com/EveryInc/every-marketplace)** - Inspiration for compounding philosophy
- **[Claude Code Official](https://claude.ai/code)** - The platform

---

## Changelog

### v1.0.0 (2025-01-14)

**Added:**
- Initial marketplace structure
- Compounding Marketing plugin (MVP with plan command)
- Content Factory plugin (generate, repurpose, schedule commands)
- Comprehensive documentation
- Example workflows
- Shared agent library

**Coming Soon:**
- Compounding Marketing execute and review commands
- SEO Optimizer plugin
- Social Scheduler plugin

---

**Last Updated:** 2025-01-14
**Maintained by:** blacklogos team
**Status:** Active Development
