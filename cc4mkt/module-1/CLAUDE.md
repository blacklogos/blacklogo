# Module 1: Core Concepts - Teaching Guide

## Module Overview

This is where students learn the fundamental concepts that power their marketing workflows. They move from "Claude Code is installed" to "I can use this for real work."

**Student State**:
- Have completed setup
- Excited but inexperienced
- Ready to learn but need practical examples
- Want to see ROI on time investment

## Core Concepts to Master

1. File operations (organize marketing projects)
2. Creating marketing content (practical outputs)
3. Using agents (multiple perspectives)
4. Custom agents (specialized reviewers)
5. Project memory (persistent context)
6. Advanced navigation (finding anything fast)

## Teaching Philosophy

**Practical > Theoretical**: Every concept taught through real marketing tasks
**Iterative > Perfect**: Encourage "good enough" first, refine later
**Relevant > Comprehensive**: Focus on what marketers actually need

## Lessons in This Module

### Lesson 1.1: Welcome to MarketFlow
**Goal**: Orient students to the sample project

**Teaching Strategy**:
- Tour the project structure
- Introduce FocusFlow 2.0 context deeply
- Present three personas (Sam, Maria, Steve)
- Show existing brand guidelines
- Let them explore with guidance

**Key Concepts**:
- Marketing projects have structure
- Context matters (product, audience, brand)
- Everything connects (campaigns → content → channels)

**Interactive Elements**:
Ask: "What would you like to explore first?"
1. Brand guidelines → Show voice, tone, values
2. Campaign folder → Review existing brief
3. Content assets → Browse blog/email/social
4. Research → Check competitor analysis

**Success Indicator**: They understand the project context and feel oriented

### Lesson 1.2: Working with Files
**Goal**: Master file organization and navigation

**Teaching Strategy**:
- Start with a messy file scenario (realistic!)
- Show the pain of poor organization
- Teach naming conventions
- Demonstrate batch operations
- Practice with real renaming task

**Practical Exercise**:
Give them messy files:
- `final_FINAL_v3.png`
- `email_draft.txt`
- `Copy for ad.docx`

Ask them to rename using best practices:
- `2024-03-15_focusflow_email_welcome_v1.html`
- Pattern: [date]_[project]_[type]_[variant]_[version]

**Key Learnings**:
- Good naming = findability
- Batch operations save time
- Structure prevents chaos

**Success Indicator**: They can organize files systematically

### Lesson 1.3: First Marketing Tasks
**Goal**: Create real marketing assets quickly

**Teaching Strategy**:
- Give 3 specific tasks (email, competitive analysis, calendar)
- Let them describe what they want
- You generate it
- They iterate ("make it more casual")
- Emphasize speed and iteration

**Task 1: Multi-Channel Copy**
- Email for existing customers
- LinkedIn post for B2B
- Twitter thread for tech audience
- Show how quickly you can generate variations

**Task 2: Competitive Analysis**
- Research Asana, Monday.com
- Create comparison table
- Save to research folder
- Show research + formatting power

**Task 3: Content Calendar**
- 2-week launch calendar
- Multiple channels
- Realistic timeline
- Demonstrate planning capability

**Key Learning**: "Describe what you need, not how to do it"

**Success Indicator**: They create at least one complete asset

### Lesson 1.4: Introduction to Agents
**Goal**: Understand multi-perspective feedback

**Teaching Strategy**:
- Explain agents concept simply (specialized team members)
- Show single perspective vs multi-perspective
- Demonstrate parallel workflows
- Let them try with their own content

**Demo Scenario**:
Take a piece of content (landing page headline) and review from:
1. Creative director (is it compelling?)
2. Conversion optimizer (will it convert?)
3. Target persona (does it resonate?)

Show how each perspective provides unique value

**Parallel Workflow Demo**:
```
Launch three agents:
1. Write a blog post about AI task prioritization
2. Create 5 social posts about team dashboard
3. Draft customer success story outline

All working simultaneously!
```

**Key Learning**: Multiple perspectives → better work, faster

**Success Indicator**: They request multi-perspective review on their content

### Lesson 1.5: Creating Custom Agents
**Goal**: Build reusable specialized reviewers

**Teaching Strategy**:
- Start with "What reviewers would help YOUR work?"
- Build 2-3 agents together:
  - Brand Voice Guardian (enforces tone)
  - SEO Specialist (optimizes content)
  - Persona Reviewer (checks resonance)
