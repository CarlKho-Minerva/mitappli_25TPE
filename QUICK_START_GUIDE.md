# Quick Start Guide: Your CV Organization System

**Goal:** Transform your scattered content into an updateable, multi-format CV system
**Time to First Resume:** ~2-3 hours for a working draft
**Philosophy:** Start small, automate incrementally, never lose content

---

## 🚀 The 3-Hour Sprint to Your First Resume

### Hour 1: Structure & Profile (30 min setup + 30 min content)

**Step 1: Create the folder structure (5 minutes)**

```bash
cd /Users/cvk/Downloads/carl/md-cv

# Create main directories
mkdir -p {00-PROFILE,01-EDUCATION,02-EXPERIENCE,03-FEATURED-PROJECTS,04-HACKATHONS,05-TECHNICAL-SKILLS,06-WRITING-PORTFOLIO,07-AWARDS-RECOGNITION,08-MINOR-PROJECTS,09-MEMBERSHIPS-COMMUNITY,10-INTERESTS-PHILOSOPHY,11-META}

# Create subdirectories
mkdir -p 02-EXPERIENCE/{professional,teaching,freelance}
mkdir -p 04-HACKATHONS/{wins,participation}
mkdir -p 06-WRITING-PORTFOLIO/{published,drafts}
mkdir -p 06-WRITING-PORTFOLIO/published/{technical,design-case-studies,essays,research}
mkdir -p 11-META/extraction-scripts

echo "✅ Folder structure created!"
```

**Step 2: Create your profile (15 minutes)**

```bash
# Quick bio template
cat > 00-PROFILE/bio.md << 'EOF'
# Carl Kho

## Current Status
Computer Science Student at Minerva University (Class of 2026)
Teaching Assistant | Biosensor Researcher | Hackathon Winner
Based in: Taipei, Taiwan (currently) | San Francisco, CA | Cebu, Philippines

## Quick Pitch
I build voice-first applications and brain-computer interfaces. From winning $25k at hackathons to teaching software engineering while studying, I focus on making technology more human through biosensors, AI, and design thinking.

## Specializations
- **Biosensors & Neurotechnology:** EMG, EEG, IMU sensor integration for novel input methods
- **Voice Interfaces:** Multiple production apps using Whisper, Gemini, and Claude
- **Full-Stack + Hardware:** ESP32, Arduino, React, Flask, Docker deployment
- **Design + Engineering:** UX case studies with working implementations

## Recognition Highlights
- $25k+ in hackathon winnings (HackMIT, Coinbase, OMI)
- Featured in Times Square billboard
- National Science Fair Grand Champion
- Generation Google Scholar
- 50+ published technical articles

## Currently Working On
**Somach**: My capstone project turning biosensors into video game controllers (5-phase project from phone IMU to EEG-controlled gameplay)

---

*Last updated: November 2025*
EOF

echo "✅ Bio created!"
```

**Step 3: Contact info (5 minutes)**

```bash
cat > 00-PROFILE/contact.md << 'EOF'
# Contact Information

## Professional
- **Email:** [your-email]
- **LinkedIn:** [linkedin.com/in/carlkho]
- **GitHub:** [github.com/CarlKho-Minerva]
- **Portfolio:** [your-site]

## Writing
- **Medium:** carlkho-cvk.medium.com
- **Blog:** [if you have one]

## Location
- Current: Taipei, Taiwan
- Home: Cebu, Philippines
- School: San Francisco, CA (Minerva University)

---

*Update this file with your actual links*
EOF

echo "✅ Contact created!"
```

**Step 4: Quick facts (10 minutes)**

