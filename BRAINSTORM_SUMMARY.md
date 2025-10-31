# CV Content Brainstorm Summary

**Date:** November 1, 2025
**Status:** Planning Phase Complete ✅

---

## 🎯 What We Found

### Your Content is RICH but SCATTERED:

**The Good News:**
- You have 245+ documented achievements
- 50+ published technical/design articles
- 20+ hackathon participations with multiple wins ($25k+ in prizes)
- Voice transcripts capturing recent projects in detail
- Professional LinkedIn/portfolio exports
- Media features from reputable sources

**The Challenge:**
- Content lives in multiple formats (CSV, JSON, PDF, TXT)
- Voice notes are stream-of-consciousness (authentic but needs structuring)
- No single source of truth
- Hard to update consistently

---

## 💡 The Strategy: Markdown-First CV System

### Why This Approach Works for You:

1. **You're already using VS Code + Markdown** (from your voice notes)
2. **Copilot-friendly** - Your "LLM-friendly blog folio" philosophy
3. **Version controlled** - Git tracks every change
4. **Multi-format export** - One source → PDF resume, HTML portfolio, JSON API
5. **Update via voice** - Whisper transcription → quick markdown edits

---

## 📁 Proposed Structure (11 Main Categories)

```
00-PROFILE          → Bio, contact, elevator pitch
01-EDUCATION        → Minerva, STEC, certifications
02-EXPERIENCE       → Professional jobs, TA roles, freelance
03-FEATURED-PROJECTS → Top 8-10 showcase projects
04-HACKATHONS       → Wins, participation, stats
05-TECHNICAL-SKILLS → Languages, frameworks, hardware, AI/ML
06-WRITING-PORTFOLIO → 50+ Medium articles organized by theme
07-AWARDS-RECOGNITION → Scholarships, competitions, media features
08-MINOR-PROJECTS   → CLI tools, automation, experiments
09-MEMBERSHIPS      → YC, Hanwha AI, NTU Makers, communities
10-INTERESTS        → Discover Shortcuts, voice UIs, biosensors
11-META             → Update log, sources, extraction scripts
```

---

## 🔥 Top Projects to Feature (from your voice notes)

### Must-Have Spotlight Projects:

1. **Somach/So-Match** - Biosensors to video game input (current capstone)
   - 5-phase project: Phone IMU → Watch ML → EMG muscle → EEG brain → Dark Souls replication
   - Combines hardware, ML, and gaming

2. **OMI Uber** - Voice-activated Uber booking ($$$)
   - End-to-end deployed app
   - Playwright automation, Docker, webhook
   - Collaboration with OMI founder

3. **Viral Video Bias Lab** - HackMIT semi-finalist
   - FVP mentioned multiple times

4. **Unnorminator** - Coinbase hackathon winner
   - "Crypto for grandmas" - accessibility angle
   - Google Multimodal Live API
   - Won "Most Hyperbolic" + $1k from Hyperbolic Labs

5. **Padayon Ko** - Disaster relief platform
   - Already documented in your projects folder
   - Social impact focus

6. **Stat: Your Virtual Clinic** - National Science Fair Grand Champion
   - Grade 11, first major win
   - Health tech, pre-COVID prescience

7. **Dell Chaos Engineering Internship** - TUI for chaos mesh
   - Professional experience
   - Distributed systems, Kubernetes

8. **OMI Wrap** - $25k prize winner
   - Spotify Wrapped for AI necklace wearers
   - Your biggest hackathon win

---

## 🎨 Unique Strengths to Emphasize

### What Makes You Stand Out:

1. **Hardware + Software + AI Trifecta**
   - Arduino/ESP32 + Full Stack + LLM APIs
   - Rare combination

2. **Voice-First Pioneer**
   - Multiple voice interface projects
   - "Supporting those lives without a voice" (stray animals)
   - Ahead of mainstream adoption

3. **Biosensors/Neurotechnology**
   - EMG, EEG, IMU sensors
   - Consumer brain-computer interfaces
   - Future-focused

4. **Design + Engineering**
   - UX case studies + actual implementation
   - Not just prototypes - deployed apps

5. **Prolific Writer**
   - 50+ technical articles
   - Design thinking + tutorials
   - Strong communication skills

6. **Teaching While Learning**
   - Minerva TA for Software Engineering
   - "Socratic feedback with first principles"
   - Shows mastery + leadership

---

## 🚀 Immediate Next Steps (Priority Order)

