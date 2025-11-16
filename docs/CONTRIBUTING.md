# Contributing to Marketing Tools Marketplace

Thank you for your interest in contributing! This marketplace thrives on community contributions. Whether you're fixing a bug, improving documentation, or building a new plugin, we appreciate your help.

## Ways to Contribute

### 1. Report Bugs or Issues 🐛

Found a bug? Let us know!

**Before reporting:**
- Check if the issue already exists
- Try to reproduce it consistently
- Gather relevant information (Claude Code version, plugin version, error messages)

**To report:**
1. Go to [GitHub Issues](https://github.com/blacklogos/marketing-tools-marketplace/issues)
2. Click "New Issue"
3. Choose "Bug Report" template
4. Fill in all requested information

---

### 2. Suggest Features or Improvements 💡

Have an idea for a new feature or plugin?

**To suggest:**
1. Go to [GitHub Discussions](https://github.com/blacklogos/marketing-tools-marketplace/discussions)
2. Start a new discussion in "Ideas"
3. Describe your idea and use case
4. Engage with community feedback

**Great feature suggestions include:**
- Clear problem statement
- Proposed solution
- Use cases and examples
- How it fits the compounding philosophy

---

### 3. Improve Documentation 📝

Documentation can always be clearer and more comprehensive.

**Areas to improve:**
- Fix typos or grammatical errors
- Add examples or use cases
- Clarify confusing sections
- Add screenshots or diagrams
- Improve code samples

**To contribute docs:**
1. Fork the repository
2. Make changes to markdown files
3. Submit a pull request
4. Reference related issues if applicable

---

### 4. Create Templates or Examples 🎨

Help others by sharing your templates and workflows.

**What to contribute:**
- Campaign brief templates
- Content templates (blog, email, social)
- Brand guideline examples
- Complete campaign examples
- Workflow documentation

**Where to add:**
- Templates: `shared/templates/`
- Examples: `examples/campaigns/` or `examples/workflows/`

---

### 5. Build or Enhance Plugins 🔧

The most impactful contribution: building plugins!

**Types of contributions:**
- New plugins
- New commands for existing plugins
- New agents or subagents
- Bug fixes
- Performance improvements

See our [Plugin Development Guide](#plugin-contribution-guidelines) below.

---

## Getting Started

### Fork and Clone

```bash
# Fork the repo on GitHub, then:
git clone https://github.com/YOUR-USERNAME/marketing-tools-marketplace.git
cd marketing-tools-marketplace
```

### Create a Branch

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/bug-description
```

**Branch naming conventions:**
- `feature/` - New features
- `fix/` - Bug fixes
- `docs/` - Documentation changes
- `plugin/` - New plugins or plugin updates

---

## Plugin Contribution Guidelines

### New Plugin Checklist

Before creating a new plugin, ensure:

- [ ] **Unique value** - Fills a gap not covered by existing plugins
- [ ] **Marketing focused** - Serves marketing workflows
- [ ] **Compounding design** - Helps users build reusable assets
- [ ] **Quality output** - Generates professional-grade content
- [ ] **Well documented** - Clear docs with examples

### Plugin File Structure

Every plugin must have:

```
plugins/your-plugin/
├── PLUGIN.md              # Comprehensive documentation
├── commands/
│   ├── command1.md
│   └── command2.md
├── agents/ (optional)
│   └── specialized-agent.md
├── templates/ (optional)
│   └── template-file.md
└── examples/ (optional)
    └── example-usage.md
```

### Required Documentation

Your `PLUGIN.md` must include:

1. **Overview** - What the plugin does
2. **Installation** - How to install
3. **Quick Start** - Simple example
4. **Commands** - All commands with syntax
5. **Examples** - Real use cases
6. **Configuration** - Options and settings

### Command Naming

Format: `/<plugin-name>:<command-name>`

Examples:
- `/seo:audit`
- `/social:schedule`
- `/email:sequence`

### Code Quality

- Clear, commented command definitions
- Helpful error messages
- Input validation
- Examples in documentation
- Tested with real use cases

---

## Submitting Changes

### Pull Request Process

1. **Update your branch**
   ```bash
   git fetch origin
   git rebase origin/main
   ```

2. **Test your changes**
   - Install plugin locally
   - Run all commands
   - Verify documentation accuracy
   - Check for broken links

3. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add SEO audit command"
   ```

4. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create Pull Request**
   - Go to GitHub
   - Click "New Pull Request"
   - Fill in PR template
   - Link related issues
   - Request review

### Commit Message Format

We use [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

**Types:**
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `refactor:` - Code refactoring
- `test:` - Test updates
- `chore:` - Build or tooling changes

**Examples:**
```
feat(content-factory): add video script generation
fix(compounding-marketing): resolve plan command error
docs(readme): update installation instructions
```

### Pull Request Template

When creating a PR, include:

```markdown
## Description
[What does this PR do?]

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Breaking change

## Testing
[How did you test this?]

## Checklist
- [ ] Code follows style guidelines
- [ ] Documentation updated
- [ ] Examples added/updated
- [ ] Tested locally
- [ ] No breaking changes (or documented)

## Related Issues
Closes #[issue number]
```

---

## Code of Conduct

### Our Pledge

We pledge to make participation in our community a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity, experience level, nationality, personal appearance, race, religion, or sexual identity.

### Our Standards

**Positive behavior:**
- Using welcoming and inclusive language
- Being respectful of differing viewpoints
- Gracefully accepting constructive criticism
- Focusing on what's best for the community
- Showing empathy towards others

**Unacceptable behavior:**
- Harassment or discriminatory language
- Trolling or insulting comments
- Public or private harassment
- Publishing others' private information
- Other unprofessional conduct

### Enforcement

Instances of unacceptable behavior may be reported to [conduct@blacklogos.com](mailto:conduct@blacklogos.com). All complaints will be reviewed and investigated promptly and fairly.

---

## Development Setup

### Prerequisites

- Claude Code 2025+
- Git
- Text editor (VS Code recommended)
- Basic understanding of markdown
- Familiarity with Claude Code commands

### Local Testing

```bash
# 1. Clone your fork
git clone https://github.com/YOUR-USERNAME/marketing-tools-marketplace.git
cd marketing-tools-marketplace

# 2. Link plugin for testing
ln -s $(pwd)/plugins/your-plugin ~/.claude/plugins/your-plugin

# 3. Restart Claude Code

# 4. Test your plugin
/your-plugin:command
```

### Testing Checklist

Before submitting a PR:

- [ ] Plugin installs correctly
- [ ] All commands work as documented
- [ ] Error handling works
- [ ] Examples run successfully
- [ ] Documentation is accurate
- [ ] No broken links
- [ ] Brand voice is consistent

---

## Community

### Where to Connect

- **GitHub Discussions** - Questions, ideas, general chat
- **GitHub Issues** - Bug reports, feature requests
- **Pull Requests** - Code contributions

### Recognition

Contributors will be:
- Listed in README.md acknowledgments
- Credited in release notes
- Mentioned in documentation (for significant contributions)

---

## Questions?

**Need help contributing?**
- Ask in [GitHub Discussions](https://github.com/blacklogos/marketing-tools-marketplace/discussions)
- Check existing PRs for examples
- Read plugin docs for guidance

**Found an issue with these guidelines?**
- Open an issue or discussion
- Submit a PR to improve them

---

Thank you for contributing to Marketing Tools Marketplace! Together we're building tools that help marketers work smarter and compound their efforts. 🚀

**Ready to contribute?** Pick an issue or start building! We're excited to see what you create.
