# Breathwork Guide - AI-Powered Companion App

A cross-platform mobile application that provides personalized breath work coaching through AI-powered guidance, practitioner connections, and progress tracking.

## Project Overview

This project follows the Four-Part Vibe Coding Process methodology to build a comprehensive breath work companion app that helps users develop and maintain a consistent breathing practice.

## Key Features

- **Conversational Onboarding** - AI-powered chat interface for personalized user assessment
- **AI-Guided Breathing Sessions** - Personalized 3-minute exercises with real-time coaching
- **Progress Tracking & Gamification** - Local-first badges, streaks, and achievements
- **Daily Routine & Reminders** - Smart notification system with user preferences
- **Practitioner Discovery & Booking** - Marketplace for certified breath work practitioners

## Technology Stack

- **Frontend**: React Native + Expo
- **Backend**: FastAPI + SQLModel
- **Database**: PostgreSQL (Supabase) + SQLite (local)
- **Authentication**: Supabase Auth
- **AI Integration**: OpenAI API
- **Infrastructure**: Azure App Service

## Project Structure

```
breathwork-guide/
├── 01-planning/          # Planning & Vision Phase
│   ├── prompt.md         # The planning prompt used
│   ├── output.md         # Full planning output with features, tech, and requirements
│   └── notes.md          # Additional architectural decisions and clarifications
├── 02-features/          # Feature Specification Phase (Coming Next)
├── 03-design/            # UI/UX Design Phase (Coming Next)
├── 04-execute/           # Implementation Phase (Coming Next)
└── README.md             # This file
```

## Development Phases

### ✅ Phase 1: Planning & Vision (Completed)
- [x] Project specification and requirements
- [x] Technology stack decisions
- [x] System architecture design
- [x] MVP feature definitions
- [x] Strategic questions and considerations

### 🔄 Phase 2: Feature Specification (Next)
- [ ] Detailed feature specifications
- [ ] API design and data models
- [ ] File structure and component architecture
- [ ] Integration patterns and workflows

### 📅 Phase 3: UI/UX Design (Planned)
- [ ] User interface mockups
- [ ] User experience flows
- [ ] Design system and components
- [ ] Accessibility considerations

### 📅 Phase 4: Implementation (Planned)
- [ ] Task breakdown and execution plan
- [ ] Development environment setup
- [ ] Feature implementation
- [ ] Testing and deployment

## Privacy & Architecture

This app uses a **local-first privacy approach**:
- All user progress and personal data stored locally using SQLite
- Only practitioner data and bookings stored in cloud (Supabase)
- Hybrid architecture that respects privacy while enabling key features

## Getting Started

Navigate to the specific phase directories to understand the current progress and next steps. Start with `01-planning/` to understand the complete project vision and technical foundation.