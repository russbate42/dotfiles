#!/bin/zsh

# Download the latest Miniforge installer for Linux

set -e  # Exit on error

ARCH=$(uname -m)
OS="Linux"

printf "Detected architecture: %s\n" "$ARCH"

# Determine the correct installer based on architecture
case $ARCH in
    x86_64)
        INSTALLER="Miniforge3-${OS}-x86_64.sh"
        ;;
    aarch64)
        INSTALLER="Miniforge3-${OS}-aarch64.sh"
        ;;
    ppc64le)
        INSTALLER="Miniforge3-${OS}-ppc64le.sh"
        ;;
    *)
        printf "Unsupported architecture: %s\n" "$ARCH"
        exit 1
        ;;
esac

URL="https://github.com/conda-forge/miniforge/releases/latest/download/${INSTALLER}"

printf "Downloading Miniforge installer...\n"
printf "URL: %s\n" "$URL"

curl -L -O "$URL"

printf "\n"
printf "Download complete: %s\n" "$INSTALLER"
printf "To install, run: bash %s\n" "$INSTALLER"
