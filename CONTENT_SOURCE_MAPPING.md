# Content Source Mapping

## Where Everything Lives Right Now → Where It Should Go

### 📊 Notion Achievement Tracker
**Current Location:** `/raw/notion/cvk_achi_tracker/Achievements*.csv`
**Entries:** 245 achievements from Grade 7 to present

**Maps to:**
- `02-EXPERIENCE/` → Work history entries
- `03-FEATURED-PROJECTS/` → Major projects (8-10 selected)
- `04-HACKATHONS/` → All competition entries
- `07-AWARDS-RECOGNITION/` → Scholarships, wins, features
- `08-MINOR-PROJECTS/` → Side projects and experiments

**Extraction Method:** Python CSV parser with category mapping

---

### 🎙️ Voice Transcripts (JSON)
**Current Location:** `/raw/*.json`
- `achievements cont (2025-10-30 14.47.17).json` - 498 lines
- `notion achi (2025-10-30 16.20.57).json` - 914 lines

**Contains:** Stream-of-consciousness descriptions of recent projects (2024-2025)

**Priority Extractions:**
1. **Somach/So-Match** biosensor capstone → `03-FEATURED-PROJECTS/01-somach-biosensor.md`
2. **OMI Uber** voice app → `03-FEATURED-PROJECTS/04-omi-uber.md`
3. **Viral Video** HackMIT → `03-FEATURED-PROJECTS/03-viral-video.md`
4. **Unnorminator** Coinbase → `03-FEATURED-PROJECTS/05-unnorminator.md`
5. **Timezone Converter** extension → `08-MINOR-PROJECTS/cli-tools/timezone-converter.md`
6. **Whisper Android App** → `08-MINOR-PROJECTS/mobile-apps/whisper-android.md`
7. **Dell Internship** details → `02-EXPERIENCE/professional/dell-chaos-distributed.md`
8. **Minerva TA** role → `02-EXPERIENCE/teaching/minerva-ta.md`

**Extraction Method:** AI-assisted parsing, manual curation for accuracy

---

### 📝 Text Notes (Quick Dumps)
**Current Location:** `/raw/Oct 30 at *.txt`
**Contains:** Raw lists, thoughts, project mentions

**Use For:**
- Cross-reference with voice transcripts
- Catch any projects mentioned only here
- Timeline verification

**Extraction Method:** Manual review, use as supplementary source

---

### 📰 Medium Articles (80+ PDFs)
**Current Location:** `/raw/medium/*.pdf`

**Published (50+):**
- Technical tutorials → `06-WRITING-PORTFOLIO/published/technical/`
- Design case studies → `06-WRITING-PORTFOLIO/published/design-case-studies/`
- Essays → `06-WRITING-PORTFOLIO/published/essays/`
- Research pieces → `06-WRITING-PORTFOLIO/published/research/`

**Drafts (30+):**
- Archive in → `06-WRITING-PORTFOLIO/drafts/`
- Review for potential completion/publication

**Key Articles to Feature:**
- "How to Prompt like Google Engineers" (2024-09-20)
- "Whisper API transcription" (2024-09-21)
- "Sugar Slay Design Case Study" (2023-10-09)
- "Tabangay Ta Design Case Study" (2023-10-09)
- "Airport Wayfinding" (2023-10-11)
- "The Art of Trying" (2022-12-25)
- "Times Square Billboard" (2023-10-30)

**Extraction Method:**
1. PDF to Markdown converter
2. Extract metadata from filenames (date, title)
3. Organize by category/date
4. Create index with links

---

### 🎤 Feature Articles (External Media)
**Current Location:** `/raw/features/*.pdf`

**Articles:**
1. **Minerva Voices interview** → `07-AWARDS-RECOGNITION/media-features/minerva-voices.md`
2. **Cebu Daily News** (16yo mapping contest) → `07-AWARDS-RECOGNITION/media-features/cebu-daily-news.md`
3. **#HumansOfSymph** → `07-AWARDS-RECOGNITION/media-features/humans-of-symph.md`

**Use:** Pull quotes for bio, showcase external validation

---

### 💼 LinkedIn Data
**Current Location:** `/raw/linkedin/*.pdf`

**Files:**
- Profile.pdf → Extract professional summary, headline
- Projects PDF → Cross-reference with Notion achievements
- Honors PDF → Add to awards section

**Maps to:**
- `00-PROFILE/bio.md` → Professional summary
- `02-EXPERIENCE/` → Validate job descriptions
- `07-AWARDS-RECOGNITION/` → Confirm honors/awards

---

### 📱 Social Media
**Current Location:** `/raw/facebook/*.png`, `/raw/facebook/*.pdf`

**Contains:** Screenshots of viral posts, features

**Use For:**
- Visual assets for portfolio
- Social proof metrics
- Timeline verification

**Maps to:** Supporting materials, not primary content

---

### 🎓 Supporting Documents
**Current Location:** `/raw/Generation Google Scholarship.pdf`

**Important Docs:**
- Generation Google Scholarship details → `07-AWARDS-RECOGNITION/academic/generation-google.md`

---

## Content Processing Priority Matrix

