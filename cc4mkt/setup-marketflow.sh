#!/bin/bash

# MarketFlow Project Setup Script
# Creates a complete marketing project structure for the Claude Code for Marketers course

set -e  # Exit on error

echo "🚀 Setting up MarketFlow - Your Sample Marketing Project"
echo ""

# Check if MarketFlow directory already exists
if [ -d "MarketFlow" ]; then
    echo "⚠️  MarketFlow directory already exists!"
    read -p "Do you want to overwrite it? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Setup cancelled."
        exit 1
    fi
    echo "Removing existing MarketFlow directory..."
    rm -rf MarketFlow
fi

echo "📁 Creating folder structure..."

# Create main project directory
mkdir -p MarketFlow

# Create subdirectories
mkdir -p MarketFlow/campaigns/2024-q2-focusflow-launch
mkdir -p MarketFlow/content/blog
mkdir -p MarketFlow/content/email
mkdir -p MarketFlow/content/social
mkdir -p MarketFlow/content/ads
mkdir -p MarketFlow/brand
mkdir -p MarketFlow/research
mkdir -p MarketFlow/analytics

echo "✅ Folder structure created"

echo "📄 Creating sample files..."

# Create CLAUDE.md (Project Memory)
cat > MarketFlow/CLAUDE.md << 'EOF'
# FocusFlow Marketing Project Memory

## Product Information

**Product Name**: FocusFlow 2.0
**Category**: Productivity software for remote teams
**Launch**: Q2 2024

### Key Features
1. **AI-Powered Task Prioritization**: AI analyzes your tasks and tells you what to work on next
2. **Team Collaboration Dashboard**: See what your whole team is working on in real-time
3. **50+ App Integrations**: Works with Slack, Notion, GitHub, Google Workspace, and more

### Pricing
- **Free**: 2 users, basic features
- **Starter**: $12/user/month (small teams)
- **Business**: $20/user/month (growing teams)
- **Enterprise**: Custom pricing (large organizations)

### Positioning
"Simple productivity for modern remote teams. Get focused in 10 minutes, not 10 days."

## Brand Voice

### Tone
- **Friendly**: Warm, approachable, not corporate
- **Energetic**: Active voice, momentum, forward-moving
- **Empowering**: You can do this, we're here to help

### What We Sound Like
✅ "Get your team focused and moving forward"
✅ "Save 2 hours every day on what matters most"
✅ "Simple setup, powerful results"

### What We Don't Sound Like
❌ "Leverage our enterprise-grade solution to optimize workflows"
❌ "Synergize your team's productivity paradigm"
❌ "Maximize operational efficiency"

### Values
- **Simplicity**: Easy to use, not overwhelming
- **Focus**: Help people work on what matters
- **Collaboration**: Better together
- **Results**: Outcomes over features

## Target Personas

### Persona 1: Startup Sam
- Age: 28, startup founder
- Company: 10-person tech startup
- Pain: Team scattered across too many tools, losing focus
- Goal: One platform to manage team productivity
- Decision style: Fast, tries new tools quickly
- Budget: Price-conscious but values time savings

### Persona 2: Manager Maria
- Age: 38, team manager
- Company: 150-person mid-market company
- Team: Manages 15 remote employees
- Pain: Can't see what team is working on, too many status meetings
- Goal: Better visibility and accountability
- Decision style: Careful, needs proof and ROI
- Budget: Requires budget approval from leadership

### Persona 3: Solo Steve
- Age: 32, freelance consultant
- Company: Solo, managing 3-5 client projects
- Pain: Juggling too many deadlines, using spreadsheets
- Goal: Stay organized without complexity
- Decision style: Budget-conscious, needs simple tools
- Budget: $20-50/month max

## Key Messaging

### Primary Message
"Get your team focused and moving forward"

### Value Propositions
1. **Save Time**: "Save 2 hours every day on prioritization"
2. **Simple Setup**: "Up and running in 10 minutes"
3. **Works With Your Tools**: "50+ integrations with tools you already use"

