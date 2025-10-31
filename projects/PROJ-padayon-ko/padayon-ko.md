---
title: "Built the Philippines' AI-powered scholarship platform."
shortTitle: "Padayon Ko"
date: "2024-08-15"
type: "PROJECT"
tech: "Python, Docker, Google Cloud Run, Vector Embeddings (Semantic Search), Google Chirp (Speech-to-Text), Google Synthesize (Text-to-Speech), Notion API"
thumbnail: "../images/padayon-ko.png"
links:
  live: "https://padayon-ko.example.com"
  github: "https://github.com/CarlKho-Minerva/PadayonKO"
  writeup: "/blog/padayon-ko-writeup.html"
featured: true
---

## Key Achievements

- Secured $95,050 in personal scholarships using the platform's AI-driven recommendations
- Won the Google AI for Impact Hackathon vs 22.9K+ devs and 1220 projects ($8k prize)
- Empowered 500+ students, resulting in over 200 national and 3 international scholarships awarded

## Overview

Filipino students face a massive information asymmetry when it comes to scholarships. There are thousands of opportunities scattered across different websites, each with unique requirements and deadlines. Most students don't even know where to start looking.

Padayon KO uses AI to match students with relevant scholarships based on their academic profile, financial need, and personal circumstances. The platform aggregates opportunities from multiple sources and uses semantic search to find the best matches.

## Core Features

- **Intelligent Matching**: Vector embeddings analyze scholarship requirements against student profiles
- **Voice Interface**: Speech-to-text and text-to-speech for accessibility
- **Real-time Updates**: Automated scraping keeps scholarship database current
- **Application Tracking**: Students can track their application progress

## Technical Implementation

The platform runs on Google Cloud Run with a Python backend using FastAPI. Vector embeddings powered by Sentence Transformers enable semantic matching between student profiles and scholarship requirements. The Notion API serves as the content management system for scholarship data.

## Results

Since launch, the platform has:

- Helped over 500 students find relevant scholarships
- Resulted in 200+ national and 3 international scholarships awarded
- Generated $95,050+ in personal scholarship awards for the creator
- Won recognition at the Google AI for Impact Hackathon

## Lessons Learned

Building Padayon KO taught me about the power of AI in solving real-world problems, especially information discovery and matching. The project also highlighted the importance of accessibility—many of our users preferred the voice interface over traditional text input.