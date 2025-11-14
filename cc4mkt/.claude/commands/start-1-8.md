# Start Lesson 1.8: Hooks - Automate Your Marketing Workflow

Welcome to one of the most powerful new features in Claude Code: **Hooks**! This advanced feature automates actions at specific points in your workflow.

## What Are Hooks?

Hooks are automatic triggers that run at specific events:
- **PreToolUse**: Before Claude uses a tool (validate, check, or block)
- **Stop**: When Claude finishes a response (cleanup, formatting)
- **SubagentStop**: When a subagent completes its task

Think of hooks as "if this happens, then do that" automation for your marketing workflow.

## Why Hooks Matter for Marketers

**Without hooks**: Manual checks, forgotten steps, inconsistent quality

**With hooks**: Automatic quality gates, consistent formatting, enforced standards

### Real Marketing Use Cases

1. **Brand Voice Check**: Automatically validate all content matches brand guidelines before saving
2. **SEO Validation**: Check that blog posts have proper meta descriptions and keywords
3. **Compliance Review**: Ensure legal disclaimers are included in all ads
4. **Formatting Standards**: Auto-format content (headlines in title case, consistent spacing)
5. **Analytics Tracking**: Add UTM parameters to all links automatically

---

## Hook Types for Marketers

### 1. PreToolUse Hook (Quality Gates)

Runs **before** Claude writes or edits files. Perfect for:
- Validating brand voice
- Checking for required elements
- Blocking changes that don't meet standards

**Example: Brand Voice Validator**
```
Before saving any marketing content:
1. Check if it uses approved brand voice
2. If not, block the save and suggest improvements
3. If yes, allow the save
```

### 2. Stop Hook (Post-Processing)

Runs **after** Claude finishes a response. Perfect for:
- Auto-formatting content
- Running spell check
- Adding standard disclaimers
- Generating summaries

**Example: Auto-Format Marketing Copy**
```
After creating any marketing copy:
1. Convert headlines to title case
2. Add proper spacing between sections
3. Ensure CTAs are highlighted
4. Add standard footer/disclaimer
```

### 3. SubagentStop Hook (After Review)

Runs when a subagent finishes. Perfect for:
- Aggregating feedback from multiple reviewers
- Creating summary reports
- Triggering next steps in workflow

**Example: Multi-Review Summary**
```
After all subagents finish reviewing:
1. Collect all feedback
2. Prioritize issues (critical, important, minor)
3. Create action item checklist
4. Save summary report
```

---

## Creating Your First Hook

Hooks are defined in `.claude/hooks/` folder as markdown files.

### Example: SEO Checklist Hook

Let's create a hook that checks blog posts for SEO essentials:

**File**: `.claude/hooks/seo-check.md`

```markdown
# SEO Checklist Hook

Hook Type: PreToolUse
Triggers On: Writing .md files in /content/blog/

## Check:
- [ ] Title is 50-60 characters
- [ ] First paragraph contains target keyword
- [ ] At least 2 internal links included
- [ ] Meta description is 150-160 characters
- [ ] Images have alt text

If any item fails:
- Block the write
- Show checklist with failures highlighted
- Suggest improvements

If all pass:
- Allow the write
- Confirm SEO checklist passed
```

---

## Setting Up Hooks (Practical Exercise)

Let's set up a useful hook for your marketing work:

**Choose one to implement:**

### Option A: Brand Voice Validator
```
Ask me: "Create a PreToolUse hook that validates brand voice
before saving any marketing content to /content/ folder.

Use @brand-voice-guardian to check.
If score < 8/10, block save and show improvements needed.
If score >= 8/10, allow save."
```

### Option B: Content Formatter
```
Ask me: "Create a Stop hook that auto-formats marketing content:
- Title case for H1 headlines
- Sentence case for H2 headings
- Consistent spacing (2 lines between sections)
- Bold all CTAs
- Add line break before and after bullet lists"
```

