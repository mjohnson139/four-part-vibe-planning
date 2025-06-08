#!/bin/bash

# Post-create script for installing D2 diagram tool only
set -e

echo "🚀 Installing D2 diagram tool for Four Part Vibe Planning..."

# Install D2 diagram tool (pinned to v0.7.0)
echo "📊 Installing D2 diagram tool v0.7.0..."
curl -fsSL https://d2lang.com/install.sh | sh -s -- v0.7.0

# Add D2 to PATH in bashrc and current session
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.local/bin:$PATH"

# Verify installation
echo "✅ Verifying D2 installation..."
if command -v d2 &> /dev/null; then
    echo "✅ D2 installed successfully: $(d2 --version)"
else
    echo "❌ D2 installation failed"
    exit 1
fi