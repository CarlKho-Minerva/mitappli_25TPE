# CV Organization Plan for Carl Kho
*Generated: November 1, 2025*

---

## 📊 CONTENT INVENTORY ANALYSIS

### Raw Content Sources Identified:

#### 1. **Notion Achievement Tracker** (`/raw/notion/cvk_achi_tracker/`)
- **Achievements CSV**: 245 entries spanning Grade 7 to present
- **Featured Projects**: 8 major projects tracked
- **Categories**: Hackathons, Academic, Code, Design, Art, Music, Voice, Gaming
- **Timeline Data**: Structured by date, category, results, tags, year level

#### 2. **Voice Transcripts** (JSON files)
- `achievements cont (2025-10-30 14.47.17).json` - 498 lines
- `notion achi (2025-10-30 16.20.57).json` - 914 lines
- Raw stream-of-consciousness project descriptions

#### 3. **Text Notes** (Oct 30 series)
- Multiple timestamped dumps with project lists
- Chronological project tracking
- Raw thoughts on experiences, hackathons, failures

#### 4. **Medium Articles** (80+ PDFs)
- Published: ~50 articles (2021-2025)
- Drafts: ~30 unpublished pieces
- Topics: Design, Tech, Essays, Case Studies, Tutorials
- Date range: 2021-03 to 2025-10

#### 5. **Feature Articles** (`/raw/features/`)
- Minerva University feature
- Cebu Daily News feature
- #HumansOfSymph feature

#### 6. **LinkedIn Data** (`/raw/linkedin/`)
- Profile PDF
- Projects export
- Honors/Awards export

#### 7. **Facebook/Social** (`/raw/facebook/`)
- Screenshots of features/posts
- PDF exports of social features

#### 8. **Supporting Documents**
- Generation Google Scholarship PDF
- Various screenshots and images

---

## 🎯 PROPOSED CV STRUCTURE

### **Master CV Categories:**