### Option C: Multi-Review Aggregator
```
Ask me: "Create a SubagentStop hook that runs after multiple
subagent reviews.

Collect feedback from all subagents and create a summary with:
1. Critical issues (must fix)
2. Important improvements (should fix)
3. Minor suggestions (nice to have)
4. Overall quality score

Save to /reviews/ folder with timestamp."
```

---

## Advanced: Prompt-Based Hooks

New in 2025! You can create **intelligent hooks** that use an LLM to make decisions:

**Example: Smart Brand Voice Hook**
```markdown
# Smart Brand Voice Hook

Type: Stop (prompt-based)

After generating marketing content, analyze:
- Is the tone appropriate for the target persona?
- Does it match our brand values (simplicity, empowerment)?
- Are there any corporate buzzwords to remove?
- Is the message clear and compelling?

Provide:
- Score (1-10)
- Specific improvements
- Rewritten version if score < 7
```

This hook uses AI to intelligently evaluate content, not just check rules.

---

## Hooks + Subagents = Marketing Automation

Combine hooks with subagents for powerful workflows:

**Automated Content Review Pipeline:**
1. You create draft marketing copy
2. PreToolUse hook validates basic requirements
3. Stop hook triggers 3 subagents for review:
   - @brand-voice-guardian
   - @conversion-optimizer
   - @seo-specialist
4. SubagentStop hook aggregates all feedback
5. You get comprehensive review automatically

**Set this up:**
```
Create an automated content review pipeline using hooks and subagents.

When I save marketing content:
1. PreToolUse: Check for required elements (headline, CTA, word count)
2. Stop: Launch 3 subagents for review
3. SubagentStop: Aggregate feedback into action items

Save pipeline configuration.
```

---

## Hook Best Practices for Marketers

### Do's ✅
- Use PreToolUse for quality gates (prevent bad content)
- Use Stop for automation (format, enhance, trigger reviews)
- Keep hooks focused (one job per hook)
- Test hooks with sample content first
- Document what each hook does

### Don'ts ❌
- Don't make hooks too restrictive (you'll fight them)
- Don't create hooks that slow you down
- Don't hook every single action (only what matters)
- Don't forget to handle edge cases

---

## Real Marketing Workflow with Hooks

**Before Hooks:**
1. Write content ✍️
2. Manually check brand voice 👀
3. Run through SEO checklist 📋
4. Format for consistency 🎨
5. Get reviews from team 💬
6. Aggregate feedback 📊
7. Make revisions ✏️
**Time**: 2-3 hours

**With Hooks:**
1. Write content ✍️
2. Hooks automatically:
   - Validate brand voice ✅
   - Check SEO requirements ✅
   - Format consistently ✅
   - Trigger subagent reviews ✅
   - Aggregate feedback ✅
3. Review aggregated feedback and make revisions ✏️
**Time**: 30 minutes

---

## Your Challenge

Create one hook that will actually help your marketing workflow.

**Ideas:**
- Ad copy checker (character limits, required elements)
- Email subject line tester (length, spam words, personalization)
- Social post validator (platform requirements, hashtags, mentions)
- Landing page checklist (CTA, social proof, headlines)
- Brand compliance checker (approved terms, voice, values)

---

## Pro Tips

**Checkpoint Integration:**
Hooks work great with checkpoints! If a hook blocks something:
- Press Esc twice to rewind
- Make the required changes
- Try again

**Debugging Hooks:**
If a hook isn't working:
- Check the file path and triggers
- Test with simple example first
- Use claude doctor to verify hook configuration

**Sharing Hooks:**
Save your best hooks! Share with your team so everyone benefits from automation.

---

**🎉 Congratulations!**

You've now learned:
- ✅ Subagents for specialized tasks
- ✅ Hooks for workflow automation
- ✅ How to combine them for powerful pipelines

You're using Claude Code at an advanced level! Ready to move to Module 2 where we apply everything to real campaigns?

Type: `/start-2-1` to begin advanced marketing applications!