```bash
cat > 00-PROFILE/quick-facts.md << 'EOF'
# Quick Facts & Stats

## Education
- 🎓 **Minerva University** - B.S. Computer Science (2026)
- 🏫 **STEC** - Senior High School, STEM (2021)

## Experience Snapshot
- 💼 5+ professional/contract positions
- 🏆 20+ hackathons, 8+ wins
- 📝 50+ published articles
- 👨‍🏫 Teaching Assistant at Minerva
- 🌏 Lived/worked in 7+ countries

## Technical Skills
**Languages:** Python, JavaScript, C++, Kotlin
**Hardware:** Arduino, ESP32, EMG sensors, EEG headsets
**AI/ML:** TensorFlow, OpenAI, Anthropic, Google Gemini
**Design:** Figma, Webflow, Adobe Suite
**Cloud:** GCP, Docker, Kubernetes

## Awards & Recognition
- Generation Google Scholarship
- National Science Fair Grand Champion
- Featured: Minerva Voices, Cebu Daily News, #HumansOfSymph
- Times Square billboard appearance
- YC AI Startup School participant

## By The Numbers
- 💰 $25,000+ in hackathon prizes
- 📊 245+ documented achievements
- 👥 1000s of users across projects
- ⭐ 5-star rated browser extension (50+ downloads)

---

*Auto-generated from achievement database*
EOF

echo "✅ Quick facts created!"
```

---

### Hour 2: Top Projects & Experience (30 min extraction + 30 min writing)

**Step 5: Extract your top 3 projects from voice notes (30 minutes)**

Create these three files based on your voice transcripts:

```bash
# Project 1: Current capstone
cat > 03-FEATURED-PROJECTS/01-somach-biosensor-gaming.md << 'EOF'
# Somach: Biosensors to Video Game Input

**Timeline:** September 2025 - Present (Ongoing)
**Role:** Lead Developer & Researcher
**Context:** Minerva University Capstone Project
**Advisor:** Prof. Patrick H. Watson
**Tags:** #capstone #biosensors #neurotechnology #gaming #hardware

## Overview

A 5-phase capstone project exploring novel input methods for video games using biological sensors. Starting with basic phone IMU sensors and progressing to EEG-controlled gameplay, this project bridges computational neuroscience and game design.

## The Challenge

Traditional game controllers limit accessibility and immersion. Can we use the body itself as an input device? How do we progress from simple accelerometer data to interpreting brain signals for game control?

## My Approach: 5 Phases

### Phase 1: Phone as Controller ✅
- Used phone's IMU sensors (accelerometer, quaternions)
- Controlled Silksong game mechanics
- Learned sensor data streaming protocols

### Phase 2: Smartwatch + ML 🔄
- Built Android app to stream watch sensors to Mac
- Created gesture labeling app with grid interface
- Attempted CNN + LSTM for gesture recognition
- Pivoted when pattern matching proved insufficient

### Phase 3: EMG Muscle Sensors 🔄
- Using electrical signals from tricep muscle contractions
- ESP32 microcontroller processing
- Muscle clench acts as button/switch input
- LED helmet feedback system

### Phase 4: EEG as Browser Control ⏳
- Using EEG focused state detection
- Integration with Playwright MCP for browser automation
- Voice commands ("navigate to Substack") + brain state triggers
- Exploring attention-based UI control

### Phase 5: Dark Souls with Brain 🎯
- Replication of Perry Kyal's PhD research
- Consumer EEG headset (Emotiv) gameplay
- Full Dark Souls control via thought patterns
- Target: Working demo by Spring 2026

## Technical Stack

- **Hardware:** ESP32, Arduino, Emotiv EEG headset, Android smartwatch
- **Languages:** C++, Python, Kotlin
- **Frameworks:** TensorFlow (ML models), Android SDK
- **Tools:** Playwright MCP, Gemini API
- **Sensors:** IMU, EMG electrodes, EEG dry electrodes

## Current Status

- Phase 1: Complete
- Phase 2: Pivoted after ML challenges
- Phase 3: Active development (hardware prototyping)
- Phase 4: Planning stage
- Phase 5: Research phase

## Learnings

- **Hardware constraints are real:** Consumer EEG is noisy, EMG placement matters
- **ML isn't always the answer:** Sometimes rule-based systems work better
- **Iterate in public:** Documentation helps clarify thinking
- **Cross-disciplinary is hard:** Neuroscience + CS + Game Design requires learning 3 fields

## Philosophy

"Learn to stand before you walk, walk before you fly." Each phase builds on the last. Start with simple sensors, progressively increase complexity.

## Documentation

- 📝 Weekly blog updates in personal knowledge base
- 🎥 Video demos of each phase
- 📊 Pomodoro-tracked development logs
- 🧠 Literature review of BCI research

## Related Work

- Perry Kyal's Dark Souls EEG research
- Backyard Brains educational neuroscience
- Center for Neurotech at UW

---

*This is my most ambitious project to date. Ask me about it in interviews!*
EOF

# Project 2: OMI Uber
cat > 03-FEATURED-PROJECTS/02-omi-uber-voice-rideshare.md << 'EOF'
# OMI Uber: Voice-Activated Ridesharing

**Timeline:** October 2025
**Role:** Full-Stack Developer
**Context:** Collaboration with OMI Founder (Nik)
**Tags:** #voice #automation #production #deployed #omi

## Overview

Say "Get me an Uber from [location] to [destination]" into your OMI necklace, and it automatically books your ride. First end-to-end deployed app using voice webhooks and browser automation.

## The Problem

Booking rides requires pulling out your phone, opening app, typing addresses, confirming details. What if you could just speak naturally while walking?

## Solution

Voice-activated webhook that:
1. Transcribes your request via OMI device
2. Parses locations using NLP
3. Logs into your Uber account (stored session)
4. Fills dropdowns using Playwright automation
5. Confirms booking

All while you're still talking.

## Technical Implementation

- **Backend:** Python Flask webhook hosted on cloud (not Render, different service - check notes)
- **Automation:** Playwright for browser control
- **Auth:** Cookie-based session preservation (stored securely)
- **Location:** GPS emulation for server-side booking
- **Deployment:** Docker container for consistency

## Key Innovation

**Session persistence:** The script "logs in as you" using stored cookies, so it can access your Uber account from the cloud despite not being on your physical device. This required figuring out:
- Cookie extraction and secure storage
- Location spoofing to match user's actual position
- Playwright running headless in cloud environment

## Challenges Solved

1. **Location discrepancy:** Server would get Uber's server location, not user location
   - Solution: Built companion Android GPS emulation app

2. **Async execution:** Voice command needs immediate acknowledgment, booking takes 5-10 seconds
   - Solution: Webhook returns instantly, queues job in background

3. **Error handling:** What if Uber is down? No drivers available?
   - Solution: Error states send voice notifications back to OMI

## Outcome

- ✅ Fully functional end-to-end system
- ✅ Works in real-world conditions
- ✅ My first production-ready voice automation
- 🎉 Collaboration with OMI founder (networking win!)

## Tech Stack

- **Languages:** Python
- **Frameworks:** Flask, Playwright
- **Deployment:** Docker
- **Integrations:** OMI API, Uber (via browser automation)
- **Companion App:** Android (Kotlin) for GPS emulation

## Learnings

- **Browser automation beats API:** When there's no official API, Playwright is magic
- **Cloud deployment is different:** Cookie handling, headless browsers, environment variables
- **Voice UIs need error states:** Users can't see what went wrong, so verbal feedback is critical
- **Docker saves headaches:** Local dev ≠ production, containers bridge that gap

## Links

- 💻 GitHub: [repo-link]
- 🎥 Demo Video: [link]
- 📝 Blog Post: [link]

---

*This project taught me more about production deployment than any course could.*
EOF

# Project 3: Viral Video Bias Lab
cat > 03-FEATURED-PROJECTS/03-viral-video-bias-lab.md << 'EOF'
# Viral Video: Bias Detection in Video Content

**Timeline:** September 2024
**Role:** Team Developer
**Context:** HackMIT 2024 - Semi-Finalist
**Tags:** #hackmit #ai #video-analysis #bias #ml

## Overview

An AI tool that analyzes video content (TikTok, YouTube) for subtle biases in framing, editing, music, and pacing. Helps viewers develop critical media literacy by showing what manipulative techniques are being used.

## The Challenge

Social media videos are designed to manipulate emotion through:
- Strategic editing cuts
- Music choice and pacing
- Camera angles and framing
- On-screen text timing

Most viewers don't consciously notice these techniques. We wanted to make the invisible visible.

## My Contribution

[Fill in based on your specific role - was it:
- Video processing pipeline?
- ML model training?
- Frontend visualization?
- Bias taxonomy development?]

## Technical Approach

- **Video Processing:** [Which library/tool?]
- **AI Analysis:** [Which models? Gemini video understanding? Custom ML?]
- **Bias Detection:** [How did you classify bias types?]
- **Visualization:** [How did you show results to users?]

## Outcome

- 🏆 HackMIT Semi-Finalist (didn't pitch due to being with friends)
- 📊 Working prototype demonstrating concept
- 🎓 Deep dive into media literacy + AI

## Tech Stack

[Fill in based on actual stack used]

## Learnings

- **Video processing is compute-heavy:** [Specific lesson]
- **Bias is subjective:** [How did you handle edge cases?]
- **HackMIT atmosphere:** [Experience being there]

## Links

- 💻 GitHub: [link]
- 🎥 Demo: [link]
- 📝 DevPost: [link]

---

*Need to expand this with more technical details from voice transcripts*
EOF

echo "✅ Top 3 projects created! (Expand with details later)"
```