```
├── 00-PROFILE/
│   ├── bio.md
│   ├── contact.md
│   ├── quick-facts.md
│   └── elevator-pitch.md
│
├── 01-EDUCATION/
│   ├── minerva-university.md
│   ├── stec-high-school.md
│   └── certifications.md
│
├── 02-EXPERIENCE/
│   ├── professional/
│   │   ├── dell-chaos-engineer-intern.md
│   │   ├── hyperbolic-labs-contractor.md
│   │   ├── symph-product-designer.md
│   │   └── ai-advocate-aipilipinas.md
│   ├── teaching/
│   │   ├── minerva-ta-software-engineering.md
│   │   └── ntu-makers-club-workshops.md
│   └── freelance/
│       ├── commissions-list.md
│       └── consulting-work.md
│
├── 03-FEATURED-PROJECTS/
│   ├── 01-padayon-ko.md              # Disaster relief platform
│   ├── 02-somach-biosensor.md        # Capstone: biosensors to video games
│   ├── 03-viral-video-bias-lab.md    # HackMIT project
│   ├── 04-omi-uber.md                # Voice-activated Uber
│   ├── 05-unnorminator.md            # Crypto for grandmas (Coinbase)
│   ├── 06-stat-virtual-clinic.md     # National Science Fair Grand Champion
│   ├── 07-tabangay-ta.md             # Disaster response platform
│   └── 08-plutus-money-game.md       # Financial literacy game
│
├── 04-HACKATHONS/
│   ├── wins/
│   │   ├── hackmit-2024.md
│   │   ├── coinbase-onchain-2025.md
│   │   ├── omi-wrap-25k-prize.md
│   │   └── hyperbolic-labs-1k.md
│   ├── participation/
│   │   ├── webflow-creative-challenge.md
│   │   ├── google-solutions-challenge.md
│   │   └── microsoft-azure-hackathon.md
│   └── stats-summary.md
│
├── 05-TECHNICAL-SKILLS/
│   ├── programming-languages.md      # Python, JavaScript, C++, Kotlin
│   ├── frameworks-tools.md           # React, Flask, Arduino, ESP32
│   ├── ai-ml.md                      # TensorFlow, Gemini API, Claude, GPT
│   ├── hardware-electronics.md       # EMG, EEG, biosensors, IoT
│   ├── design-tools.md               # Figma, Webflow, Adobe Suite
│   └── cloud-devops.md               # GCP, Docker, Kubernetes
│
├── 06-WRITING-PORTFOLIO/
│   ├── published/
│   │   ├── technical/
│   │   │   ├── how-to-prompt-like-google-engineers.md
│   │   │   ├── whisper-api-transcription.md
│   │   │   └── python-module-virtualenv.md
│   │   ├── design-case-studies/
│   │   │   ├── sugar-slay-design.md
│   │   │   ├── tabangay-ta-design.md
│   │   │   ├── airport-wayfinding.md
│   │   │   └── plutus-money-game.md
│   │   ├── essays/
│   │   │   ├── art-of-trying.md
│   │   │   ├── pinning-blame-on-social-media.md
│   │   │   └── manners-matter-more-than-intelligence.md
│   │   └── research/
│   │       ├── market-failure-us-health-insurance.md
│   │       └── mcdonalds-end-of-charity.md
│   ├── drafts/
│   │   └── [categorize later]
│   └── writing-stats.md
│
├── 07-AWARDS-RECOGNITION/
│   ├── academic/
│   │   ├── generation-google-scholarship.md
│   │   ├── minerva-high-honors.md
│   │   └── national-science-fair-champion.md
│   ├── competitions/
│   │   ├── world-robotics-olympiad.md
│   │   └── financial-literacy-challenge.md
│   ├── media-features/
│   │   ├── minerva-voices-interview.md
│   │   ├── cebu-daily-news-feature.md
│   │   └── humans-of-symph.md
│   └── viral-moments/
│       ├── times-square-billboard.md
│       └── white-polo-filter-thousands-users.md
│
├── 08-MINOR-PROJECTS/
│   ├── cli-tools/
│   │   ├── cli-boom-sound-effects.md
│   │   └── timezone-converter-chrome-extension.md
│   ├── automation/
│   │   ├── linkedin-tracker.md
│   │   └── pomodoro-keystroke-logger.md
│   ├── mobile-apps/
│   │   ├── whisper-android-app.md
│   │   ├── gps-emulator-android.md
│   │   └── watch-silksong-imu-input.md
│   └── experiments/
│       ├── connect4-minimax-ai.md
│       ├── verbal-ledger-budgeting.md
│       └── percy-jacksonify-storytelling.md
│
├── 09-MEMBERSHIPS-COMMUNITY/
│   ├── yc-ai-startup-school-2025.md
│   ├── hanwha-ai-center-member-zero.md
│   ├── ntu-makers-club-taiwan.md
│   ├── minerva-forum-timezone-extension.md
│   └── google-developer-communities.md
│
├── 10-INTERESTS-PHILOSOPHY/
│   ├── discover-shortcuts-persona.md
│   ├── voice-interfaces-passion.md
│   ├── biosensors-neurotech-interest.md
│   ├── llm-friendly-workflows.md
│   └── supporting-stray-animals-ph.md
│
└── 11-META/
    ├── cv-update-log.md
    ├── content-sources.md
    ├── version-history.md
    └── extraction-scripts/
```

---

## 🔄 UPDATEABILITY SYSTEM

### **Version Control Strategy:**

1. **Master CV in Markdown**
   - Single source of truth
   - Git-tracked for version history
   - Easy to diff and review changes

2. **Automated Exports:**
   ```
   markdown → PDF (resume)
   markdown → HTML (portfolio site)
   markdown → JSON (API for dynamic portfolio)
   markdown → LaTeX (academic CV)
   ```

3. **Update Workflow:**
   ```
   New Achievement → Voice Note/Quick Capture
                  ↓
         Transcribe & Categorize
                  ↓
         Add to relevant .md file
                  ↓
         Update metadata (dates, tags)
                  ↓
         Regenerate exports
   ```

---

