# Start Lesson 1.5: Creating Custom Agents for Marketing

Now you'll learn to create specialized agents tailored to YOUR marketing needs. These become reusable team members!

## What You'll Build (30 minutes)

By the end of this lesson, you'll have:
- ✅ A Brand Voice Guardian agent (enforces tone/style)
- ✅ An SEO Specialist agent (optimizes content)
- ✅ A Persona Reviewer agent (checks resonance)

Then you can summon them anytime!

---

## How to Create a Custom Agent

Agents are defined with:
1. **Name & Role**: What they're called and their expertise
2. **Expertise**: Their specific knowledge domain
3. **Review Criteria**: What they look for
4. **Output Format**: How they provide feedback

---

## Let's Build Agent #1: Brand Voice Guardian

This agent ensures all content matches FocusFlow's brand voice.

### FocusFlow Brand Voice Guidelines

**Tone**: Friendly, energetic, empowering (not corporate or stuffy)
**Voice**: We're a productivity partner, not just software
**Language**: Clear and jargon-free, but tech-savvy
**Values**: Simplicity, focus, collaboration, results

**Examples**:
- ✅ "Get your team focused and moving forward"
- ❌ "Leverage our enterprise-grade solution to optimize workflows"

### Create the Agent

Tell me:
```
Create a custom agent called "Brand Voice Guardian" that reviews content for:
- Tone matches (friendly, energetic, empowering)
- Avoids corporate jargon
- Uses active voice and clear language
- Embodies our values (simplicity, focus, collaboration)

Save agent definition to: .claude/agents/brand-voice-guardian.md
```

I'll create the agent file, and then you can summon it anytime!

---

## Let's Build Agent #2: SEO Specialist

This agent reviews content for search optimization.

### SEO Checklist for FocusFlow Content

**Focus keywords**: productivity app, task management, team collaboration
**Technical checks**: title tags, meta descriptions, header structure
**Content quality**: keyword placement, readability, internal links
**User intent**: matches search intent for target queries

### Create the Agent

Try:
```
Create an "SEO Specialist" agent that reviews content for:
- Target keyword usage and placement
- Title and header optimization
- Meta description quality
- Content structure and readability
- Internal linking opportunities

Save to: .claude/agents/seo-specialist.md
```

---

## Let's Build Agent #3: Persona Reviewer

This agent checks if content resonates with a specific target persona.

Pick one persona (Sam, Maria, or Steve) and tell me:
```
Create a "Startup Sam Reviewer" agent that evaluates content from Sam's perspective:
- Age 28, startup founder, moves fast
- Pain points: scattered tools, losing focus
- Values: speed, simplicity, modern tech
- Decision style: tries new tools quickly

Reviews should answer: Would Sam care about this? Would he take action?

Save to: .claude/agents/startup-sam-reviewer.md
```

---

## Using Your Custom Agents

Once created, summon them like this:
```
@brand-voice-guardian review this email copy
@seo-specialist analyze this blog post
@startup-sam-reviewer would Sam click this ad?
```

---

## Your Challenge

Create at least 2 custom agents, then test them on a piece of content!

**Ideas for more agents**:
- Conversion Rate Optimizer
- Social Media Strategist
- Email Deliverability Checker
- Legal/Compliance Reviewer
- Competitor Intelligence Analyst

When you're ready to learn project memory, type: `/start-1-6`