### Week 1: Foundation

**Day 1-2: Create Base Structure**
```bash
cd /Users/cvk/Downloads/carl/md-cv
mkdir -p {00..11}-{PROFILE,EDUCATION,EXPERIENCE,FEATURED-PROJECTS,HACKATHONS,TECHNICAL-SKILLS,WRITING-PORTFOLIO,AWARDS-RECOGNITION,MINOR-PROJECTS,MEMBERSHIPS-COMMUNITY,INTERESTS-PHILOSOPHY,META}
```

**Day 3-4: Quick Wins**
- [ ] Copy Generation Google Scholarship PDF content → `07-AWARDS-RECOGNITION/generation-google-scholarship.md`
- [ ] Extract your bio from Minerva feature article → `00-PROFILE/bio.md`
- [ ] List top 8 projects from voice transcripts → `03-FEATURED-PROJECTS/` (use template)

**Day 5-7: Core CV**
- [ ] Parse LinkedIn PDFs for work experience → `02-EXPERIENCE/professional/`
- [ ] Minerva education details → `01-EDUCATION/minerva-university.md`
- [ ] Technical skills inventory → `05-TECHNICAL-SKILLS/`

### Week 2: Automation

**Build Extraction Tools:**
1. `extract-achievements-csv.py` - Parse Notion CSV → categorized markdown
2. `synthesize-voice-transcripts.py` - JSON → structured project descriptions
3. `medium-to-markdown.py` - PDF articles → markdown with metadata

**Bonus:**
- Set up git repo with proper .gitignore
- Create GitHub Actions to auto-generate PDF resume on push

### Week 3: Deep Content

- [ ] Process all 245 Achievement entries from CSV
- [ ] Categorize 50+ Medium articles by theme
- [ ] Write detailed descriptions for top 8 projects
- [ ] Compile hackathon stats and outcomes

### Week 4: Polish & Deploy

- [ ] Generate multiple CV variants (MIT, tech company, design role)
- [ ] Create portfolio website from markdown
- [ ] Set up llm.txt for AI-friendly access
- [ ] Establish update workflow (voice → transcribe → markdown)

---

## 🤖 Automation Scripts to Build

### 1. **Voice-to-CV Pipeline**
```python
# workflow:
# 1. Record voice note on phone
# 2. Whisper transcription
# 3. AI parsing to identify project/achievement
# 4. Auto-generate markdown in correct category
# 5. Git commit with AI-generated message
```

### 2. **Achievement CSV Parser**
```python
# Input: Achievements CSV from Notion
# Output: Categorized markdown files
# Features:
#   - Group by category (hackathon, academic, etc.)
#   - Sort by date
#   - Generate timeline visualizations
```

### 3. **Medium Article Extractor**
```python
# Input: 50+ PDF files from Medium
# Output: Markdown with frontmatter
# Features:
#   - Extract title, date, tags from filename
#   - Convert PDF text to markdown
#   - Preserve links and formatting
#   - Generate article index
```

### 4. **Portfolio Static Site Generator**
```python
# Input: All markdown files
# Output: Beautiful HTML portfolio
# Features:
#   - Filter by category/tag
#   - Timeline view
#   - Project showcase cards
#   - Responsive design
#   - llm.txt generation
```

---

## 📋 Content Templates

### Project Entry (save as template)

```markdown
# [Project Name]

**Timeline:** [Month Year] - [Month Year or Ongoing]
**Role:** [Your role]
**Context:** [Hackathon/Class/Personal/Work]
**Tags:** #tag1 #tag2 #tag3

## The Story

[2-3 sentences: What is this? Why did you build it?]

## The Challenge

[What problem were you solving?]

## My Approach

[How did you solve it? What was your process?]

## Technical Details

- **Languages:**
- **Frameworks:**
- **Hardware:** (if applicable)
- **APIs/Services:**

## Outcome & Impact

- [Metric: users, prize, recognition]
- [What happened after?]

## Key Learnings

- [Technical learning]
- [Process/soft skill learning]

## Links

- 🔗 Demo/Live:
- 💻 GitHub:
- 📝 Blog Post:
- 🎥 Video:

## Media

![Screenshot or demo gif]
```

---

## 🎯 CV Variants to Generate

Each variant highlights different aspects of your work:

### 1. **MIT Media Lab CV** (Academic/Research Focus)
- Emphasize: Capstone project, biosensors, research interests
- Include: Publications, teaching experience
- Length: 3-4 pages

