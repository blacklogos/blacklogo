# Start Lesson 0.1: Installing Claude Code

Let's get Claude Code installed on your machine! This is a one-time setup that takes about 10-15 minutes.

## What You'll Install

1. **Claude Code** - The AI-powered CLI tool (native installer - **no Node.js required!**)
2. **API Key** - Your connection to Claude

## Installation Method (2025)

Good news! Claude Code now has a **native installer** that doesn't require Node.js. This is the recommended method.

### Step 1: Install Claude Code

**For Mac, Linux, or WSL:**
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

**For the latest version (includes newest features):**
```bash
curl -fsSL https://claude.ai/install.sh | bash -s latest
```

**For Windows:**
Download the installer from https://claude.ai/download

The installer will:
- Install Claude Code binary
- Set up auto-updates
- Configure your system PATH

### Step 2: Set up Your API Key

1. Get your key from: https://console.anthropic.com/
2. Set it up in your terminal:

**Mac/Linux:**
```bash
export ANTHROPIC_API_KEY='your-key-here'
```

To make it permanent, add to your shell config (~/.zshrc or ~/.bashrc):
```bash
echo 'export ANTHROPIC_API_KEY="your-key-here"' >> ~/.zshrc
```

**Windows (PowerShell):**
```powershell
$env:ANTHROPIC_API_KEY='your-key-here'
```

### Step 3: Verify Installation

```bash
claude --version
claude doctor
```

The `claude doctor` command checks your installation and shows:
- Installation type (native or npm)
- Version information
- Configuration status

---

## Already Have npm Version?

If you previously installed via npm, migrate to the native installer:

```bash
claude install
```

This will switch you to the native binary installation with better auto-updates.

---

## New Features in 2025

Your installation includes the latest Claude Code features:

✨ **Checkpoints** - Automatic save points before each change (press Esc twice to rewind)
✨ **Claude Sonnet 4.5** - The world's best coding model (now default)
✨ **Hooks** - Automate actions at specific points (run tests after changes)
✨ **Subagents** - Specialized AI assistants for specific tasks
✨ **VS Code Extension** - Use Claude Code directly in VS Code (beta)
✨ **Background Tasks** - Long-running processes don't block your work

---

## Troubleshooting

### Installation Fails
- Ensure you have internet connection
- Try running with elevated privileges if needed
- Check firewall/antivirus settings

### API Key Not Working
- Verify key is correct (copy from console.anthropic.com)
- Check for extra spaces or quotes
- Restart terminal after setting

### Need Help?
Run `claude doctor` to diagnose issues, or ask me for specific help!

---

**Where are you in the process?** Let me know if you need help with any step!

When installation is complete, type: `/start-0-2` to create your first marketing project.