### Proof Points
- 5,000+ remote teams using FocusFlow
- 4.8/5 star rating from 2,500+ reviews
- Average user saves 2 hours per day
- 10-minute average setup time

## Competitors

### Main Competitors
1. **Asana**: Powerful but complex, 2+ hour setup, enterprise-focused
2. **Monday.com**: Feature-heavy, overwhelming, expensive
3. **ClickUp**: Too many features, steep learning curve

### Our Competitive Edge
- **Simpler**: 10-minute setup vs 2+ hours
- **AI-Powered**: Unique task prioritization (competitors don't have this)
- **Better for Small Teams**: Not overwhelming, right-sized
- **Modern**: Built for remote-first teams

## Style Guide

### Writing Style
- Use active voice (not passive)
- Keep sentences short and clear
- Use contractions (we're, you'll, it's) for friendly tone
- Write at Grade 8-10 reading level
- Use "you" and "your" (not "users" or "customers")

### Formatting
- Use sentence case for headlines (not Title Case)
- Oxford comma: Yes
- Em dashes: Yes (use for emphasis)
- Emoji usage: Occasional (not excessive, ✅ and ❌ for lists)

### Numbers
- Spell out one through nine
- Use numerals for 10 and above
- Use commas in large numbers (5,000 not 5000)

### Links and CTAs
- Use descriptive link text (not "click here")
- CTA buttons: Action-oriented ("Start Free Trial" not "Submit")
- Always include value in CTA ("Get Started Free" not just "Sign Up")

## Campaign Context

### Current Campaign: FocusFlow 2.0 Launch
- **Timeline**: 6 weeks (April 15 - May 31)
- **Budget**: $50,000
- **Goal**: 500 trial signups
- **Secondary Goal**: $100K pipeline

### Channel Mix
- Paid search: 30% ($15K)
- LinkedIn ads: 24% ($12K)
- Content marketing: 20% ($10K)
- Email campaigns: 10% ($5K)
- Partnerships: 10% ($5K)
- Events/webinars: 6% ($3K)

## Notes for Claude

When creating marketing content for FocusFlow:
- Always maintain our friendly, energetic, empowering brand voice
- Focus on benefits, not just features
- Emphasize simplicity and speed (10-minute setup)
- Use specific numbers and proof points
- Address the right persona's pain points
- Keep it conversational and jargon-free
- Show, don't just tell (use examples)
EOF

echo "✅ Created CLAUDE.md (project memory)"

# Create brand guidelines
cat > MarketFlow/brand/brand-guidelines.md << 'EOF'
# FocusFlow Brand Guidelines

## Brand Voice

### Personality
- Friendly & Approachable
- Energetic & Forward-Moving
- Empowering & Supportive
- Clear & Jargon-Free

### Tone by Channel
- **Website/Landing Pages**: Professional but warm
- **Email**: Conversational and helpful
- **Social Media**: Energetic and engaging
- **Ads**: Clear value, punchy benefits
- **Support**: Patient and solution-focused

## Visual Identity

### Colors
- **Primary**: #4F46E5 (Indigo) - Focus and productivity
- **Secondary**: #10B981 (Green) - Growth and success
- **Accent**: #F59E0B (Amber) - Energy and attention
- **Neutral**: #6B7280 (Gray) - Balance and clarity

### Typography
- **Headlines**: Inter Bold
- **Body**: Inter Regular
- **Accent**: Inter Medium

## Messaging Framework

### Value Proposition
"Simple productivity for modern remote teams"

### Key Messages
1. AI-powered prioritization (unique differentiator)
2. 10-minute setup (vs competitors' 2+ hours)
3. Built for remote teams (not retrofitted)

### Taglines
- Primary: "Get focused and move forward"
- Secondary: "Productivity that just works"
- Campaign: "Work on what matters"

## Content Guidelines

### Do's
✅ Use active voice
✅ Keep sentences short (15-20 words ideal)
✅ Use specific numbers (Save 2 hours, not "save time")
✅ Include social proof
✅ Address pain points directly
✅ Show value immediately

### Don'ts
❌ Use corporate jargon
❌ Passive voice
❌ Vague promises
❌ Complex explanations
❌ Feature dumps
❌ Negative comparisons

## Examples

### Good ✅
"Your team has 100 tasks. FocusFlow's AI tells you which 3 to tackle first."

### Bad ❌
"FocusFlow leverages machine learning algorithms to optimize task allocation across organizational workflows."

## Voice & Tone Examples

### Website Hero
**Good**: "Save 2 hours every day with AI-powered task prioritization"
**Bad**: "Maximize productivity through intelligent task management"

### Email Subject
**Good**: "Your first productivity win is 5 minutes away"
**Bad**: "Introducing FocusFlow 2.0: New Features Available"

### Social Post
**Good**: "We asked 100 remote teams: What kills your productivity? The #1 answer: 'Not knowing what to work on first.' That's why we built FocusFlow."
**Bad**: "FocusFlow helps teams be more productive. Learn more: [link]"

### Ad Copy
**Good**: "Get your team focused in 10 minutes. No training needed."
**Bad**: "Comprehensive productivity solution for modern workplaces."
EOF

echo "✅ Created brand guidelines"

# Create sample campaign brief
cat > MarketFlow/campaigns/2024-q2-focusflow-launch/campaign-brief.md << 'EOF'
# FocusFlow 2.0 Launch Campaign Brief

## Campaign Overview

**Campaign Name**: "Focus Forward Q2 2024"
**Duration**: 6 weeks (April 15 - May 31, 2024)
**Budget**: $50,000
**Owner**: Marketing Team

### Goals
- **Primary**: Generate 500 trial signups
- **Secondary**: Create $100K in sales pipeline
- **Tertiary**: Increase brand awareness by 50%

## Target Audience

### Primary: Startup Sam (40% of budget)
Focus on speed, simplicity, and modern tech

### Secondary: Manager Maria (40% of budget)
Emphasize team visibility, time savings, ROI

### Tertiary: Solo Steve (20% of budget)
Highlight affordability, simplicity, professional image

## Key Messages

1. **AI Prioritization**: "Know what to work on next, automatically"
2. **10-Minute Setup**: "Up and running faster than making coffee"
3. **Built for Remote**: "Finally, productivity software that understands remote work"

## Channel Strategy

### Paid Search ($15K - 30%)
- Target keywords: "team productivity software", "task management app"
- Expected: 200 trials @ $75 CPA

### LinkedIn Ads ($12K - 24%)
- Target: Managers, founders at 10-100 person companies
- Expected: 120 trials @ $100 CPA

### Content Marketing ($10K - 20%)
- 8 blog posts, 2 guides, 1 webinar
- Expected: 100 organic trials

### Email Campaigns ($5K - 10%)
- 5-email launch sequence to existing list (20K contacts)
- Expected: 60 trials from existing leads

### Partnerships ($5K - 10%)
- Co-marketing with Slack, Notion integration partners
- Expected: 15 trials + brand exposure

### Events/Webinars ($3K - 6%)
- 2 webinars: "AI-Powered Productivity" and "Managing Remote Teams"
- Expected: 5 trials + qualified leads

## Creative Concepts

### Concept A: "Focus Forward"
Emphasizes progress and momentum. Visual: forward arrows, progress bars.

### Concept B: "AI Your Way to Productivity"
Highlights AI differentiation. Visual: brain + technology fusion.

### Concept C: "Teamwork Made Simple"
Emphasizes simplicity for teams. Visual: clean, minimal, friendly.

**Selected**: Concept A (Focus Forward) - tested best with target audience

## Success Metrics

- Trial signups: 500 (primary KPI)
- Cost per trial: <$100
- Trial-to-paid conversion: >20%
- Pipeline created: $100K
- Website traffic: +50%
- Brand searches: +30%

## Timeline

- **Week 1 (Apr 15-21)**: Pre-launch teasers, email warmup
- **Week 2 (Apr 22-28)**: LAUNCH - press release, ad blitz, email blast
- **Week 3-4 (Apr 29-May 12)**: Amplification - content, case studies
- **Week 5-6 (May 13-31)**: Final push - limited-time offer, urgency

## Risks & Mitigation

**Risk**: Paid ads underperform
**Mitigation**: Daily monitoring, pivot budget to top performers

**Risk**: Message doesn't resonate
**Mitigation**: A/B test all creative, iterate weekly

**Risk**: Competitive response
**Mitigation**: Battle cards ready, emphasize unique AI feature
EOF

echo "✅ Created sample campaign brief"

# Create sample blog post
cat > MarketFlow/content/blog/2024-04-team-productivity-guide.md << 'EOF'
# How to Improve Team Productivity: 10 Proven Strategies

*Published: April 15, 2024 | Read time: 8 minutes*

Remote team productivity has never been more important. According to a recent Gallup study, productivity challenges cost U.S. businesses $1.8 trillion annually. The good news? Small changes can lead to big improvements.

In this guide, we'll share 10 proven strategies to improve your team's productivity, backed by research and real-world success stories.

## 1. Implement AI-Powered Task Prioritization

The #1 productivity killer? Not knowing what to work on first.

**The Problem**: Your team has 50 tasks. Which 3 should they tackle today?

**The Solution**: Use AI to analyze priorities based on deadlines, dependencies, and business impact.

**Result**: Teams using AI prioritization save an average of 2 hours per day (Harvard Business Review, 2023).

**How to implement**: Tools like FocusFlow use AI to automatically prioritize tasks. Set it up in 10 minutes, save hours every day.

## 2. Reduce Context Switching

Switching between tasks costs 40% of productivity (University of California study).

**The Strategy**:
- Block focus time (2-3 hour chunks)
- Group similar tasks together
- Turn off notifications during deep work
- Use "Do Not Disturb" liberally

**Example**: Sarah's team went from 8 context switches per day to 3. Result: 25% productivity increase.

## 3. Create a Team Visibility Dashboard

What gets measured gets managed.

**Why it matters**: Managers spend 6 hours/week asking "what's everyone working on?"

**The Solution**: Real-time team dashboard showing:
- Who's working on what
- Current priorities
- Blockers and dependencies
- Progress toward goals

**Result**: Reduce status meetings by 50%, save 6+ hours per week.

## 4. Implement the Two-Minute Rule

If a task takes less than 2 minutes, do it immediately.

**Why it works**: Small tasks accumulate and create mental clutter. Clearing them frees cognitive space for deep work.

**Application**: Email responses, quick approvals, simple updates.

**Result**: Reduced task backlog, less mental overhead.

## 5. Use Asynchronous Communication

Not everything needs a meeting.

**Best for async**:
- Status updates
- Information sharing
- Non-urgent questions
- Project documentation

**Best for sync**:
- Brainstorming
- Conflict resolution
- Complex discussions
- Team building

**Result**: 50% reduction in meetings = 10+ hours back per week

## 6. Set Clear Priorities (OKRs)

Teams without clear priorities scatter their efforts.

**Framework**: OKRs (Objectives and Key Results)
- Objective: What you want to achieve
- Key Results: How you'll measure success

**Example**:
- Objective: Improve customer satisfaction
- Key Results:
  - NPS score increases from 7 to 8.5
  - Response time decreases from 24h to 4h
  - Customer retention increases to 95%

## 7. Automate Repetitive Tasks

Your team shouldn't do robot work.

**Common automations**:
- Data entry and transfers
- Report generation
- Email responses
- Meeting scheduling
- Approval workflows

**Tools**: Zapier, Make, FocusFlow integrations

**Result**: Save 10+ hours per week on manual tasks

## 8. Implement "Focus Fridays"

One day per week: no meetings, just deep work.

**Structure**:
- No meetings scheduled
- Async communication only
- Deep work on important projects
- Review and planning at end of day

**Result**: 20% productivity boost on Fridays, 10% improvement across the week

## 9. Regular Team Retrospectives

What's working? What's not? Fix it.

**Framework** (every 2 weeks):
1. What went well?
2. What could be better?
3. What will we change?

**Key**: Must result in action, not just discussion

**Result**: Continuous improvement, team engagement

## 10. Use the Right Tools

Bad tools kill productivity. Great tools amplify it.

**Characteristics of great productivity tools**:
- Fast setup (< 1 hour)
- Intuitive interface (minimal training)
- Integrates with your stack
- Scales with your team
- Actual ROI (measurable time savings)

**Example**: Teams switching to FocusFlow from Asana save 2 hours/day on average due to simpler interface and AI prioritization.

## Measuring Success

Track these metrics:
- Tasks completed per week
- Time to completion
- Team satisfaction scores
- Meeting time (goal: reduce)
- Focus time (goal: increase)

## Taking Action

Start small:
1. **This week**: Implement AI prioritization and reduce one recurring meeting
2. **Next week**: Add team visibility dashboard and try "Focus Friday"
3. **Month 1**: Roll out full strategy

**Expected results**: 20-40% productivity improvement within 30 days

## Conclusion

Team productivity isn't about working longer hours. It's about working smarter: clear priorities, better tools, and removing friction.

Start with one strategy today. Your team will thank you.

---

**Try FocusFlow Free**: See how AI-powered prioritization and team visibility can transform your team's productivity. [Start 14-day free trial →]
EOF

echo "✅ Created sample blog post"

# Create sample email
cat > MarketFlow/content/email/2024-04-welcome-email-v1.md << 'EOF'
# Welcome Email - FocusFlow Trial Signup

**Subject Line Options**:
1. "Your productivity just got easier ✨"
2. "Your first win is 5 minutes away"
3. "Welcome to FocusFlow, [Name]!"

**Test Winner**: Subject line #2 (42% open rate)

---

**Email Body**:

Hi [Name],

Welcome to FocusFlow! You're about to save a lot of time.

**Your first win is 5 minutes away.** Here's how to get started:

**Step 1: Add your first task** (1 minute)
Just type what you're working on. Our AI will help you prioritize.

**Step 2: Connect your tools** (2 minutes)
Link Slack, Notion, or your favorite apps. Everything in one place.

**Step 3: Invite your team** (2 minutes)
Productivity is better together. Add your teammates for real-time collaboration.

[Get Started Now →]

---

**Need help?** Reply to this email. We're here for you.

**Want inspiration?** Check out how other teams are using FocusFlow:
- Sarah's team cut meetings by 50%
- Mike's startup went from chaos to clarity
- Jennifer saves 8 hours per week

Here's to getting focused,

The FocusFlow Team

P.S. Your trial includes everything. No credit card required. Cancel anytime.

---

**Email Stats**:
- Open rate: 42%
- Click rate: 6.8%
- Trial activation: 35%
EOF

echo "✅ Created sample email"

# Create sample social media content
cat > MarketFlow/content/social/2024-04-linkedin-launch-series.md << 'EOF'
# LinkedIn Launch Post Series

## Post 1: Launch Announcement (April 15)

We're excited to announce FocusFlow 2.0! 🎉

After months of listening to remote teams, we built something special:

✅ AI-powered task prioritization (tells you what to work on next)
✅ Team visibility dashboard (see everything in one place)
✅ 50+ integrations (works with your tools)
✅ 10-minute setup (not 10 days)

**The result?** Teams save an average of 2 hours per day.

Ready to get focused? Start your free 14-day trial (no credit card needed):
[link]

#productivity #remotework #ai #teamwork

---

## Post 2: Customer Success Story (April 19)

"We went from 8 tools to 1. Saved 5 hours per week. Game-changer."

- Alex Chen, Founder @ StartupXYZ

Here's how Alex's 12-person team transformed their productivity with FocusFlow:

**Before**:
❌ Using 8 different tools
❌ Lost track of priorities
❌ 3 status meetings per week
❌ Context switching killing flow

**After** (with FocusFlow):
✅ One platform for everything
✅ AI prioritizes tasks automatically
✅ Reduced to 1 quick standup
✅ 5 hours saved per week

**The best part?** Setup took 15 minutes.

Read the full case study: [link]

Want similar results? Try FocusFlow free for 14 days: [link]

#casestudy #startup #productivity

---

## Post 3: Thought Leadership (April 23)

5 signs your team needs better prioritization:

1️⃣ "We're all so busy, but unclear on priorities"
2️⃣ People working on low-impact tasks
3️⃣ Important work keeps getting delayed
4️⃣ Team asks "what should I work on?" daily
5️⃣ Fires are fought reactively, not prevented

Sound familiar?

The problem isn't your team. It's the lack of a system.

Traditional project management tools show you ALL the tasks.
But that's like giving directions by showing someone a map of the entire country.

**What teams need**: Someone (or something) to say "work on THESE 3 things today."

That's what AI-powered prioritization does.

FocusFlow analyzes your tasks and tells everyone what to focus on. The result? Teams save 2 hours per day previously spent deciding what to work on.

Want to see how it works? Free trial: [link]

What's your #1 prioritization challenge? Comment below 👇

#productivity #leadership #remotework #ai

---

## Post 4: Feature Spotlight (April 26)

Feature spotlight: Team Dashboard 📊

The #1 question managers ask: "What's everyone working on?"

Usually answered with:
- Slack messages
- Status meetings
- Spreadsheet check-ins
- Asking individuals one-by-one

**Time spent**: 6+ hours per week

FocusFlow's Team Dashboard shows you:
- Current tasks for each team member
- Real-time progress updates
- Blockers and dependencies
- Project status at a glance

**Time spent**: 30 seconds

**Saved**: 6 hours per week

That's 312 hours per year. What would you do with an extra 39 work days?

See it in action: [link]

#teammanagement #productivity #remotework

---

## Post 5: Limited Offer (April 30)

Launch week special: 20% off annual plans ⚡

We launched FocusFlow 2.0 two weeks ago. The response has been incredible:
- 600+ trial signups
- 4.9/5 average rating
- "Best productivity tool we've used" (Jennifer M., Manager)

To celebrate, we're offering 20% off annual plans through Friday.

**Normally**: $144/year per user
**Launch week**: $115/year per user
**Savings**: $29/user/year

Plus: 30-day money-back guarantee. If you don't save at least 5 hours per week, full refund.

Claim your discount: [link]

Offer ends Friday at midnight. Don't miss out!

#productivity #specialoffer #remotework
EOF

echo "✅ Created social media content"

# Create sample competitive analysis
cat > MarketFlow/research/competitive-analysis.md << 'EOF'
# Competitive Analysis: FocusFlow vs Major Competitors

*Last Updated: April 2024*

## Executive Summary

FocusFlow competes primarily with Asana, Monday.com, and ClickUp in the team productivity space.

**Our Competitive Advantage**:
1. Simpler setup (10 min vs 2+ hours)
2. AI-powered prioritization (unique)
3. Better for small-medium teams (10-50 people)

## Detailed Competitor Analysis

### Asana

**Company Overview**:
- Founded: 2008
- Employees: 1,600+
- Market position: Market leader, enterprise-focused

**Product**:
- Core: Project and task management
- Strengths: Robust features, integrations, brand recognition
- Weaknesses: Complex, steep learning curve, expensive at scale

**Pricing**:
- Basic: Free (limited)
- Premium: $10.99/user/month
- Business: $24.99/user/month

**Target Market**: Mid-market to enterprise (50+ employees)

**Marketing Strategy**:
- Content-heavy (20+ blog posts/month)
- SEO focus (ranks for 10K+ keywords)
- Enterprise sales team
- Webinars and events

**Our Positioning Against Asana**:
- "Asana is powerful but overwhelming. FocusFlow is powerful AND simple."
- "10-minute setup vs 2+ hour Asana setup"
- "Built for teams like yours (10-50 people), not enterprises"

### Monday.com

**Company Overview**:
- Founded: 2012
- Employees: 1,400+
- Market position: Fast-growing, flexible platform

**Product**:
- Core: Work operating system (highly customizable)
- Strengths: Visual, customizable, good marketing
- Weaknesses: Complexity, overwhelming features, expensive

**Pricing**:
- Individual: $0 (very limited)
- Basic: $8/user/month
- Standard: $10/user/month
- Pro: $16/user/month

**Target Market**: Growing companies (20-200 employees)

**Marketing Strategy**:
- Heavy advertising (TV, digital, sponsorships)
- Colorful, energetic brand
- Strong social media presence
- Industry-specific campaigns

**Our Positioning Against Monday.com**:
- "Monday.com offers 1,000 features. FocusFlow offers the 10 that matter."
- "No overwhelming customization. Works great out of the box."
- "Better price for small teams"

### ClickUp

**Company Overview**:
- Founded: 2017
- Employees: 800+
- Market position: Fast-growing, feature-rich

**Product**:
- Core: "All-in-one" productivity platform
- Strengths: Tons of features, affordable
- Weaknesses: Too many features, steep learning curve, overwhelming

**Pricing**:
- Free: Unlimited (limited features)
- Unlimited: $5/user/month
- Business: $12/user/month
- Business Plus: $19/user/month

**Target Market**: Power users, tech-savvy teams

**Marketing Strategy**:
- "Replace all tools with ClickUp" positioning
- Feature comparison focus
- Community-driven
- Bottom-up adoption

**Our Positioning Against ClickUp**:
- "ClickUp tries to do everything. FocusFlow does one thing brilliantly: focus."
- "You don't need 1,000 features. You need clarity."
- "Simple enough to use on day one"

## Feature Comparison Matrix

| Feature | FocusFlow | Asana | Monday.com | ClickUp |
|---------|-----------|-------|------------|---------|
| AI Task Prioritization | ✅ | ❌ | ❌ | ❌ |
| Team Dashboard | ✅ | ✅ | ✅ | ✅ |
| Integrations | 50+ | 100+ | 200+ | 1000+ |
| Setup Time | 10 min | 2+ hours | 2-3 hours | 1-2 hours |
| Learning Curve | Low | Medium | High | High |
| Mobile App | ✅ | ✅ | ✅ | ✅ |
| Custom Fields | Limited | ✅ | ✅ | ✅ |
| Automation | ✅ Basic | ✅ Advanced | ✅ Advanced | ✅ Advanced |
| Price (5 users) | $60/mo | $55/mo | $80/mo | $60/mo |

## Market Positioning Map

**Simplicity** (Y-axis) vs **Features** (X-axis):

- FocusFlow: High simplicity, Medium features (SWEET SPOT)
- Asana: Medium simplicity, High features
- Monday.com: Low simplicity, High features
- ClickUp: Low simplicity, Very high features

## Win/Loss Analysis (Last 50 Deals)

**Why We Win** (30 wins):
1. Faster setup (60% of wins)
2. Simpler interface (53%)
3. AI prioritization unique feature (43%)
4. Better for small teams (40%)
5. More affordable (27%)

**Why We Lose** (20 losses):
1. Need more integrations (60% of losses)
2. Brand recognition (Asana safer choice) (40%)
3. More enterprise features needed (35%)
4. Already using competitor (30%)

## Strategic Recommendations

1. **Double down on simplicity**: This is our biggest differentiator
2. **Emphasize AI feature**: Unique in market, high value
3. **Add top 10 requested integrations**: Close the gap
4. **Build migration tools**: Make switching easy
5. **Create comparison pages**: "FocusFlow vs [Competitor]" SEO
6. **Case studies from switchers**: "Why we left Asana for FocusFlow"

## Competitive Battle Cards

[See separate battle-cards.md for detailed sales enablement]
EOF

echo "✅ Created competitive analysis"

# Create README for MarketFlow project
cat > MarketFlow/README.md << 'EOF'
# MarketFlow - FocusFlow 2.0 Launch Campaign

This is a sample marketing project for the **Claude Code for Marketers** course.

## Project Overview

**Product**: FocusFlow 2.0 - Productivity software for remote teams
**Campaign**: Q2 2024 Launch ("Focus Forward")
**Duration**: 6 weeks (April 15 - May 31, 2024)
**Budget**: $50,000
**Goal**: 500 trial signups

## Project Structure

```
MarketFlow/
├── CLAUDE.md                      # Project memory (brand, product, personas)
├── campaigns/                     # Campaign planning and briefs
│   └── 2024-q2-focusflow-launch/
│       └── campaign-brief.md
├── content/                       # All content assets
│   ├── blog/                      # Blog posts
│   ├── email/                     # Email campaigns
│   ├── social/                    # Social media content
│   └── ads/                       # Ad copy and creative
├── brand/                         # Brand guidelines and assets
│   └── brand-guidelines.md
├── research/                      # Market and competitor research
│   └── competitive-analysis.md
└── analytics/                     # Performance reports and data
```

## Getting Started

1. **Read CLAUDE.md first** - This contains all the context about FocusFlow, brand voice, personas, and messaging.

2. **Review the campaign brief** - Understand the Q2 launch campaign goals and strategy.

3. **Explore sample content** - See examples of blog posts, emails, and social media content.

4. **Start creating!** - Use this structure for your own marketing projects.

## Using with Claude Code

This project is designed to work with Claude Code. The `CLAUDE.md` file provides persistent context, so Claude always knows:
- Product details and positioning
- Brand voice and guidelines
- Target personas
- Key messaging
- Competitive landscape

Just ask Claude to create marketing content, and it will automatically use this context!

## Target Personas

### Startup Sam
28-year-old founder, fast decision maker, values simplicity and speed

### Manager Maria
38-year-old team manager, careful evaluator, needs ROI and proof

### Solo Steve
32-year-old freelancer, budget-conscious, needs simple tools

[See CLAUDE.md for detailed persona profiles]

## Course Information

This project is part of the **Claude Code for Marketers** course.

**Course modules**:
- Module 0: Getting Started
- Module 1: Core Concepts (file operations, agents, project memory)
- Module 2: Advanced Applications (campaigns, content, analytics)

Learn more: [Claude Code for Marketers Course](/cc4mkt/)

---

**Need help?** Refer to the course lessons or ask Claude!
EOF

echo "✅ Created MarketFlow README"

echo ""
echo "✨ MarketFlow setup complete! ✨"
echo ""
echo "📁 Your project structure:"
echo "   MarketFlow/"
echo "   ├── CLAUDE.md (project memory)"
echo "   ├── campaigns/ (campaign briefs)"
echo "   ├── content/ (blog, email, social, ads)"
echo "   ├── brand/ (brand guidelines)"
echo "   ├── research/ (competitive analysis)"
echo "   └── analytics/ (performance reports)"
echo ""
echo "🚀 Next steps:"
echo "   1. cd MarketFlow"
echo "   2. Read CLAUDE.md to understand the project"
echo "   3. Start creating marketing content!"
echo ""
echo "💡 Tip: Use the /start-1-1 command to begin the interactive course"
echo ""
echo "Happy marketing! 🎯"