## 📝 CONTENT EXTRACTION PRIORITIES

### **Phase 1: Core Professional CV (Priority 1)**
*Goal: Ready for MIT Media Lab & job applications*

- [ ] Extract from Achievements CSV: professional experiences, awards, education
- [ ] Parse LinkedIn PDFs: standardize job descriptions
- [ ] Synthesize voice transcripts: recent projects (2024-2025)
- [ ] Feature articles: pull quotes and recognition

**Output:**
- Standard 2-page CV
- Extended academic CV
- Portfolio-ready project descriptions

---

### **Phase 2: Technical Portfolio (Priority 2)**
*Goal: Showcase hands-on work for tech roles*

- [ ] Featured Projects: detailed write-ups from transcripts
- [ ] Medium published articles: technical tutorials & case studies
- [ ] GitHub projects: descriptions from voice notes
- [ ] Hackathon wins: consolidate from Achievements CSV

**Output:**
- Project showcase pages
- Technical blog integration
- GitHub portfolio README

---

### **Phase 3: Writing Portfolio (Priority 3)**
*Goal: Demonstrate communication skills*

- [ ] Categorize 50+ Medium articles by theme
- [ ] Extract key essays from PDFs
- [ ] Create publication timeline
- [ ] Identify best pieces for portfolio site

**Output:**
- Curated writing samples
- Publication stats dashboard
- Writing style guide

---

### **Phase 4: Complete Archive (Priority 4)**
*Goal: Nothing gets lost*

- [ ] Process all 245 Achievement entries
- [ ] Organize drafts and incomplete projects
- [ ] Document "lessons learned" from failures
- [ ] Create searchable database

**Output:**
- Complete achievement database
- Searchable archive
- Personal knowledge base

---

## 🤖 AUTOMATION OPPORTUNITIES

### **Smart Extractors to Build:**

1. **PDF-to-Markdown Converter**
   - Extract Medium articles → structured markdown
   - Preserve metadata (date, tags, links)

2. **CSV Achievement Parser**
   - Convert Notion exports → categorized markdown
   - Auto-generate timeline visualizations

3. **Voice Transcript Synthesizer**
   - Parse JSON transcripts → structured project descriptions
   - AI-assisted cleaning and organization

4. **LinkedIn Profile Syncer**
   - Keep LinkedIn in sync with master CV
   - Auto-generate LinkedIn-formatted descriptions

5. **Portfolio Generator**
   - Static site from markdown files
   - Auto-update on git push
   - LLM-friendly llm.txt generation

---

## 🎨 DESIGN PATTERNS FOR EACH ENTRY

### **Project Entry Template:**
```markdown
# [Project Name]

**Timeline:** [Start Date] - [End Date or "Ongoing"]
**Role:** [Your role]
**Context:** [Where/why this happened]
**Tags:** #hackathon #ai #hardware #design

## Overview
[2-3 sentence summary]

## The Challenge
[Problem you were solving]

## My Contribution
[What you specifically did]

## Technical Stack
- **Languages:**
- **Frameworks/Tools:**
- **APIs/Services:**

## Outcome
- [Metric or achievement]
- [Recognition or impact]

## Learnings
[Key takeaways]

## Links
- 🔗 [Demo/Live Site]
- 💻 [GitHub Repo]
- 📝 [Blog Post]
- 🎥 [Video Demo]

## Related Projects
- [[Link to similar project]]
```

### **Experience Entry Template:**
```markdown
# [Company/Organization Name]

**Position:** [Job Title]
**Duration:** [Start] - [End]
**Location:** [City, Country or Remote]
**Type:** [Internship/Full-time/Contract/TA]

## Company Context
[1-2 sentences about the org]

## My Role
[What you were hired to do]

## Key Projects
1. **[Project Name]** - [Brief description]
2. **[Project Name]** - [Brief description]

## Technologies Used
[List of relevant tech]

## Achievements
- [Quantifiable impact #1]
- [Quantifiable impact #2]

## Skills Developed
- [Skill 1]
- [Skill 2]
```

---