### 2. **Tech Company Resume** (Engineering Focus)
- Emphasize: Hackathon wins, deployed apps, technical skills
- Include: Dell internship, full-stack projects
- Length: 2 pages max

### 3. **Design Role Resume** (UX/Product Focus)
- Emphasize: Case studies, Symph experience, design thinking
- Include: Portfolio link, visual projects
- Length: 2 pages

### 4. **Startup/Founder CV** (Entrepreneurial Focus)
- Emphasize: YC AI School, end-to-end products, hackathon wins
- Include: Commissions, freelance work
- Length: 2 pages

---

## 💎 Hidden Gems from Your Content

Things I noticed that you might undersell:

1. **"Member Zero" at Hanwha AI Center** - You were literally first. That's special.

2. **Times Square Billboard Appearance** - Not everyone can say that.

3. **White Polo Filter used by thousands** - Viral moment with concrete metrics.

4. **$25k+ in hackathon winnings** - You're not just participating, you're winning.

5. **Switched from Notion to Markdown/VS Code** - Shows technical sophistication.

6. **Teaching while being taught** - TA while still an undergrad shows trust from faculty.

7. **Featured in Cebu Daily News at 16** - Early recognition for WRO/mapping.

8. **50+ published articles** - That's a BOOK worth of content.

9. **5-star rated Chrome extension with 50 downloads** - Users love your work.

10. **"Discover Shortcuts" philosophy** - This is YOUR brand. Own it.

---

## 🔮 Future Enhancements

Once base CV is solid:

1. **Interactive Timeline** - Visual journey through projects
2. **Skills Graph** - Show technology evolution over time
3. **Impact Dashboard** - Users reached, prizes won, articles read
4. **Related Projects Network** - Show how projects connect
5. **Voice Navigation** - "Tell me about Carl's work in biosensors"
6. **AI Chat Interface** - "What hackathons has Carl won?"
7. **Auto-LinkedIn Sync** - Keep profiles in sync
8. **Weekly Digest Email** - "Here's what Carl built this week"

---

## 📊 By The Numbers

**Your Current Stats:**

- 📝 245+ documented achievements
- 📰 50+ published articles
- 🏆 20+ hackathons (8+ wins)
- 💰 $25k+ in prizes
- 👥 1000s+ users (filters, extensions)
- 🎓 4 years at Minerva (graduating 2026)
- 💼 5+ professional experiences
- 🎤 3+ media features
- ⭐ Multiple national/international awards

**Potential CV Outputs:**

- Standard Resume: 2 pages
- Academic CV: 8-10 pages
- Portfolio Site: 30+ project pages
- Complete Archive: 200+ entries
- Writing Portfolio: 50+ articles

---

## ✅ Success Criteria

You'll know this system works when:

1. **Updating is fast** - Voice note → CV entry in <5 min
2. **Multiple formats** - One edit updates resume, portfolio, LinkedIn
3. **AI-friendly** - LLMs can accurately answer "What has Carl done?"
4. **Showcase-ready** - Can generate tailored CV for any opportunity in <10 min
5. **Nothing lost** - Every achievement, no matter how small, is captured
6. **Story-driven** - Not just a list, but a narrative of growth

---

## 🤔 Open Questions for You

Before we proceed, consider:

1. **Primary Use Case:** Is this for MIT Media Lab app, job hunting, or general portfolio?

2. **Public vs Private:** What should be public (GitHub, portfolio site) vs private (full archive)?

3. **Update Frequency:** Daily quick captures? Weekly reviews? Monthly deep updates?

4. **Visual Style:** Clean minimal? Pixel aesthetic from your Webflow days? Interactive?

5. **Content Priority:** Focus on recent work (2024-2025) or comprehensive history?

6. **Automation Level:** How much do you want automated vs manual curation?

---

## 🎬 Ready to Start?

**The beautiful thing:** You don't need to process everything at once.

**Start here:**
1. Create the 11-folder structure
2. Extract your top 8 projects from voice notes
3. Build one project markdown file using the template
4. Generate a 2-page resume from that

**Then iterate:**
- Add one achievement per day
- Process one Medium article per week
- Build automation tools as you need them

**Remember:** Your "Discover Shortcuts" philosophy applies here too.
Don't manually process 245 achievements. Build the tools. Let AI help.
Make it sustainable.

---

*Next: Shall we start with creating the folder structure and extracting your top projects?*
