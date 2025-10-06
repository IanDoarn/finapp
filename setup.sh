#!/bin/bash

if command -v uv >/dev/null 2>&1; then
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
