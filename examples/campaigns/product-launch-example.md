# Example Campaign: SaaS Product Launch

This is a complete example of using Marketing Tools Marketplace plugins to plan and execute a product launch campaign.

## Scenario

**Company:** FocusFlow (productivity SaaS)
**Product:** FocusFlow 2.0 with new team collaboration features
**Timeline:** 6 weeks
**Budget:** $50,000
**Goal:** 500 trial sign-ups

## Step-by-Step Workflow

### Step 1: Plan the Campaign

```bash
/compounding-marketing:plan "FocusFlow 2.0 Launch" \
  --budget 50000 \
  --duration "6 weeks"
```

**Claude will ask you:**
- What is FocusFlow 2.0?
- Who is it for?
- What's new in 2.0?
- What's the main benefit?
- What should people do?

**Your answers:**
- FocusFlow 2.0 is an upgraded productivity app with team collaboration features
- For remote team managers (30-45 years old, managing 5-15 people)
- New features: Team dashboards, async check-ins, focus time blocking for teams
- Main benefit: 2x team productivity without overtime or burnout
- Action: Start 14-day free trial

**Output:** Comprehensive campaign brief in `campaigns/focusflow-2.0-launch/brief.md`

---

### Step 2: Generate Campaign Content

```bash
/content-factory:generate campaigns/focusflow-2.0-launch/brief.md \
  --formats "blog,email,social,video" \
  --quantity "5 blogs, 8 emails, 40 social posts, 3 video scripts"
```

**What gets created:**

**5 Blog Posts:**
1. Introducing FocusFlow 2.0: Team Productivity Reimagined
2. The 3 Features That Will Transform Your Remote Team
3. How Company X Increased Team Output by 200% with FocusFlow 2.0
4. Migration Guide: Upgrading to FocusFlow 2.0
5. FocusFlow 2.0 vs. Competitors: An Honest Comparison

**8 Email Sequence:**
1. Day 0: Launch announcement
2. Day 1: Feature deep dive #1 (Team dashboards)
3. Day 3: Feature deep dive #2 (Async check-ins)
4. Day 5: Feature deep dive #3 (Focus time blocking)
5. Day 7: Customer success story
6. Day 10: Limited-time offer (20% off annual plans)
7. Day 14: Social proof (100+ teams already upgraded)
8. Day 17: Final reminder (offer ends soon)

**40 Social Media Posts:**
- 15 LinkedIn posts (thought leadership, feature announcements, customer stories)
- 15 Twitter posts (quick tips, feature highlights, engagement)
- 10 Instagram posts (visual feature showcases, team success stories)

**3 Video Scripts:**
1. 90-second product overview for YouTube/social
2. 3-minute feature walkthrough for YouTube
3. 60-second customer testimonial for social

**Output structure:**
```
content/focusflow-2.0-launch/
├── README.md
├── calendar.md
├── blogs/
│   ├── 01-introducing-focusflow-2.0.md
│   ├── 02-3-features-transform-team.md
│   ├── 03-case-study-200-percent-increase.md
│   ├── 04-migration-guide.md
│   └── 05-focusflow-vs-competitors.md
├── emails/
│   ├── sequence-overview.md
│   ├── 01-launch-announcement.md
│   ├── 02-feature-team-dashboards.md
│   ├── 03-feature-async-checkins.md
│   ├── 04-feature-focus-blocking.md
│   ├── 05-customer-success-story.md
│   ├── 06-limited-time-offer.md
│   ├── 07-social-proof.md
│   └── 08-final-reminder.md
├── social/
│   ├── linkedin/
│   │   ├── 01-launch-announcement.md
│   │   ├── 02-thought-leadership.md
│   │   └── ...
│   ├── twitter/
│   │   ├── 01-thread-new-features.md
│   │   ├── 02-quick-tip.md
│   │   └── ...
│   └── instagram/
│       └── ...
└── video/
    ├── 01-product-overview-90sec.md
    ├── 02-feature-walkthrough-3min.md
    └── 03-testimonial-60sec.md
```

---

### Step 3: Repurpose Top Content

After Week 2, you identify that the case study blog post performed exceptionally well:

```bash
/content-factory:repurpose content/blogs/case-study-200-percent-increase.md \
  --into "social,email,video-script" \
  --platforms "linkedin,twitter,instagram"
```

**What gets created:**
- LinkedIn post highlighting key stats
- Twitter thread breaking down the case study
- Instagram carousel copy (5 slides)
- Email newsletter featuring the story
- 60-second video script summarizing the case

**Result:** 6 additional pieces from your best content

---

### Step 4: Create Content Calendar

```bash
/content-factory:schedule \
  --period "6 weeks" \
  --campaigns "focusflow-2.0-launch" \
  --frequency "2 blogs/week, 1 email/week, 5 social/day" \
  --generate-content false
```

**Output:** Publishing calendar coordinating all content:
- Week 1: Build anticipation
- Week 2: Launch week (heavy publishing)
- Week 3-4: Feature education
- Week 5: Social proof and testimonials
- Week 6: Final push with special offer

---

### Step 5: Review Campaign (Coming Soon)

Once available:

```bash
/compounding-marketing:review campaigns/focusflow-2.0-launch/
```

**Would provide:**
- Brand voice consistency check
- SEO optimization recommendations
- Conversion optimization tips
- Feedback from persona agents (Sam, Maria, Steve)
- Overall quality score

---

## Results

### Content Created
- 5 blog posts (~10,000 words total)
- 8 email campaigns
- 40+ social media posts
- 3 video scripts
- 1 comprehensive content calendar

### Time Invested
- **First campaign (no templates):** ~40 hours
- **With Marketing Tools plugins:** ~8 hours
- **Time saved:** 32 hours (80% reduction)

### Campaign Performance
- **Week 1:** 50 trial sign-ups
- **Week 2:** 120 trial sign-ups
- **Week 3:** 90 trial sign-ups
- **Week 4:** 85 trial sign-ups
- **Week 5:** 80 trial sign-ups
- **Week 6:** 95 trial sign-ups
- **Total:** 520 trial sign-ups (104% of goal ✅)

---

## Learnings & Compounding

### What to Reuse for Next Campaign

**Templates created:**
- Campaign brief template (adapt for any product launch)
- Blog post structures (feature announcement, case study, comparison)
- Email sequence framework (8-email launch sequence)
- Social post templates (various types)

**Patterns learned:**
- Case studies perform 3x better than feature announcements
- Twitter threads drive more engagement than standalone tweets
- LinkedIn thought leadership posts generate highest quality leads
- Email #5 (customer story) had highest open rate (34%)

**Next Campaign Prediction:**
- Using these templates and patterns: ~15 hours (instead of 40)
- 62% time reduction
- Higher quality (knowing what works)

---

## File References

All files from this campaign are available in:
```
examples/campaigns/focusflow-2.0-launch/
├── brief.md (campaign planning output)
├── content/ (all generated content)
└── calendar.md (publishing schedule)
```

---

## Try It Yourself

Use this example as a template:

1. Replace "FocusFlow 2.0" with your product
2. Update audience and messaging
3. Adjust budget and timeline
4. Run the same commands
5. Adapt the output to your needs

**Your first campaign starts the compounding process!** 🚀
