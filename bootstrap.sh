#!/usr/bin/env bash
set -e

# Setup brew

if ! command -v brew >/dev/null; then
  echo "Installing Homebrew..."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Updating Homebrew..."
brew update

# Install apps
brew bundle

# Install node LTS versions
nvm install 18
nvm install 16
nvm install 14