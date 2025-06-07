<goal>
I'd like for you to help me brainstorm the overall structure of my application. You should act like a Senior Software Engineer that has extensive experience developing, and building architecture for large scale web applications. You should ask me follow up questions as we proceed if you think it's necessary to gather a fuller picture.

To accomplish this, you take the Context below, considering:
What I'm trying to build (WHAT)
Who I'm building it for (WHO)
The pains it solves (WHY)
How it's different from the current status quo (HOW)
Any other details I give you
</goal>

<format>
Return your format in Markdown, without pre-text or post-text descriptions.

## Launch Features (MVP)
### Feature Name
2-3 sentence summary of what the feature is or does

* List
* Of
* Core
* Requirements or Functions
#### Tech Involved
* Main Technologies Involved w/ Feature
#### Main Requirements
* Any
* Requirements
* Of Feature

## Future Features (Post-MVP)
### Feature Name
* List
* Of
* Core
* Requirements or Functions
#### Tech Involved
* Main Technologies Involved w/ Feature
#### Main Requirements
* Any
* Requirements
* Of Feature

## System Diagram
An image detailing a full system diagram of the MVP. Please create a clean mermaid architecture diagram with color-coded layers, rounded containers, and clear component relationships, similar to the one attached image

## Questions & Clarifications
* list
* of
* clarifying
* questions

## List of Architecture Consideration Questions
* list
* of
* Architecture
* questions
</format>

<warnings-or-guidance>
We're focusing on high level technical architecture, not UX/UI design. We need to understand the intricacies of how the apps disparate systems will connect, and what tech will power them. Any library, framework, devops consideration, etc should be covered here
If a feature or tech choice seems ambiguous, ask me for clarification such that you would get what you need to continue
You should consider how tech choices may evolve or change if the application scales and give me recommendations with tradeoff consideration. Plan the MVP to scale easily to 100K users
We should have a clear architecture for the app, including main infrastructure considerations, services/microservices required, critical 3rd party APIs choices, etc
</warnings-or-guidance>

<context>
I'd like to build a **cross-platform mobile app** that is a **breath work companion that guides users through daily breathing exercises and connects them with certified practitioners**.

You should take inspiration from apps like **Calm and Headspace**, but it will be significantly different for the following reasons:

- **AI-powered personalized coaching** during each session rather than generic recordings
- **Direct connection to live certified breath work practitioners** for deeper work
- **Conversational onboarding** that feels personal and less intimidating
- **Local-first privacy approach** with data stored on device
- **Micro-commitment focus** - just 3 minutes daily to build the habit

Here is the full extent of how the app should function as an MVP:

- **Conversational onboarding** - AI asks name and experience level via chat interface
- **Experience assessment** - Complete beginner vs some experience with breath work
- **First exercise introduction** - 5-second inhale, 5-second exhale for 3 minutes (18 breaths)
- **AI-guided session** with relaxing background sounds and body check-in prompts
- **Post-session feedback** - AI explains the experience and benefits
- **Progress tracking** - Badge for completion, daily streak counter
- **Routine establishment** - User selects preferred time (morning/bedtime) for daily practice
- **Daily reminders** - Push notifications and app badge reminders at their chosen time
- **Practitioner discovery** - Browse and book sessions with certified practitioners
- **Local data storage** - All progress and personal data kept on device

<other-critical-notes>
WHAT - A breath work companion app that teaches techniques and connects users to practitioners
WHO - Complete beginners to breath work and people seeking stress relief/wellness
WHY - Current breath work resources are either too generic (apps) or too intimidating (jumping straight to live sessions)
HOW - AI-powered personalization + direct practitioner access + privacy-first approach
</other-critical-notes>

<current-tech-choices>
The frontend will be built in React Native using Expo
The backend will be built in Python using FastAPI
The database will be Postgres, hosted through Supabase
The authentication will use Supabase
Use SQLModel as an ORM
The server will be hosted on Azure App Service
I'd like to develop locally with a Docker container
I will use Posthog for analytics in my application
I will use Stripe for payments in my application
AI integration will use OpenAI API
Storage will be local-first on device for privacy
</current-tech-choices>
</context>