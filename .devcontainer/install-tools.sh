#!/bin/bash

# Post-create script for installing diagram tools
# Based on .github/copilot-setup-steps.yml

set -e

echo "🚀 Installing diagram tools for Four Part Vibe Planning..."

# Install D2 diagram tool
echo "📊 Installing D2 diagram tool..."
curl -fsSL https://d2lang.com/install.sh | sh -s --

# Add D2 to PATH in bashrc and current session
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.local/bin:$PATH"

# Setup Structurizr CLI using Docker (avoids Java dependency issues)
echo "🏗️ Setting up Structurizr CLI with Docker..."

# Create a wrapper script for Structurizr CLI that uses Docker
sudo tee /usr/local/bin/structurizr > /dev/null << 'EOF'
#!/bin/bash
# Structurizr CLI Docker wrapper script
# Usage: structurizr [command] [options]

# Pull the latest Structurizr CLI Docker image if not present
if ! docker image inspect structurizr/cli:latest &> /dev/null; then
    echo "📥 Pulling Structurizr CLI Docker image..."
    docker pull structurizr/cli:latest
fi

# Run Structurizr CLI in Docker container with current directory mounted
docker run --rm -v "$PWD":/usr/local/structurizr structurizr/cli:latest "$@"
EOF

sudo chmod +x /usr/local/bin/structurizr

# Pre-pull the Docker image for faster startup
echo "📥 Pre-pulling Structurizr CLI Docker image..."
docker pull structurizr/cli:latest

# Verify installations
echo "✅ Verifying installations..."

# Check D2
if command -v d2 &> /dev/null; then
    echo "✅ D2 installed successfully: $(d2 --version)"
else
    echo "❌ D2 installation failed"
    exit 1
fi

# Check Structurizr
if command -v structurizr &> /dev/null; then
    echo "✅ Structurizr CLI wrapper installed successfully"
    # Test that Docker image is available
    if docker image inspect structurizr/cli:latest &> /dev/null; then
        echo "✅ Structurizr CLI Docker image ready"
    else
        echo "❌ Structurizr CLI Docker image not found"
        exit 1
    fi
else
    echo "❌ Structurizr CLI wrapper installation failed"
    exit 1
fi

echo "🎉 All diagram tools installed successfully!"
echo "📖 Check .github/copilot-instructions.md for usage examples"