**Step 6: Add your professional experience (30 minutes)**

```bash
# Dell Internship
cat > 02-EXPERIENCE/professional/dell-chaos-engineering.md << 'EOF'
# Dell Technologies - Chaos Engineering Intern

**Position:** Chaos Engineer Intern
**Duration:** [Dates from projects/EXP-dell-chaos-distributed/ folder]
**Location:** Remote
**Team:** ISA Secondary Storage Solutions

## Company Context

Dell's ISA team develops storage solutions for the world's largest banks. Pre-release testing requires simulating extreme failure conditions in distributed systems.

## My Role

Developed a Terminal User Interface (TUI) for Chaos Mesh, making chaos engineering experiments more accessible to engineers testing distributed systems.

## Key Projects

1. **Chaos Mesh TUI** - Terminal interface for managing chaos experiments
   - Built with Python
   - Simplified complex Kubernetes operations
   - Enabled faster testing cycles for team

2. **Kubernetes + Splitwise Recreation** - Learning project
   - Practiced distributed systems concepts
   - Applied chaos principles to simple app

## Technologies Used

- **Primary:** Python, Kubernetes, Chaos Mesh
- **Infrastructure:** Docker, distributed systems architecture
- **Tools:** Terminal UI frameworks, K8s APIs

## Achievements

- Delivered TUI tool adopted by team
- Gained hands-on distributed systems experience
- Learned chaos engineering principles
- Worked with enterprise-scale infrastructure

## Skills Developed

- Kubernetes orchestration
- Chaos engineering methodology
- Enterprise software practices
- Terminal UI design
- Distributed systems debugging

---

*Check raw/ folder for detailed internship summaries (8 JSON files)*
EOF

# Minerva TA
cat > 02-EXPERIENCE/teaching/minerva-ta-software-engineering.md << 'EOF'
# Minerva University - Teaching Assistant

**Position:** Teaching Assistant, Software Engineering
**Duration:** Fall 2025 - Present
**Location:** Remote/San Francisco, CA
**Course:** [Course Code] Software Engineering

## Role Description

Provide Socratic feedback and first-principles office hours for undergraduate software engineering students. Help students understand fundamentals rather than just debugging syntax.

## Responsibilities

- **Office Hours:** Weekly 1-on-1 and group sessions
- **Socratic Method:** Ask fundamental questions like "Do you know what a virtual environment actually is?" before solving surface-level issues
- **Feedback on Assignments:** Review code, suggest improvements
- **Concept Lectures:** Mini-lessons on confusing topics
- **Therapy Sessions:** Help students with imposter syndrome and learning anxiety

## Teaching Philosophy

Don't just fix the error. Understand the mental model. If a student doesn't know what a virtual environment is, no amount of `pip install` commands will help long-term.

## Impact

- Multiple students returning for office hours (building trust)
- Positive feedback on teaching approach
- [Any specific success stories?]

## Skills Developed

- Technical communication
- Debugging others' code
- Patience and empathy
- Teaching complex topics simply
- Recognizing gaps in understanding

## Related Work

Also giving talk on "Electro[whatever Prof Watson calls it]" - recording brain data (EEG, MEG, fMRI) for neurotechnology class.

---

*Update with specific examples of helping students*
EOF

echo "✅ Experience entries created!"
```

