# Start Lesson 0.1: Installing Claude Code

Let's get Claude Code installed on your machine! This is a one-time setup that takes about 20 minutes.

## What You'll Install

1. **Node.js** - Required runtime (if you don't have it already)
2. **Claude Code CLI** - The command-line tool
3. **API Key** - Your connection to Claude

## Step 1: Check for Node.js

Let me check if you already have Node.js installed:

Please run this command in your terminal:
```bash
node --version
```

**Do you see a version number (like v18.x.x or v20.x.x)?**
- If YES: Great! You can skip the Node.js installation.
- If NO: We'll install it together.

Let me know what you see, and I'll guide you through the next step!

---

## Quick Installation Guide (Reference)

If you want to proceed on your own, here's the full process:

### Install Node.js (if needed)
- **Mac**: Download from https://nodejs.org or use `brew install node`
- **Windows**: Download installer from https://nodejs.org
- **Linux**: Use your package manager (e.g., `apt install nodejs`)

### Install Claude Code
```bash
npm install -g @anthropic-ai/claude-code
```

### Set up API Key
1. Get your key from: https://console.anthropic.com/
2. Set it up:
```bash
export ANTHROPIC_API_KEY='your-key-here'
```

### Verify Installation
```bash
claude --version
```

---

**Where are you in the process?** Let me know if you need help with any step!

When installation is complete, type: `/start-0-2` to create your first marketing project.
