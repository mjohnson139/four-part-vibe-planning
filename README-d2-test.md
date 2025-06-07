# D2 Diagram Test Files

This directory contains test files for the D2 diagram tool setup.

## Files

- `hub-architecture.d2` - D2 source file defining a hub architecture diagram
- `hub-architecture-test.svg` - Test SVG file showing what the D2 output should look like

## Usage

To generate the actual SVG from the D2 source file, run:

```bash
d2 hub-architecture.d2 hub-architecture.svg
```

This will create an SVG file that shows:
- A central scheduler system (circle in blue)
- Frontend components (web app, mobile app) 
- Backend services (API server, auth service)
- Database components (primary DB, cache)
- Connections between all components flowing through the central system

## Prerequisites

The D2 tool must be installed. You can install it using the GitHub Actions workflow in `.github/copilot-setup-steps.yml` or manually via:

```bash
curl -fsSL https://d2lang.com/install.sh | sh -s --
```

## Architecture

The diagram represents a hub-and-spoke architecture where:
- All components connect through a central scheduler
- Frontend applications communicate with the backend through the scheduler
- The scheduler manages access to database resources
- This pattern provides centralized control and routing