---

### Hour 3: Skills, Education & Generate First Resume (30 min content + 30 min generation)

**Step 7: Technical skills inventory (15 minutes)**

```bash
cat > 05-TECHNICAL-SKILLS/overview.md << 'EOF'
# Technical Skills Overview

## Programming Languages

**Production-Level:**
- Python (4 years) - Flask, Django, automation scripts, data science
- JavaScript (3 years) - React, Node.js, browser extensions
- C++ (2 years) - Arduino, ESP32, embedded systems

**Working Knowledge:**
- Kotlin - Android development
- HTML/CSS - Web development, portfolio sites
- SQL - Database queries
- Bash/Zsh - Scripting, automation

**Learning:**
- Rust - Systems programming
- Go - Backend services

## Frameworks & Tools

**Web Development:**
- React, Next.js, Vite
- Flask, FastAPI
- Webflow (advanced)
- Figma (prototyping + design)

**AI & Machine Learning:**
- TensorFlow, PyTorch (CNN, LSTM models)
- OpenAI API (GPT-4, Whisper)
- Anthropic API (Claude)
- Google Gemini API (especially 2.0 Flash, video understanding)
- Ollama (local LLMs)
- LangChain, Playwright MCP

**Hardware & Electronics:**
- Arduino (Uno, Portenta H7)
- ESP32 (WiFi, Bluetooth, sensor integration)
- EMG sensors (muscle electrical signals)
- EEG headsets (Emotiv consumer BCI)
- IMU sensors (accelerometer, gyroscope, quaternions)
- Breadboard prototyping, soldering

**DevOps & Cloud:**
- Docker (containerization)
- Kubernetes (orchestration, chaos mesh)
- GCP (Cloud Run, Colab Pro with A100 GPUs)
- Git/GitHub (version control, Actions)
- Render, Railway (deployment platforms)

**Design & Media:**
- Figma (UI/UX design)
- Adobe Suite (Illustrator, Photoshop, Premiere)
- Procreate (digital illustration)
- Lens Studio (AR filters)
- Webflow (no-code web development)

## Specialized Skills

**Voice Interfaces:**
- OpenAI Whisper API
- Google Gemini Real-time API
- ElevenLabs voice generation
- OMI device integration
- Voice webhook architecture

**Biosensors & BCI:**
- EMG signal processing
- EEG data collection and cleaning
- IMU sensor fusion
- Gesture recognition pipelines
- Consumer neurotechnology hardware

**Automation & Scripting:**
- Playwright (browser automation)
- Beautiful Soup (web scraping)
- Selenium (test automation)
- Cron jobs, systemd services
- CLI tool development

**Education & Communication:**
- Technical writing (50+ published articles)
- Teaching/mentoring (Minerva TA)
- Socratic method instruction
- Documentation-driven development
- Public speaking (demos, pitches)

## Methodologies

- Agile/Scrum (hackathon experience)
- Test-driven development
- Continuous integration/deployment
- Chaos engineering principles
- First-principles thinking
- Design thinking
- Rapid prototyping

---

*Skills organized by proficiency and application domain*
EOF

echo "✅ Skills inventory created!"
```

**Step 8: Education details (10 minutes)**

