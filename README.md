# 🪟 hypr-agentic-config

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Hyprland: 0.56](https://img.shields.io/badge/Hyprland-0.56+-cyan.svg)](https://hyprland.org)
[![Validated: hypr-doctor](https://img.shields.io/badge/validated-hypr--doctor-green.svg)](https://github.com/apravint/hypr-doctor)

> **Clean, conflict-free, production-ready Hyprland 0.56 + Waybar dotfiles and systemd autostart suite for autonomous Linux desktops.**  
> Pre-configured with zero duplicate keybindings, seamless multi-monitor detection, submaps, and dedicated `$mainMod CTRL ALT` AI agent hotkeys.

---

## ⚡ Highlights

- 🛡️ **Zero Keybinding Conflicts:** Fully audited and validated via [`hypr-doctor`](https://github.com/apravint/hypr-doctor) with 0 duplicate keybinds or submap collisions.
- 🚀 **Autostart Architecture:** Two-tier startup separating background hardware daemons (`systemd --user`) from graphical Wayland UI components (`exec-once`).
- 📊 **Modern Waybar:** Glassmorphic status bar with workspace icons, audio/mic sliders, MCP status pills, and battery/network telemetry.
- 🤖 **Dedicated Agentic Keybinds:** Conflict-free `$mainMod CTRL ALT, <key>` layer for AI swarms, Paperclip governance boards, architecture mappers, and multimedia studios.

---

## ⌨️ Dedicated Keybinding Map

### 🪟 Window & Workspace Controls
| Key Combination | Action |
| :--- | :--- |
| `Super + Return` | Launch default terminal (Alacritty) |
| `Super + B` | Launch primary browser |
| `Super + E` | Launch file manager |
| `Super + Q` / `Super + W` | Close / kill active window |
| `Super + V` | Toggle floating mode |
| `Super + F` | Toggle fullscreen |
| `Super + G` | Toggle window group / tabbed mode |
| `Super + Space` | Open application launcher |
| `Super + S` | Toggle drop-down scratchpad workspace |
| `Super + R` | Enter interactive window resize submap |

### 🤖 Autonomous AI & Framework Suite
| Key Combination | Target Application / Tool |
| :--- | :--- |
| `Super + Ctrl + Alt + O` | OpenRig Multi-Agent Terminal Team |
| `Super + Ctrl + Alt + P` | Paperclip Virtual Company Board (`:3100`) |
| `Super + Ctrl + Alt + I` | WorldMonitor Global Situational Radar |
| `Super + Ctrl + Alt + F` | Quantitative Financial Valuation & DCF |
| `Super + Ctrl + Alt + S` | 6-Phase Adversarial Security Audit |
| `Super + Ctrl + Alt + A` | Interactive Architecture Map (`archify`) |
| `Super + Ctrl + Alt + G` | 600+ Model Generative AI Studio |
| `Super + Ctrl + Alt + C` | ComfyUI Generative Diffusion Canvas (`:8188`) |
| `Super + Ctrl + Alt + M` | YuE2 Music & Vocal Score Studio |

---

## 🚀 Installation

```bash
git clone https://github.com/apravint/hypr-agentic-config.git
cd hypr-agentic-config
./install.sh
```

The installer automatically backs up any existing `~/.config/hypr` and `~/.config/waybar` directories to `*.bak.<timestamp>` before deploying.

---

## 🔄 Boot & Autostart Architecture

### 1. Systemd User Daemons (`default.target`)
The following units start on boot independently of the graphical compositor:
- `iram-mcp-server.service`: FastMCP JSON-RPC server (`127.0.0.1:8991/sse`).
- `iram-hub.service`: Sovereign Command Hub dashboard (`127.0.0.1:8990`).
- `iram-dual-wifi-keepalive.service`: Dual Wi-Fi ping keepalive daemon.

### 2. Graphical Session (`exec-once`)
When the Hyprland session loads:
- Status bar: `waybar`
- Notifications: `mako`
- Polkit: Authentication agent
- Wallpaper: `swaybg`
- Clipboard: `cliphist`

---

## 📄 License

MIT License. Crafted and maintained by [apravint](https://github.com/apravint).