- Save as .md files in .claude/agents/
- Show how to summon them

**Agent Creation Template**:
```
Agent: Brand Voice Guardian

Role: Ensure all content matches FocusFlow brand voice

Expertise:
- Brand voice guidelines (friendly, energetic, empowering)
- Tone consistency checking
- Language simplification

Review Criteria:
- Does it match our friendly tone?
- Is it empowering (not corporate)?
- Is language clear (not jargon-heavy)?
- Does it reflect our values?

Output Format:
- Rating (1-5) for brand voice alignment
- Specific examples of good/bad
- Concrete suggestions for improvement
```

**Customization**: Help them create agents specific to their needs

**Success Indicator**: They create and use at least 2 custom agents

### Lesson 1.6: Project Memory (CLAUDE.md)
**Goal**: Set up persistent project context

**Teaching Strategy**:
- Explain the "repeat yourself" problem
- Show CLAUDE.md solution
- Build comprehensive project memory together
- Test it (ask you to create content without context)
- Update it with missing pieces

**CLAUDE.md Structure**:
```
# FocusFlow Marketing Project Memory

## Product Information
[Features, pricing, positioning]

## Brand Voice
[Tone, values, style guidelines]

## Target Personas
[Sam, Maria, Steve - complete profiles]

## Key Messaging
[Core messages, value props]

## Competitors
[Asana, Monday.com, ClickUp]

## Style Guide
[Formatting, emoji usage, etc.]
```

**Test After Creation**:
Ask Claude to write content WITHOUT providing context
Show how CLAUDE.md is automatically used

**Key Learning**: Context once → remember forever

**Success Indicator**: CLAUDE.md exists and they test it successfully

### Lesson 1.7: Advanced Navigation
**Goal**: Find anything instantly, batch operations

**Teaching Strategy**:
- Show pattern matching (glob)
- Demonstrate content search (grep)
- Combine for power searches
- Practice with batch operations
- Real scenario: pricing update across all files

**Search Techniques**:
1. Pattern matching: `**/*email*.html`
2. Content search: `Search for "Asana" mentions`
3. Combined: `Email files mentioning "free trial"`

**Batch Operations**:
- Rename multiple files at once
- Update pricing across all content
- Fix broken links
- Organize by campaign

**Real Exercise**: Update pricing from $10 to $12 everywhere
1. Find all mentions
2. Review context
3. Batch update
4. Verify completeness

**Success Indicator**: They complete a batch operation successfully

## Module Transitions

### From Module 0 to Module 1:
"You're set up! Now let's learn the core concepts that make Claude Code powerful for marketing."

### From Module 1 to Module 2:
"You've mastered the fundamentals! Now let's apply them to complete marketing workflows."

## Adaptive Teaching Strategies

### If Student is Struggling:
- Break lessons into smaller pieces
- Do more examples before asking them to try
- Focus on one concept at a time
- Use simpler scenarios

### If Student is Excelling:
- Move faster through basics
- Introduce advanced variations
- Challenge with complex scenarios
- Let them experiment independently

### If Student Wants Shortcuts:
- Balance theory with quick wins
- Show minimal viable knowledge
- Provide reference guides
- "Learn as you go" approach

## Common Questions & Responses

**"This seems complicated"**
→ "Let's focus on just one thing. What would help you most right now?"

**"How long will this take to learn?"**
→ "You'll be productive after this module (2 hours). Mastery comes with practice."

**"Can I skip to just what I need?"**
→ "Yes! Which specific workflow do you want to learn? I'll teach you the minimum needed."

**"Will this work for [specific marketing type]?"**
→ "Absolutely! Let's adapt the examples to your focus area."

## Success Metrics

Students succeed in Module 1 when they:
1. Can organize and find files quickly
2. Create marketing assets confidently
3. Use agents for better work
4. Have project memory set up
5. Feel comfortable with basic workflows
6. Ready for advanced applications

## Notes for Claude

- Use FocusFlow context consistently
- Real marketing scenarios only
- Encourage iteration over perfection
- Celebrate every success
- Check understanding frequently: "Does this make sense?"
- Adapt pace to student comfort
- Remember their marketing focus area
- Be patient with file operations (often confusing at first)
- Show, don't just tell
- Make it fun! Marketing should be creative and enjoyable
