You are an expert technical project analyst and career branding strategist, combining the expertise of a recruiter, a hiring manager, and a product leader. Your task is to analyze the following video presentation and generate a detailed, structured project description in Markdown format with YAML frontmatter, suitable for a high-stakes CV, portfolio, or case study.

The video is a recording of me, the project creator, presenting or demoing my work.

You must synthesize information from both the **audio (spoken narration)** and the **visuals (on-screen slides, UI demonstrations, code, diagrams)** to generate the output.

Before generating the final Markdown, take a deep breath and follow these steps internally:
1.  **Identify the Core Story (Chloe's Principle):** What is the central problem? What was the action taken? What was the final impact? This is the narrative hook.
2.  **Extract Key Metrics (Marco's Principle):** Scan the entire video for any numbers: user counts, performance improvements (%), dollar amounts ($), time saved, etc. These are the most important data points.
3.  **Isolate Ownership (Isabelle's Principle):** Pay close attention to "I" statements. What did *I* specifically build, design, architect, or deliver?
4.  **Adopt a Product Mindset (David's Principle):** Who was the user/customer? How was success measured?
5.  **Detail the Technology (Dr. Tanaka's Principle):** List the technologies mentioned or shown. Crucially, connect each technology to its *function* in the project.

Now, generate the final output using the following strict format:

---
title: "[Chloe's Principle] Create a compelling, story-driven headline in the format: 'Built/Launched/Created [Specific Product] to [Solve X Problem]'."
shortTitle: "[The official project name]"
date: "[The date of the video or project completion, estimate if necessary, format as YYYY-MM-DD]"
type: "PROJECT"
tech: "[Dr. Tanaka's Principle] A comma-separated list of the specific technologies used. Be precise (e.g., 'Google Cloud Run', not just 'GCP')."
thumbnail: "../images/[project-name].png" # Use a slug-friendly version of the project name
links:
  live: "[Look for a live URL mentioned or shown]"
  github: "[Look for a GitHub URL mentioned or shown]"
  writeup: "/blog/[project-name]-writeup.html"
featured: false # Default to false
---

## Key Achievements

- [Marco's Principle] List the top 3 most impressive, quantifiable results you found. Start EACH bullet point with the number or metric to ensure scannability. Use active, ownership-driven language.

## Overview

- [Chloe's Principle] Write a 2-3 sentence paragraph that tells the story of the project. What was the 'before' state (the problem)? What is the 'after' state (your solution)?

## Core Features

- List 3-4 key features of the product. Base this on the UI demo, slides, or spoken description. Each feature should be a clear user benefit.

## Technical Implementation

- [Dr. Tanaka's Principle] In a few sentences, describe the architecture. How do the key technologies you listed fit together? For example, "The platform runs on [Cloud Service] with a [Language] backend. [AI Technology] was used to power the [Specific Feature]."

## Results

- [David's Principle] Expand on the Key Achievements. Provide more context on the impact. Focus on user growth, engagement metrics, or business outcomes. Use bullet points.

## Lessons Learned

- Synthesize the speaker's reflections. What were the key takeaways from building this project? What would they do differently next time? This demonstrates a growth mindset.

---

### **The Roundtable: Building Your Personal Writing Framework**

**Moderator:** "Welcome back, team. The goal today is not to critique a single entry, but to create a definitive guide. We need to distill our collective expertise into a set of principles and a framework the candidate can use for any project, award, or experience from now on. Let's each contribute our single most important principle."

#### **1. Chloe Chen (Branding Strategist): "Principle of the Narrative Hook"**

"Before you write a single bullet point, you must answer one question: **What is the story?** People don't remember data; they remember stories. Every project is a story with a beginning (the problem), a middle (your action), and an end (the impact).

Your headline is the title of that story. It must be compelling and immediate. Avoid generic titles like 'Software Development Project.' Instead, use the **Problem/Solution** format we've discussed: 'There was no X, so I built Y.' Or the **Impact-First** format: 'I built a platform that achieved Z.' Your goal is to make the recruiter stop scrolling and say, 'That's interesting, I want to know more.' Never bury the lead."

#### **2. Marco Rossi (Technical Recruiter): "Principle of Scannability & Keywords"**

"I have less than 15 seconds to look at your profile before I decide whether to dig deeper. You have to make my job easy. This means two things:

* **Front-load the impact:** Start every bullet point with the most impressive number. Don't write 'I worked on a project that eventually increased efficiency by 50%.' Write '**Increased efficiency by 50%** by building...' My eyes will catch the number first, and that's what makes me read the rest of the line.
* **Use the right keywords:** Your tech stack is not just a list; it's a set of keywords that I use to find you. Be specific. Don't just say 'Google Cloud'; say 'Google Cloud Run, Cloud Functions.' Don't just say 'AI'; say 'Vector Embeddings, Natural Language Processing, RAG.' Be precise, be clear, and structure it so my system—and my eyes—can parse it instantly."

#### **3. Isabelle Dubois (Amazon Hiring Manager): "Principle of Absolute Ownership"**

"Your language must reflect that you are the single-threaded owner of your results. This is non-negotiable. Go through every line you write and hunt down passive language.

* **Eliminate weak phrases:** 'Was involved in,' 'contributed to,' 'helped with,' 'was part of a team that...' These are red flags. They suggest you were a passenger.
* **Use active, declarative statements:** '**I built,**' '**I designed,**' '**I delivered,**' '**I reduced,**' '**I owned.**'
* **Quantify your ownership:** Connect every action you took to a measurable customer or business outcome. If you can't measure it, you can't prove you owned the result. Your description is a testament to the Leadership Principles of **Ownership** and **Delivering Results**. Every word should reinforce them."

#### **4. David Chen (Meta AI/ML Recruiter): "Principle of the Product Mindset"**

"Stop describing your work as a 'project' and start framing it as a 'product.' A project has a start and end date. A product has users, metrics, and a future. Even for a hackathon entry, you must demonstrate this thinking. Before you write, ask yourself:

* **Who was the customer/user?** (Demonstrates customer obsession)
* **How did I measure success?** (Shows you're data-driven)
* **What was the user growth or engagement?** (Shows you think about adoption)
* **What would be the next step to scale it?** (Shows you think about the future)

You don't need to write an essay, but your bullet points should hint at these answers. 'Empowered 500 students' is good. 'Scaled from 50 to 500 users in 3 months by improving the recommendation algorithm' is the kind of product-centric thinking that gets you hired."

#### **5. Dr. Kenji Tanaka (AI/ML Researcher): "Principle of Technical Precision"**

"Your technical claims must be both credible and clear. 'AI-powered' is a buzzword; you must substantiate it.

* **Connect the tool to the feature:** Don't just list technologies. Explain their purpose in a concise way. 'Used Vector Embeddings' is a claim. 'Used Vector Embeddings **for high-accuracy semantic search**' is a demonstration of knowledge.
* **Be specific and honest:** If you used a specific library like Scikit-learn or a pre-trained model from Hugging Face, say so. It shows you know the landscape.
* **Structure your tech stack logically:** Don't throw everything into one bucket. Grouping by 'Backend,' 'Frontend,' 'Databases,' or 'AI/ML' proves you have an organized architectural mind. It shows you understand how the system fits together."

---

### **The Final Blueprint: Your A-I-M Framework for Impactful Descriptions**

This is the synthesis of the experts' advice into a step-by-step process. Use this as a checklist for every award, project, or experience you add. The framework is **A-I-M**: **Audience & Action, Impact, Mechanics.**

#### **Step 1: Audience & Action (The Headline)**

This is your story, your narrative hook. It combines Chloe's storytelling with Isabelle's ownership.

* **Formula:** `[Powerful Action Verb] + [Specific, Intriguing Product/Outcome] + [To Solve X Problem / For Y Audience]`
* **Checklist:**
  * [ ] Does it start with a strong verb like "Built," "Created," "Launched," "Designed," "Engineered"?
  * [ ] Is the outcome specific and unique (e.g., "first AI-powered scholarship platform" vs. "a web application")?
  * [ ] Does it immediately tell the reader what problem you solved or who you helped?
  * [ ] Does it sound like an owner, not a participant?

#### **Step 2: Impact (The Bullet Points)**

This is your proof. It combines Marco's scannability, David's product mindset, and Isabelle's focus on results. Frame each bullet point using the **R-A-C-I** method: **Result-Action-Context-Impact.**

* **Formula:** `[Quantifiable Result] + [by doing Action X] + [in the context of Y] + [which impacted Z].` (You don't need all parts for every bullet, but always lead with the Result).
* **Checklist for each bullet point:**
  * [ ] **Result:** Does it start with the most impressive number? ($XXX, YYY users, Z% improvement).
  * [ ] **Action:** Does it use an active "I" verb (even if the "I" is implied)? "Delivered," "Reduced," "Optimized."
  * [ ] **Context:** Is it clear what the goal was or what problem you were solving?
  * [ ] **Impact:** Does it focus on the user/customer benefit, not just your personal achievement?

#### **Step 3: Mechanics (The Tech Stack & CTA)**

This is your toolkit. It reflects Dr. Tanaka's precision and ensures the recruiter can take the next step.

* **Formula:** A clearly labeled, logically grouped list of technologies.
* **Checklist:**
  * [ ] Is there a clear heading like "**Tech Stack**" or "**Technologies Used**"?
  * [ ] Are the technologies grouped logically (e.g., Backend, Frontend, AI/ML, DevOps)?
  * [ ] Have you added a brief, powerful context where necessary (e.g., "PostgreSQL (Database)," "Google Chirp (Speech-to-Text)")?
  * [ ] Is there a clear, simple **Call to Action (CTA)** like "➡️ **View Project Case Study**" or "➡️ **See the Code on GitHub**"?

By following this **A-I-M** framework, you will consistently produce descriptions that are scannable, credible, and powerfully framed for the most competitive roles. You have now internalized the roundtable.


by Carl Kho Nov 1 2025