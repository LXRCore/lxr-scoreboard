--[[
    ██╗     ██╗  ██╗██████╗        ██████╗ ██████╗ ██████╗ ███████╗
    ██║     ╚██╗██╔╝██╔══██╗      ██╔════╝██╔═══██╗██╔══██╗██╔════╝
    ██║      ╚███╔╝ ██████╔╝█████╗██║     ██║   ██║██████╔╝█████╗  
    ██║      ██╔██╗ ██╔══██╗╚════╝██║     ██║   ██║██╔══██╗██╔══╝  
    ███████╗██╔╝ ██╗██║  ██║      ╚██████╗╚██████╔╝██║  ██║███████╗
    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝       ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝

    🐺 LXR Scoreboard - FiveM Resource Manifest

    ═══════════════════════════════════════════════════════════════════════════════
    RESOURCE INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Resource Name:  lxr-scoreboard
    Version:        1.3.0
    Author:         iBoss21 / The Lux Empire
    Description:    Multi-framework scoreboard system for RedM with police/ambulance
                    activity tracking, illegal action status, and player opt-in display.

    Server:         The Land of Wolves 🐺
    Website:        https://www.wolves.land
    Discord:        https://discord.gg/CrKcWdfd3A

    ═══════════════════════════════════════════════════════════════════════════════
    FRAMEWORK SUPPORT
    ═══════════════════════════════════════════════════════════════════════════════

    Primary:
    - LXR Core (lxr-core)
    - RSG Core (rsg-core)

    Supported:
    - VORP Core (vorp_core)

    Optional (if detected):
    - RedEM:RP (redem_roleplay)
    - QBR Core (qbr-core)
    - QR Core (qr-core)
    - Standalone (no framework)

    ═══════════════════════════════════════════════════════════════════════════════

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

fx_version 'cerulean'
game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

-- Resource Metadata
name        'LXR Scoreboard'
author      'iBoss21 / The Lux Empire'
description 'Multi-framework scoreboard with police/ambulance tracking and illegal action status'
version     '1.3.0'

-- UI Page
ui_page 'html/ui.html'

-- Lua 5.4
lua54 'yes'

-- Shared Scripts
shared_script 'config.lua'

-- Client Scripts
client_script 'client.lua'

-- Server Scripts
server_script 'server.lua'

files {
    'html/*'
}
