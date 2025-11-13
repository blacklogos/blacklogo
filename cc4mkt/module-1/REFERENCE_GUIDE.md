# Module 1: Core Concepts - Quick Reference

## File Operations

### Naming Convention Best Practice
```
[date]_[project]_[type]_[variant]_[version].[ext]

Examples:
2024-03-15_focusflow_email_welcome_v1.html
2024-03-15_focusflow_ad_linkedin_hero_v2.png
2024-03-15_focusflow_social_twitter_launch_v1.txt
```

### Common File Operations Prompts
```
"Find all email files"
"List files modified this week"
"Move all ads to the ads folder"
"Rename these files using best practices"
"Create a new campaign folder structure"
```

## Creating Marketing Assets

### Multi-Channel Copy Generation
```
Create [asset type] for [product/campaign]:
- Target audience: [persona]
- Key message: [main benefit]
- Tone: [friendly/professional/urgent]
- Length: [word count]
- CTA: [specific action]

Example:
"Create a launch email for FocusFlow 2.0 targeting existing customers.
Highlight AI task prioritization. Under 200 words. Friendly but professional tone."
```

### Competitive Analysis
```
"Create a competitive comparison table for [Product] vs [Competitor A] and [Competitor B].
Compare: pricing, key features, target audience, strengths, weaknesses.
Format as markdown table."
```

### Content Calendar
```
"Create a [timeframe] content calendar for [campaign/product].
Channels: [list channels]
Frequency: [posts per channel]
Include topics, formats, and timing."
```

## Agents

### Using Multiple Perspectives
```
Review this [content type] from [number] perspectives:
1. As a [role 1] - [what to evaluate]
2. As a [role 2] - [what to evaluate]
3. As a [role 3] - [what to evaluate]

Provide specific feedback and recommendations from each perspective.
```

### Parallel Workflows
```
Launch [number] agents:
1. [Task 1]
2. [Task 2]
3. [Task 3]

Work on all simultaneously.
```

## Custom Agents

### Agent Definition Template
```markdown
# [Agent Name] Agent

## Role
[What this agent does]

## Expertise
- [Domain 1]
- [Domain 2]
- [Domain 3]

## Review Criteria
- [Criterion 1]: [What to check]
- [Criterion 2]: [What to check]

## Output Format
[How agent provides feedback]
```

### Available Course Agents
- **@brand-voice-guardian**: Ensures brand voice consistency
- **@seo-specialist**: Optimizes content for search
- **@conversion-optimizer**: Maximizes conversion rates
- **@startup-sam-reviewer**: Reviews from Sam's perspective
- **@manager-maria-reviewer**: Reviews from Maria's perspective
- **@solo-steve-reviewer**: Reviews from Steve's perspective

### Using Custom Agents
```
@agent-name [command]

Examples:
"@brand-voice-guardian review this email copy"
"@seo-specialist analyze this blog post"
"@startup-sam-reviewer would Sam click this ad?"
```

## Project Memory (CLAUDE.md)

### What to Include
```markdown
# [Project Name] Marketing Project Memory

## Product Information
- Name, category, features
- Pricing tiers
- Positioning statement

## Brand Voice
- Tone guidelines
- Do's and don'ts
- Example copy

## Target Personas
- Detailed persona profiles
- Pain points and goals
- Decision-making style

## Key Messaging
- Primary messages
- Value propositions
- Proof points

## Competitors
- Main competitors
- Our competitive edge

## Style Guide
- Writing style preferences
- Formatting conventions
- Link and CTA guidelines
```

### Testing Project Memory
```
"Write a [asset type] for [product]"
(without providing any additional context)

Claude should automatically use CLAUDE.md context.
```

## Advanced Navigation

### Pattern Matching (Glob)
```
Find all email templates: **/*email*.html
Find Q2 campaigns: campaigns/2024-q2/**/*
Find all PDFs: **/*.pdf
Find version 2 files: **/*_v2.*
```

### Content Search (Grep)
```
"Find files mentioning [text]"
"Search all content for [keyword]"
"Find files with [old pricing]"
```

### Batch Operations
```
"Rename all files from v1 to v2"
"Update pricing across all files ($10 → $12)"
"Move all Q1 campaigns to archive"
```

## Module 1 Key Commands

### Starting Lessons
```bash
/start-1-1    # Welcome to MarketFlow
/start-1-2    # Working with Files
/start-1-3    # First Tasks
/start-1-4    # Introduction to Agents
/start-1-5    # Creating Custom Agents
/start-1-6    # Project Memory
/start-1-7    # Advanced Navigation
```

## Learning Outcomes

After completing Module 1, you should be able to:
- ✅ Organize marketing files systematically
- ✅ Create multi-channel marketing content
- ✅ Use agents for multiple perspectives
- ✅ Create custom marketing reviewers
- ✅ Set up project memory (CLAUDE.md)
- ✅ Find and batch-update files quickly
- ✅ Execute basic marketing workflows

## Quick Tips

### File Organization
- Use consistent naming (date-project-type-variant-version)
- Create clear folder hierarchy (campaigns/content/brand/research)
- Keep related files together

### Content Creation
- Describe what you want, not how to do it
- Iterate quickly ("make it more casual")
- Use specific requirements (length, tone, audience)
- Leverage agents for multi-perspective feedback

### Agent Usage
- Use multiple perspectives for better work
- Create agents for repetitive review tasks
- Save successful prompts as agents
- Summon agents with @agent-name

### Project Memory
- Include all context in CLAUDE.md
- Update when brand/product changes
- Test that Claude uses it automatically
- Keep it organized and scannable

## Common Patterns

### Content Review Workflow
1. Create first draft
2. @brand-voice-guardian review
3. @seo-specialist optimize
4. @persona-reviewer check resonance
5. Incorporate feedback
6. Final polish

### Multi-Asset Creation
1. Define requirements clearly
2. Generate multiple variants
3. Review with agents
4. A/B test best options

### Batch Updates
1. Search for text to update
2. Review context
3. Batch replace
4. Verify completeness

## Time Estimates

- Lesson 1.1 (Welcome): 20 min
- Lesson 1.2 (Files): 20 min
- Lesson 1.3 (First Tasks): 30 min
- Lesson 1.4 (Agents): 25 min
- Lesson 1.5 (Custom Agents): 30 min
- Lesson 1.6 (Project Memory): 20 min
- Lesson 1.7 (Navigation): 20 min
- **Total Module 1**: ~2.5 hours

## Next Steps

Ready for Module 2? Start with:
```bash
/start-2-1    # Campaign Brief Creation
```
