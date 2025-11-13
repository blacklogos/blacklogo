# Module 0: Getting Started - Quick Reference

## Installation Checklist

### Prerequisites
- [ ] Node.js installed (v18+ or v20+)
- [ ] Terminal/command line access
- [ ] Anthropic API key from console.anthropic.com

### Installation Steps
```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code

# Verify installation
claude --version

# Set API key (Mac/Linux)
export ANTHROPIC_API_KEY='your-key-here'

# Set API key (Windows)
setx ANTHROPIC_API_KEY "your-key-here"
```

### Common Issues
| Problem | Solution |
|---------|----------|
| `node: command not found` | Install Node.js from nodejs.org |
| `permission denied` | Use `sudo npm install -g` (Mac/Linux) |
| `ANTHROPIC_API_KEY not found` | Re-export key or add to shell config |
| `claude: command not found` | Check npm global bin path |

## MarketFlow Setup

### Quick Setup (Automated)
```bash
cd /path/to/cc4mkt
./setup-marketflow.sh
```

### Manual Setup Structure
```
MarketFlow/
├── CLAUDE.md           # Project memory
├── campaigns/          # Campaign briefs
├── content/
│   ├── blog/
│   ├── email/
│   ├── social/
│   └── ads/
├── brand/              # Brand guidelines
├── research/           # Competitive analysis
└── analytics/          # Reports and data
```

## Key Commands

### Starting Lessons
```bash
/start-0-0    # Introduction
/start-0-1    # Installation
/start-0-2    # First Project
```

### Basic Claude Code Commands
```bash
claude                    # Start Claude Code
claude --version         # Check version
claude --help            # Get help
```

## Module 0 Learning Outcomes

After completing Module 0, you should be able to:
- ✅ Install and configure Claude Code
- ✅ Set up your Anthropic API key
- ✅ Create a marketing project workspace
- ✅ Navigate the MarketFlow sample project
- ✅ Understand basic Claude Code interaction

## Next Steps

Ready for Module 1? Start with:
```bash
/start-1-1    # Welcome to MarketFlow
```

## Troubleshooting

### API Key Not Working
1. Verify key is correct (copy from console.anthropic.com)
2. Check for extra spaces or quotes
3. Restart terminal after setting
4. Try adding to shell profile (~/.zshrc or ~/.bashrc)

### Installation Fails
1. Check Node.js version: `node --version` (need 18+)
2. Update npm: `npm install -g npm@latest`
3. Try with sudo (Mac/Linux): `sudo npm install -g @anthropic-ai/claude-code`
4. Check npm permissions

### Can't Find Claude Command
1. Find npm global bin: `npm config get prefix`
2. Add to PATH: `export PATH=$PATH:/path/to/npm/bin`
3. Or run directly: `npx claude`

## Resources

- **Course README**: `/cc4mkt/README.md`
- **Quick Start Guide**: `/cc4mkt/QUICK-START.md`
- **Setup Script**: `/cc4mkt/setup-marketflow.sh`
- **MarketFlow README**: `/MarketFlow/README.md`

## Time Estimate

- Lesson 0.0 (Introduction): 10 minutes
- Lesson 0.1 (Installation): 20 minutes
- Lesson 0.2 (First Project): 15 minutes
- **Total Module 0**: ~45 minutes
