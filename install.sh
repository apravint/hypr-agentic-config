#!/usr/bin/env bash
# ==============================================================================
# hypr-agentic-config: Turnkey Installer
# https://github.com/apravint/hypr-agentic-config
# ==============================================================================
set -euo pipefail

BACKUP_TIME=$(date +%s)
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

echo "🪟 Installing hypr-agentic-config..."

# 1. Backup existing configurations
if [ -d "$CONFIG_DIR/hypr" ]; then
    echo "Backing up existing Hyprland config to $CONFIG_DIR/hypr.bak.$BACKUP_TIME..."
    cp -r "$CONFIG_DIR/hypr" "$CONFIG_DIR/hypr.bak.$BACKUP_TIME"
fi

if [ -d "$CONFIG_DIR/waybar" ]; then
    echo "Backing up existing Waybar config to $CONFIG_DIR/waybar.bak.$BACKUP_TIME..."
    cp -r "$CONFIG_DIR/waybar" "$CONFIG_DIR/waybar.bak.$BACKUP_TIME"
fi

# 2. Deploy Hyprland & Waybar dotfiles
mkdir -p "$CONFIG_DIR/hypr" "$CONFIG_DIR/waybar"
cp -r hypr/* "$CONFIG_DIR/hypr/"
cp -r waybar/* "$CONFIG_DIR/waybar/"
echo "✅ Deployed Hyprland & Waybar configurations to $CONFIG_DIR"

# 3. Deploy systemd user services
mkdir -p "$CONFIG_DIR/systemd/user"
cp systemd/*.service "$CONFIG_DIR/systemd/user/"
echo "✅ Deployed systemd user units to $CONFIG_DIR/systemd/user"

# 4. Reload systemd daemon
systemctl --user daemon-reload
echo "✅ Systemd user daemon reloaded."

# 5. Validate with hypr-doctor if available
if command -v hypr-doctor >/dev/null 2>&1; then
    echo "🩺 Auditing configuration with hypr-doctor..."
    hypr-doctor check "$CONFIG_DIR/hypr/hyprland.conf" || true
fi

# 6. Reload compositor if running
if [ -n "${HYPRLAND_INSTANCE_SIGNATURE:-}" ]; then
    echo "⚡ Reloading active Hyprland session..."
    hyprctl reload || true
fi

echo ""
echo "🎉 Installation complete! Conflict-free Hyprland 0.56 desktop is ready."
