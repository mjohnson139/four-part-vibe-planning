# System Architecture Diagram

## Breath Work Companion App - Layered Architecture

```mermaid
flowchart TD
    subgraph "Layer 1: Presentation Layer"
        A[React Native Mobile App]
        A1[Expo Audio Player]
        A2[Notification Manager]
        A3[Local Storage Manager]
    end
    
    subgraph "Layer 2: Gateway & Authentication"
        B[API Gateway]
        B1[Supabase Auth Service]
        B2[OAuth Providers<br/>Google, Apple, etc.]
    end
    
    subgraph "Layer 3: Application Services"
        C[FastAPI Backend Server]
        C1[Practitioner Service]
        C2[Booking Service]
        C3[Session Service]
        C4[Analytics Service]
    end
    
    subgraph "Layer 4: External Services"
        E[OpenAI API<br/>AI Coaching]
        F[Stripe API<br/>Payments]
        G[PostHog<br/>Analytics]
        H[Video Call SDK<br/>Remote Sessions]
        I[Push Notification<br/>Service]
    end
    
    subgraph "Layer 5: Data Layer"
        D1[SQLite<br/>Local Database]
        D2[Supabase PostgreSQL<br/>Cloud Database]
        D3[CDN<br/>Audio Files]
    end
    
    subgraph "Layer 6: Infrastructure"
        J[Azure App Service]
        K[Docker Containers]
        L[Load Balancer]
    end
    
    %% Layer connections
    A --> B
    A1 --> B
    A2 --> B
    A3 --> D1
    
    B --> C
    B1 --> B2
    
    C --> E
    C --> F
    C1 --> D2
    C2 --> D2
    C3 --> D2
    C4 --> G
    
    A --> H
    A2 --> I
    A1 --> D3
    
    C --> J
    J --> K
    J --> L
    
    %% Styling
    classDef presentation fill:#e3f2fd,stroke:#1976d2,stroke-width:2px
    classDef gateway fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px
    classDef services fill:#e8f5e8,stroke:#388e3c,stroke-width:2px
    classDef external fill:#fff3e0,stroke:#f57c00,stroke-width:2px
    classDef data fill:#fce4ec,stroke:#c2185b,stroke-width:2px
    classDef infrastructure fill:#efebe9,stroke:#5d4037,stroke-width:2px
    
    class A,A1,A2,A3 presentation
    class B,B1,B2 gateway
    class C,C1,C2,C3,C4 services
    class E,F,G,H,I external
    class D1,D2,D3 data
    class J,K,L infrastructure
```

## Architecture Overview

This layered architecture diagram illustrates the Breath Work Companion App's system design following standard enterprise architecture patterns, with clear separation of concerns across six distinct layers:

### Layer 1: Presentation Layer
- **React Native Mobile App**: Cross-platform mobile application providing the user interface
- **Expo Audio Player**: Handles breathing session audio playback and background sounds
- **Notification Manager**: Manages local and push notifications for user engagement
- **Local Storage Manager**: Handles local data persistence and offline functionality

### Layer 2: Gateway & Authentication
- **API Gateway**: Central entry point for all backend communications
- **Supabase Auth Service**: Managed authentication and authorization
- **OAuth Providers**: Third-party authentication (Google, Apple, Facebook, etc.)

### Layer 3: Application Services
- **FastAPI Backend Server**: High-performance API server handling business logic
- **Practitioner Service**: Manages practitioner profiles and availability
- **Booking Service**: Handles appointment scheduling and management
- **Session Service**: Manages breathing sessions and user progress
- **Analytics Service**: Processes user behavior and app performance metrics

### Layer 4: External Services
- **OpenAI API**: Provides AI-powered conversational coaching and personalization
- **Stripe API**: Secure payment processing for practitioner bookings
- **PostHog**: Privacy-focused analytics and user behavior tracking
- **Video Call SDK**: Enables remote practitioner sessions
- **Push Notification Service**: Cross-platform notification delivery

### Layer 5: Data Layer
- **SQLite Local Database**: Client-side storage for personal data and offline functionality
- **Supabase PostgreSQL**: Cloud database for shared data (practitioners, bookings)
- **CDN**: Content delivery network for audio files and static assets

### Layer 6: Infrastructure
- **Azure App Service**: Scalable cloud hosting platform
- **Docker Containers**: Containerized deployment for consistency and portability
- **Load Balancer**: Distributes traffic across multiple service instances

## Key Architectural Principles

1. **Layered Architecture**: Clear separation of concerns across presentation, gateway, service, data, and infrastructure layers
2. **Local-First Privacy**: Core user data and progress stored locally in the presentation layer
3. **API Gateway Pattern**: Centralized entry point for all backend communications and authentication
4. **Microservices Approach**: Modular backend services for scalability and maintainability
5. **Hybrid Cloud Model**: Strategic use of cloud services only where shared data is required
6. **Cross-Platform Efficiency**: React Native + Expo for unified iOS and Android development
7. **Scalable Infrastructure**: Azure App Service with containerization for elastic scaling to 100K+ users

## Data Flow

1. **User Interaction**: Mobile app captures user input in the presentation layer
2. **Authentication**: Gateway layer validates user credentials via Supabase Auth
3. **Business Logic**: Application services layer processes requests and applies business rules
4. **External Integration**: Services layer communicates with external APIs as needed
5. **Data Persistence**: Local SQLite for personal data, cloud PostgreSQL for shared data
6. **Infrastructure**: Containerized services deployed on Azure with load balancing