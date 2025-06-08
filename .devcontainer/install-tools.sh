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

# Install Structurizr CLI for C4 model diagrams
echo "🏗️ Installing Structurizr CLI..."
cd /tmp
wget -q https://github.com/structurizr/cli/releases/latest/download/structurizr-cli.zip
unzip -q structurizr-cli.zip
chmod +x structurizr.sh

# Move to a location in PATH
sudo mv structurizr.sh /usr/local/bin/structurizr
rm -f structurizr-cli.zip

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
    echo "✅ Structurizr CLI installed successfully: $(structurizr version)"
else
    echo "❌ Structurizr CLI installation failed"
    exit 1
fi

echo "🎉 All diagram tools installed successfully!"
echo "📖 Check .github/copilot-instructions.md for usage examples"