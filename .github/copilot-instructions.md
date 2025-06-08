# GitHub Copilot Instructions

## Repository Structure and Purpose

The root of this repository is primarily for **documentation, editing templates, and detailed specifications** for app ideas using the Four Part Vibe method. 

**Important: There is nothing to build** in the root directory of this repository.

## Project Organization

Each top-level folder in this repository represents a separate project, and some of those projects may contain buildable code with their own specific requirements and build processes.

## Working Within Projects

If you're working within a specific project (top-level folder), please refer to that folder's own instructions and documentation. GitHub Copilot should focus on one project at a time, following the conventions and requirements specific to that project.

## Development Methodology

All work in this repository should generally follow the **Four Part Vibe coding method** as described in the referenced video tutorial. This methodology emphasizes:

1. **Planning & Vision** - Define project goals, requirements, and architecture
2. **Experimentation & Exploration** - Build prototypes and validate assumptions
3. **Implementation & Building** - Create production-quality code incrementally
4. **Reflection & Refinement** - Evaluate outcomes and plan improvements

## Diagram Tools

This repository includes pre-configured diagram tools to support visual documentation and architecture planning:

### D2 Diagram Tool

D2 is a modern diagram scripting language that turns text to diagrams. It's particularly useful for:
- System architecture diagrams
- Database schemas
- Process flows
- Network diagrams

**Basic Usage:**
```bash
# Create a simple diagram
echo "users -> database: query" > diagram.d2
d2 diagram.d2 diagram.svg

# With layout options
d2 --layout=dagre diagram.d2 diagram.png
```

**Example D2 Diagram:**
```d2
# System Architecture Example
users: Users {
  shape: person
}
web: Web App {
  shape: hexagon
}
api: API Server {
  shape: cylinder
}
db: Database {
  shape: stored_data
}

users -> web: HTTP requests
web -> api: API calls
api -> db: SQL queries
```

### Structurizr CLI

Structurizr CLI enables creation of C4 model diagrams for software architecture documentation.

**Basic Usage:**
```bash
# Create workspace from DSL file
structurizr export -workspace workspace.dsl -format plantuml

# Export to different formats
structurizr export -workspace workspace.dsl -format svg
structurizr export -workspace workspace.dsl -format png
```

**Example Structurizr DSL:**
```
workspace "Example System" {
    model {
        user = person "User"
        system = softwareSystem "Example System" {
            webapp = container "Web Application"
            api = container "API"
            database = container "Database"
        }
        
        user -> webapp "Uses"
        webapp -> api "Makes API calls"
        api -> database "Reads/writes"
    }
    
    views {
        systemContext system {
            include *
            autoLayout
        }
        
        container system {
            include *
            autoLayout
        }
    }
}
```

### Integration with Four Part Vibe

These diagram tools align perfectly with the Four Part Vibe methodology:

1. **Planning & Vision**: Use D2 for high-level system diagrams and Structurizr for architecture context
2. **Experimentation & Exploration**: Create quick proof-of-concept diagrams to visualize ideas
3. **Implementation & Building**: Generate detailed technical diagrams for documentation
4. **Reflection & Refinement**: Update diagrams to reflect lessons learned and architectural changes

**Recommended Workflow:**
- Store diagrams in the `images/` folder within each phase directory
- Use descriptive filenames (e.g., `01-planning/images/system-overview.svg`)
- Include both source files (.d2, .dsl) and generated images for version control
- Reference diagrams in your markdown documentation

## Contribution Guidelines

When contributing to this repository:

- Follow the Four Part Vibe methodology for any new projects or features
- Respect the documentation-first approach of the root repository
- For project-specific work, adhere to the individual project's guidelines
- Maintain the clear separation between planning/documentation and implementation phases
- Use diagram tools to enhance documentation with visual representations