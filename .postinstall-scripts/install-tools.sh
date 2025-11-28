#! /bin/zsh -e

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install homebrew only if not already installed
if ! command_exists brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure brew is in PATH (for fresh installs)
if [[ -f "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f "/usr/local/bin/brew" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Install packages only if not already installed
packages=("thefuck" "git-delta")
to_install=()

for package in "${packages[@]}"; do
    if ! brew list "$package" >/dev/null 2>&1; then
        to_install+=("$package")
    fi
done

if [[ ${#to_install[@]} -gt 0 ]]; then
    brew install "${to_install[@]}"
fi
