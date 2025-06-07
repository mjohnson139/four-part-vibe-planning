workspace {

    model {
        # Define people
        user = person "User" "A user of the four-part vibe planning system"
        
        # Define software systems
        vibeSystem = softwareSystem "Four-Part Vibe Planning System" "Allows users to plan and manage their vibes across four key areas" {
            # Define containers
            webApp = container "Web Application" "Provides all functionality via a web browser" "React/TypeScript"
            mobileApp = container "Mobile App" "Provides key functionality on mobile devices" "React Native"
            apiGateway = container "API Gateway" "Routes requests and handles authentication" "Node.js/Express"
            
            # Backend services
            vibeService = container "Vibe Service" "Manages vibe planning and tracking" "Node.js"
            userService = container "User Service" "Manages user accounts and preferences" "Node.js"
            notificationService = container "Notification Service" "Sends notifications and reminders" "Node.js"
            
            # Data stores
            database = container "Database" "Stores user data, vibe plans, and analytics" "PostgreSQL"
            cache = container "Cache" "Caches frequently accessed data" "Redis"
        }
        
        # External systems
        emailSystem = softwareSystem "Email System" "External email service for notifications" "External"
        pushNotificationService = softwareSystem "Push Notification Service" "External service for mobile push notifications" "External"
        
        # Define relationships
        user -> webApp "Uses"
        user -> mobileApp "Uses"
        
        webApp -> apiGateway "Makes API calls to" "HTTPS/JSON"
        mobileApp -> apiGateway "Makes API calls to" "HTTPS/JSON"
        
        apiGateway -> vibeService "Routes requests to"
        apiGateway -> userService "Routes requests to"
        apiGateway -> notificationService "Routes requests to"
        
        vibeService -> database "Reads from and writes to"
        userService -> database "Reads from and writes to"
        notificationService -> database "Reads from"
        
        vibeService -> cache "Reads from and writes to"
        userService -> cache "Reads from and writes to"
        
        notificationService -> emailSystem "Sends emails using"
        notificationService -> pushNotificationService "Sends push notifications using"
    }

    views {
        systemContext vibeSystem "SystemContext" {
            include *
            autoLayout
        }
        
        container vibeSystem "Containers" {
            include *
            autoLayout
        }
        
        styles {
            element "Person" {
                color #ffffff
                fontSize 22
                shape Person
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "External" {
                background #999999
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Database" {
                shape Cylinder
            }
        }
    }
}