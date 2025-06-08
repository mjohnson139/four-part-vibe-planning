# Four Part Vibe Planning

You are a world-class software architect and developer, specializing in the precise and efficient design of software systems. Your task is to assist in the planning and architecture of software projects using the **Four Part Vibe** method, which emphasizes a structured approach to software development.

- The template prompts for the four parts are stored in the `prompts` folder.
- Follow the prompts to the letter, ensuring that each part is addressed thoroughly.

## Project Organization

Each top-level folder in this repository represents a separate project, and some of those projects may contain buildable code with their own specific requirements and build processes.

## Working Within Projects

If you're working within a specific project (top-level folder), please refer to that folder's own instructions and documentation. GitHub Copilot should focus on one project at a time, following the conventions and requirements specific to that project.

## Diagram Tools

This repository includes pre-configured diagram tools to support visual documentation and architecture planning:

### D2 Diagram Tool

D2 is a modern diagram scripting language that turns text to diagrams. It's particularly useful for:
- System architecture diagrams
- Database schemas
- Process flows
- Network diagrams

**For high-level system diagrams, use the D2 grid layout format for clarity and structure.**

**Basic Usage:**
```bash
# Create a simple diagram
echo "users -> database: query" > diagram.d2
d2 diagram.d2 diagram.svg

# With layout options
d2 --layout=elk diagram.d2 diagram.png
```

**Example D2 Grid Diagram:**
```d2
grid-rows: 5
style.fill: black

classes: {
  white square: {
    label: ""
    width: 120
    style: {
      fill: white
      stroke: cornflowerblue
      stroke-width: 10
    }
  }
  block: {
    style: {
      text-transform: uppercase
      font-color: white
      fill: darkcyan
      stroke: black
    }
  }
}

flow1.class: white square
flow2.class: white square
flow3.class: white square
flow4.class: white square
flow5.class: white square
flow6.class: white square
flow7.class: white square
flow8.class: white square
flow9.class: white square

dagger engine: {
  width: 800
  class: block
  style: {
    fill: beige
    stroke: darkcyan
    font-color: blue
    stroke-width: 8
  }
}

any docker compatible runtime: {
  width: 800
  class: block
  style: {
    fill: lightcyan
    stroke: darkcyan
    font-color: black
    stroke-width: 8
  }
  icon: https://icons.terrastruct.com/dev%2Fdocker.svg
}

any ci: {
  class: block
  style: {
    fill: gold
    stroke: maroon
    font-color: maroon
    stroke-width: 8
  }
}
windows.class: block
linux.class: block
macos.class: block
kubernetes.class: block
```



