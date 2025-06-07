# Part 1 Planning Notes

## Key Architectural Decisions Made

### Local-First Privacy Approach
- All user progress and personal data stored locally on device using SQLite
- Only practitioner data and booking information stored in cloud (Supabase)
- This creates a hybrid architecture that respects privacy while enabling key features

### AI Integration Strategy
- OpenAI API for conversational onboarding and dynamic session coaching
- Prompts can be pre-generated and cached locally to reduce API costs at scale
- Consider rate limiting and cost optimization strategies for 100K users

### Scalability Considerations
- FastAPI backend can handle high concurrency 
- Supabase provides managed PostgreSQL with good scaling capabilities
- Azure App Service can auto-scale based on demand
- CDN for audio file delivery to reduce server load

### Technology Alignment
- React Native with Expo provides cross-platform efficiency
- FastAPI + SQLModel creates a clean, type-safe backend
- Supabase handles auth complexity and provides real-time capabilities
- PostHog analytics respects privacy while providing insights

## Areas Requiring Further Clarification
- Exact practitioner verification and onboarding process
- Specific breathing techniques beyond basic 5-second pattern
- Data export/import mechanisms for device switching
- Offline vs online feature boundaries
- Content moderation for practitioner interactions

## Future Architecture Evolution
- Consider microservices split when scaling beyond 100K users
- Evaluate local ML models for reduced API dependency
- Plan for real-time features (group sessions, live practitioner interaction)
- Consider edge computing for reduced latency in AI interactions