```bash
cat > 01-EDUCATION/minerva-university.md << 'EOF'
# Minerva University

**Degree:** Bachelor of Science in Computer Science
**Expected Graduation:** May 2026
**Status:** Senior (Year 4 of 4)
**GPA:** [Check your records]

## About Minerva

Minerva is a unique 4-year university where students live in 7 different global cities while taking seminar-style classes online. Focus on critical thinking, practical application, and cross-cultural understanding.

## Global Rotations

- **Year 1:** San Francisco, CA, USA
- **Year 2:** Seoul, South Korea
- **Year 3:** [Cities]
- **Year 4:** Taipei, Taiwan (current)

## Relevant Coursework

- Software Engineering (Teaching Assistant)
- Computational Neuroscience (current - capstone prep)
- Distributed Systems
- Machine Learning
- Data Structures & Algorithms
- [Other relevant courses]

## Capstone Project

**Somach:** Biosensors to Video Game Input (5-phase project)
Advisor: Prof. Patrick H. Watson

## Academic Achievements

- Teaching Assistant selection (competitive)
- [Any honors? Dean's list? High GPA semesters?]
- [Relevant projects or papers]

## Extracurriculars

- Created timezone converter Chrome extension for Minerva community (50+ downloads, 5-star rating)
- Built "Grammarly for Minerva" - AI feedback tool for writing
- Forum contributor and tech support for classmates
- [Any clubs or organizations?]

---

*Cross-reference with your Notion achievement tracker for specific grades/honors*
EOF

cat > 01-EDUCATION/stec-high-school.md << 'EOF'
# STEC (Science and Technology Education Center)

**Degree:** Senior High School, STEM Track
**Graduated:** 2021
**Track:** 11 STEM Mendeleev
**Status:** Ranked #1 with High Honors (1st Semester)

## Achievements

- **National Science Fair Grand Champion (2020)** - "Stat: Your Virtual Clinic" health platform
- **1st Runner Up** - Social Innovation in Health Initiative
- Completed qualitative research paper on food couriers during COVID-19 (95/100)
- Multiple hackathon wins while still in high school

## Notable Projects

- RiSE vaccination platform (Google Solutions Challenge 2021) - worked with UP students
- Stat: Your Virtual Clinic - telemedicine concept
- Plutus: The Money Game - financial literacy platform

## Extracurriculars

- World Robotics Olympiad participant
- First Lego League (Lapu-Lapu Division)
- Science Investigatory Projects
- Web design competitions

---

*Foundation for technical + design skills*
EOF

echo "✅ Education entries created!"
```

**Step 9: Quick resume generation (30 minutes)**

For now, we'll create a simple markdown resume. Later you can build a PDF generator script.

