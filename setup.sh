#!/bin/bash


if ! command -v uv >/dev/null 2>&1; then
    read -p "uv is not installed. Would you like to install it now? (y/n): " answer
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        curl -Ls https://astral.sh/uv/install.sh | sh
    else
        echo "Please install 'uv' to continue."
        echo "You can install it by running:"
        echo "  curl -Ls https://astral.sh/uv/install.sh | sh"
        echo "For more details, visit: https://docs.astral.sh/uv/getting-started/installation/"
        exit 0
    fi
fi

# Check for virtual environment in .venv
if [ ! -d ".venv" ]; then
    echo "No virtual environment found. Creating one with uv..."
    uv venv
fi

# Activate the virtual environment
if [ -f ".venv/bin/activate" ]; then
    echo "Activating virtual environment..."
    source .venv/bin/activate
else
    echo "Virtual environment activation script not found."
    exit 1
fi