```
┌─────────────────────────────────────────────────────────┐
│                    PRIORITY MATRIX                       │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  High Value + Easy to Extract                           │
│  ├─ LinkedIn PDFs (professional experience)             │
│  ├─ Generation Google Scholarship                       │
│  ├─ Feature Articles (external validation)              │
│  └─ Top 8 projects from voice transcripts               │
│                                                          │
│  High Value + Needs Processing                          │
│  ├─ Voice transcripts (recent projects detail)          │
│  ├─ Notion Achievements CSV (comprehensive history)     │
│  └─ Published Medium articles (50+ pieces)              │
│                                                          │
│  Medium Value + Easy to Extract                         │
│  ├─ Text notes (supplementary info)                     │
│  └─ Social media screenshots (supporting visuals)       │
│                                                          │
│  Archive + Reference                                     │
│  └─ Medium drafts (30+ unpublished)                     │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

---

## Extraction Workflow Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                      RAW CONTENT                                 │
│  (CSV + JSON + PDF + TXT + Images)                              │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│              EXTRACTION SCRIPTS                                  │
│  • parse-achievements-csv.py                                     │
│  • synthesize-voice-transcripts.py                               │
│  • pdf-to-markdown.py                                            │
│  • manual-curation.md (checklist)                                │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│           ORGANIZED MARKDOWN FILES                               │
│  11 category folders with structured .md files                   │
│  • Consistent templates                                          │
│  • Metadata headers                                              │
│  • Cross-referenced links                                        │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│              GENERATION TOOLS                                    │
│  • resume-generator.py → 2-page PDF                             │
│  • portfolio-builder.py → Static HTML site                      │
│  • llm-txt-generator.py → AI-friendly index                     │
│  • linkedin-formatter.py → Profile sync                         │
└────────────────────┬────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────────┐
│                   OUTPUTS                                        │
│  • MIT_Media_Lab_CV.pdf                                         │
│  • Tech_Company_Resume.pdf                                      │
│  • Portfolio_Site/ (HTML/CSS/JS)                                │
│  • llm.txt (for AI consumption)                                 │
│  • LinkedIn profile text                                        │
└─────────────────────────────────────────────────────────────────┘
```

---

## Update Workflow (Future State)

```
New Achievement/Project
         │
         ▼
   Voice Note 📱
         │
         ▼
   Whisper API
   Transcription
         │
         ▼
   AI Categorization
   (Which folder?)
         │
         ▼
   Generate Markdown
   (Using template)
         │
         ▼
   Human Review
   & Quick Edit
         │
         ▼
   Git Commit
         │
         ▼
   Auto-Regenerate
   All Exports
         │
         ▼
   Updated CV + Site
```

---

## Category Mapping Legend

| **Raw Source** | **CV Category** | **Example** |
|----------------|-----------------|-------------|
| Notion: "Category: Code - WebDev" | `08-MINOR-PROJECTS/cli-tools/` | Timezone converter |
| Notion: "Result: Winner" | `04-HACKATHONS/wins/` | HackMIT, Coinbase |
| Notion: "Tags: School" | `01-EDUCATION/` | Minerva courses |
| Notion: Experience tag | `02-EXPERIENCE/professional/` | Dell, Symph, Hyperbolic |
| Voice: "capstone project" | `03-FEATURED-PROJECTS/` | Somach biosensor |
| Voice: "teaching assistant" | `02-EXPERIENCE/teaching/` | Minerva TA |
| Medium: "Case Study" in title | `06-WRITING-PORTFOLIO/design/` | Sugar Slay, Airport |
| Medium: "How to" in title | `06-WRITING-PORTFOLIO/technical/` | Prompt engineering |
| Features: External article | `07-AWARDS-RECOGNITION/media/` | Minerva Voices |
| LinkedIn: Job title | `02-EXPERIENCE/professional/` | Validate dates |

---

## Key Decision Points

### What to Include in Standard Resume (2 pages):

**MUST INCLUDE:**
- Top 3-5 featured projects
- Professional experience (Dell, Hyperbolic, Symph)
- Education (Minerva)
- Top 3-5 awards (Google Scholarship, HackMIT, OMI Wrap)
- Core technical skills

**NICE TO HAVE:**
- 1-2 notable hackathon wins
- Teaching experience
- Publication count
- Media features (1 line)

**SAVE FOR EXTENDED CV:**
- Complete hackathon list
- All minor projects
- Full publication list
- Complete timeline

---

### What to Feature on Portfolio Site:

**Homepage:**
- Current role/status
- Elevator pitch
- Top 3 projects (cards with images)
- Quick stats (projects, hackathons, articles)

**Projects Page:**
- Featured projects (detailed)
- Filter by category/tech
- Timeline view option

**Writing Page:**
- Latest articles (5-10)
- Filter by topic
- Publication stats

**About Page:**
- Full bio
- Timeline
- Media features
- Contact

---

## Next Action Checklist

- [ ] Create 11-folder structure
- [ ] Write 1 project using template (practice)
- [ ] Extract LinkedIn experience → markdown
- [ ] List top 8 projects from voice notes
- [ ] Parse 5 Medium articles to markdown
- [ ] Build CSV parser script
- [ ] Generate first 2-page resume draft

---

*This mapping serves as your reference guide for the extraction process.*