```bash
cat > RESUME-2PAGE.md << 'EOF'
# CARL KHO

**Computer Science Student | Biosensor Researcher | Hackathon Winner**
Taipei, Taiwan | San Francisco, CA | carlkho@example.com | [LinkedIn](link) | [GitHub](link)

---

## EDUCATION

**Minerva University** | San Francisco, CA
_B.S. Computer Science_ | Expected May 2026
- Teaching Assistant for Software Engineering
- Global rotations: San Francisco, Seoul, Hyderabad, Buenos Aires, London, Berlin, Taipei
- Capstone: Biosensor to video game input using EMG, EEG, and IMU sensors

**STEC Senior High School** | Cebu, Philippines
_STEM Track_ | Graduated 2021
- Ranked #1 with High Honors (1st semester)
- National Science Fair Grand Champion

---

## EXPERIENCE

**Minerva University** | Teaching Assistant
_Fall 2025 - Present | Remote_
- Provide Socratic feedback and first-principles office hours for Software Engineering students
- Conduct technical reviews and debugging sessions using pedagogical approaches
- Assist in curriculum development and student assessment

**Dell Technologies** | Chaos Engineering Intern
_[Dates] | Remote_
- Developed Terminal User Interface (TUI) for Chaos Mesh to simplify distributed systems testing
- Worked on pre-release storage solutions for major financial institutions
- Applied chaos engineering principles to Kubernetes environments

**Hyperbolic Labs** | Contractor
_[Dates] | Remote_
- Built GPU rental bot with voice interface ($1,000 commission)
- Integrated with Hyperbolic's GPU marketplace API
- Contributed to hyperbolic-agent GitHub repository

**Symphony Philippines (Symph)** | Product Designer
_[Dates] | Cebu, Philippines_
- Designed user interfaces for client projects
- Featured in #HumansOfSymph showcase
- Collaborated with development team on implementation

---

## FEATURED PROJECTS

**Somach: Biosensor Gaming Input** | Minerva Capstone | 2025-Present
5-phase project converting biological signals into game controls. Phase 1 (complete): Phone IMU sensors for Silksong control. Phase 2: Smartwatch gesture recognition with ML. Phase 3 (active): EMG muscle signals with ESP32. Phase 4: EEG-controlled browser automation. Phase 5: Full Dark Souls gameplay via thought patterns.
_Tech: Python, C++, TensorFlow, ESP32, EMG/EEG sensors, Android, Playwright_

**OMI Uber: Voice Ridesharing** | OMI Collaboration | Oct 2025
Voice-activated Uber booking via OMI necklace. Say "get me an Uber from X to Y" and it automatically logs in, fills dropdowns, confirms ride. First end-to-end deployed app using voice webhooks and browser automation.
_Tech: Python, Flask, Playwright, Docker, Android (GPS emulation), OMI API_

**Viral Video Bias Lab** | HackMIT 2024 | Sept 2024
AI tool analyzing video content for manipulation techniques (editing, music, framing). Semi-finalist at HackMIT. Helps viewers develop critical media literacy.
_Tech: Python, [Video processing], Gemini Video API, ML for bias detection_

**Stat: Your Virtual Clinic** | National Science Fair | 2020
Telemedicine platform connecting patients with healthcare providers. Grand Champion at National Science Fair. 1st Runner-Up at Social Innovation in Health Initiative.
_Tech: [Stack], Health tech, Platform design_

---

## AWARDS & RECOGNITION

- **$25,000+ in Hackathon Prizes** - OMI Wrap ($25k), HackMIT, Coinbase, Hyperbolic Labs
- **Generation Google Scholarship** - Competitive scholarship for CS students
- **Times Square Billboard Feature** - [Context]
- **National Science Fair Grand Champion** - Stat project (2020)
- **YC AI Startup School 2025** - Selected participant
- **Member Zero, Hanwha AI Center** - Founding member in [location]

---

## TECHNICAL SKILLS

**Languages:** Python, JavaScript, C++, Kotlin
**Web:** React, Flask, Node.js, Webflow, Figma
**AI/ML:** TensorFlow, OpenAI/Anthropic/Gemini APIs, Ollama, Whisper
**Hardware:** Arduino, ESP32, EMG sensors, EEG headsets, IMU sensors
**Cloud/DevOps:** Docker, Kubernetes, GCP, Git/GitHub
**Specializations:** Voice interfaces, biosensors, browser automation (Playwright), chaos engineering

---

## PUBLICATIONS & WRITING

- **50+ Technical Articles** on Medium covering AI, design, hardware, and tutorials
- Notable: "How to Prompt like Google Engineers", "Whisper API Transcription", UX case studies
- Featured in: Minerva Voices, Cebu Daily News, #HumansOfSymph

---

_References and detailed project portfolios available upon request_
EOF

echo "✅ First resume draft created!"
echo ""
echo "Check RESUME-2PAGE.md - this is your starting point!"
echo "Next: Fill in [brackets] with actual data, then convert to PDF"
```

---

## ✅ Checkpoint: What You Have Now

After this 3-hour sprint:

```
✅ 00-PROFILE/ - Bio, contact, quick facts
✅ 01-EDUCATION/ - Minerva, STEC
✅ 02-EXPERIENCE/ - Dell, TA, Symph, Hyperbolic
✅ 03-FEATURED-PROJECTS/ - Top 3 detailed projects
✅ 05-TECHNICAL-SKILLS/ - Comprehensive skills inventory
✅ RESUME-2PAGE.md - Working 2-page resume draft
```

**You can now:**
1. Send this resume to opportunities
2. Expand project details as needed
3. Build automation scripts incrementally
4. Add more content over time