## 🚀 NEXT STEPS

### **Immediate Actions:**

1. **Create Base Structure**
   ```bash
   # Create all directories
   mkdir -p 00-PROFILE 01-EDUCATION 02-EXPERIENCE/professional \
            03-FEATURED-PROJECTS 04-HACKATHONS/wins \
            05-TECHNICAL-SKILLS 06-WRITING-PORTFOLIO/published \
            07-AWARDS-RECOGNITION 08-MINOR-PROJECTS \
            09-MEMBERSHIPS-COMMUNITY 10-INTERESTS-PHILOSOPHY 11-META
   ```

2. **Start with Quick Wins**
   - Copy Generation Google Scholarship details → `07-AWARDS-RECOGNITION/`
   - Parse LinkedIn PDF → `02-EXPERIENCE/professional/`
   - Extract top 8 projects from voice notes → `03-FEATURED-PROJECTS/`

3. **Build Automation Scripts**
   - `extract-pdf-to-md.py` for Medium articles
   - `parse-notion-csv.py` for achievements
   - `synthesize-transcript.py` for voice notes

4. **Set Up Version Control**
   ```bash
   git init
   git add .
   git commit -m "Initial CV structure"
   ```

5. **Create Update Workflow**
   - Voice notes → Whisper transcription
   - Quick capture template in Obsidian/VS Code
   - Weekly review & update routine

---

## 💡 INSIGHTS FROM CONTENT ANALYSIS

### **Your Strengths to Highlight:**

1. **Prolific Builder** - 100+ projects across diverse domains
2. **Hackathon Success** - Multiple wins with real prizes ($25k+)
3. **Technical Breadth** - Hardware (Arduino, ESP32, EEG, EMG) + Software (Full stack) + AI/ML
4. **Strong Communicator** - 50+ published articles, teaching experience
5. **Design + Engineering** - Rare combo of UX design and technical implementation
6. **Self-Directed Learner** - "Discover Shortcuts" philosophy, rapid skill acquisition
7. **Social Impact Focus** - Disaster relief, accessibility, education projects

### **Story Arcs to Develop:**

1. **From Robotics Kid to Neurotechnology** - Grade 7 Lego to biosensor gaming
2. **Hackathon to Production** - Ideas that became real products
3. **Voice Interface Obsession** - Consistent thread through projects
4. **Philippines to Global** - Local impact scaling to international recognition
5. **Academic + Practical** - Theory at Minerva + hands-on building

### **Unique Differentiators:**

- **Times Square billboard appearance** - Concrete viral moment
- **YC AI Startup School participant** - Startup ecosystem exposure
- **Member Zero at Hanwha AI Center** - Early adopter credibility
- **National Science Fair Grand Champion** - Pre-college excellence
- **Teaching Assistant while studying** - Leadership + expertise recognition
- **Voice-first workflows** - Ahead of the curve on AI voice interfaces

---

## 📊 CONTENT VOLUME ESTIMATE

- **Total Achievements:** 245+ tracked entries
- **Published Writing:** 50+ articles
- **Draft Writing:** 30+ pieces
- **Hackathons:** 20+ participations, 8+ wins
- **Featured Projects:** 8 major + 50+ minor
- **Professional Experiences:** 5+ formal positions
- **Awards/Recognition:** 15+ significant
- **Media Features:** 3+ publications

**Estimated CV Lengths:**
- Standard Resume: 2 pages (curated highlights)
- Academic CV: 8-10 pages (comprehensive)
- Portfolio Site: 20-30 project pages
- Complete Archive: 200+ individual entries

---

## 🎯 CV VARIANTS TO GENERATE

1. **MIT Media Lab Application CV** - Academic + research focus
2. **Tech Company Resume** - Engineering + hackathons
3. **Design Role Resume** - UX/UI + case studies
4. **Startup/Founder CV** - Projects + entrepreneurial ventures
5. **Academic Reference CV** - Publications + teaching
6. **General Networking Bio** - Broad overview + personality

---

*This plan is a living document. Update as we extract and organize content.*
