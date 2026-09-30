#!/usr/bin/env bash
set -e

REPO="TU-USUARIO/termux-cleaner-pro"
INSTALL_DIR="$HOME/.local/bin"
SCRIPT="$INSTALL_DIR/cleaner"

echo "🧹 Instalando Termux Cleaner Pro..."

# Dependencias
command -v pkg >/dev/null 2>&1 && pkg update -y && pkg install -y bash coreutils findutils gawk curl

mkdir -p "$INSTALL_DIR"

# Descargar
curl -fsSL "https://raw.githubusercontent.com/$REPO/main/cleaner.sh" -o "$SCRIPT"
chmod +x "$SCRIPT"

# PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "export PATH=\"\$PATH:$INSTALL_DIR\"" >> "$HOME/.bashrc"
    echo "export PATH=\"\$PATH:$INSTALL_DIR\"" >> "$HOME/.zshrc" 2>/dev/null || true
fi

echo "✅ Instalado en $SCRIPT"
echo "🚀 Ejecuta: cleaner --dry-run"