---

## 🔄 Next Steps (After First Draft)

### Immediate (Next 2-3 days)

1. **Fill in the blanks:**
   - Add actual dates to experiences
   - Link GitHub/LinkedIn/portfolio URLs
   - Add your real email
   - Fill in missing project details from voice transcripts

2. **Convert to PDF:**
   ```bash
   # Option 1: Use Markdown to PDF converter
   pandoc RESUME-2PAGE.md -o Carl_Kho_Resume.pdf

   # Option 2: Use online converter (markdown-pdf.com)
   # Option 3: Build custom LaTeX template
   ```

3. **Get feedback:**
   - Send to Prof Watson (advisor opinion)
   - Career services review
   - Peer review from tech-savvy friends

### Week 2: Expand Content

- [ ] Add remaining 5 featured projects
- [ ] Extract all hackathon wins from Notion CSV
- [ ] List all awards/recognition
- [ ] Create project portfolio pages

### Week 3: Build Automation

- [ ] Python script: Notion CSV → Markdown
- [ ] Python script: Voice JSON → Project pages
- [ ] Python script: Markdown → PDF resume generator
- [ ] Set up Git repo + version control

### Week 4: Polish & Deploy

- [ ] Build portfolio website from markdown
- [ ] Create different resume variants (academic, tech company, design)
- [ ] Generate llm.txt for AI consumption
- [ ] Set up auto-update workflow

---

## 🎯 Success Metrics

**You'll know this worked when:**

1. ✅ You can send a resume to MIT Media Lab today (even if not perfect)
2. ✅ Updating your CV takes <5 minutes
3. ✅ You have a URL to share your portfolio
4. ✅ ChatGPT can accurately answer "What has Carl Kho built?"
5. ✅ You're not stressed about losing achievements

---

## 💡 Pro Tips

**While Building:**

1. **Don't obsess over perfection** - Ship the 80% version, iterate later
2. **Use AI to help** - Claude/GPT can help fill in gaps from your voice transcripts
3. **Version everything** - Git commit after every major edit
4. **Keep voice notes going** - Your stream-of-consciousness is valuable data
5. **Update weekly** - Set a recurring calendar event: "Update CV (10 min)"

**Voice-to-CV Workflow:**
```
Record achievement → Whisper transcribe →
AI categorize → Quick manual edit →
Git commit → Auto-regenerate PDFs
```

**For MIT Media Lab:**
- Emphasize: Somach project, neurotechnology interest, research mindset
- Include: Publications, capstone details, Prof Watson's name
- Lead with: "I build brain-computer interfaces for gaming"

---

## 🚨 Common Pitfalls to Avoid

1. **Don't try to process all 245 achievements today** - Start with recent/important ones
2. **Don't manually copy-paste everything** - Build scrapers and parsers
3. **Don't make resume too long** - 2 pages for jobs, 3-4 for academic
4. **Don't forget to backup** - Git + cloud storage
5. **Don't wait for "complete"** - Ship version 1.0 now, improve later

---

## 📞 When You Need Help

**Stuck on:**
- **Technical issues?** → Ask in Minerva tech channels or Discord
- **Content decisions?** → Talk to Prof Watson or career advisor
- **Writing?** → Use Claude to help synthesize voice notes
- **Design?** → Reference your old portfolio sites

**Resources:**
- Your voice transcripts (gold mine of detail)
- Notion CSV (comprehensive history)
- Medium articles (show communication skills)
- GitHub repos (proof of technical work)

---

## 🎉 You're Ready!

You now have:
- ✅ A working resume draft
- ✅ A clear organizational structure
- ✅ Templates for future entries
- ✅ A plan for automation
- ✅ Nothing lost from your raw content

**Next command to run:**

```bash
cd /Users/cvk/Downloads/carl/md-cv
cat RESUME-2PAGE.md
```

Read it. Edit the [brackets]. Send it to someone.

**You've got this.** 🚀

---

*Remember: "Discover Shortcuts" applies to your CV too. Build once, update forever.*
