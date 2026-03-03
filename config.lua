--[[
    ██╗     ██╗  ██╗██████╗        ██████╗ ██████╗ ██████╗ ███████╗
    ██║     ╚██╗██╔╝██╔══██╗      ██╔════╝██╔═══██╗██╔══██╗██╔════╝
    ██║      ╚███╔╝ ██████╔╝█████╗██║     ██║   ██║██████╔╝█████╗  
    ██║      ██╔██╗ ██╔══██╗╚════╝██║     ██║   ██║██╔══██╗██╔══╝  
    ███████╗██╔╝ ██╗██║  ██║      ╚██████╗╚██████╔╝██║  ██║███████╗
    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝       ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝

    🐺 LXR Core - Scoreboard System

    This configuration file controls the scoreboard system for RedM.
    Players can view server activity, police/ambulance counts, and
    illegal action availability via an interactive scoreboard UI.

    ═══════════════════════════════════════════════════════════════════════════════
    SERVER INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Server:      The Land of Wolves 🐺
    Tagline:     Georgian RP 🇬🇪 | მგლების მიწა - რჩეულთა ადგილი!
    Description: ისტორია ცოცხლდება აქ! (History Lives Here!)
    Type:        Serious Hardcore Roleplay
    Access:      Discord & Whitelisted

    Developer:   iBoss21 / The Lux Empire
    Website:     https://www.wolves.land
    Discord:     https://discord.gg/CrKcWdfd3A
    GitHub:      https://github.com/iBoss21
    Store:       https://theluxempire.tebex.io
    Server:      https://servers.redm.net/servers/detail/8gj7eb

    ═══════════════════════════════════════════════════════════════════════════════

    Version: 1.3.0

    Framework Support:
    - LXR Core (Primary)
    - RSG Core (Compatible)
    - VORP Core (Compatible)
    - RedEM:RP (Compatible)
    - QBR Core (Compatible)
    - QR Core (Compatible)
    - Standalone (Compatible)

    ═══════════════════════════════════════════════════════════════════════════════
    CREDITS
    ═══════════════════════════════════════════════════════════════════════════════

    Script Author: iBoss21 / The Lux Empire for The Land of Wolves

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

-- ═══════════════════════════════════════════════════════════════════════════════
-- 🐺 RESOURCE NAME PROTECTION - RUNTIME CHECK
-- ═══════════════════════════════════════════════════════════════════════════════

local REQUIRED_RESOURCE_NAME = "lxr-scoreboard"
local currentResourceName = GetCurrentResourceName()

if currentResourceName ~= REQUIRED_RESOURCE_NAME then
    error(string.format([[

        ═══════════════════════════════════════════════════════════════════════════════
        ❌ CRITICAL ERROR: RESOURCE NAME MISMATCH ❌
        ═══════════════════════════════════════════════════════════════════════════════

        Expected: %s
        Got: %s

        This resource is branded and must maintain the correct name.
        Rename the folder to "%s" to continue.

        🐺 wolves.land - The Land of Wolves

        ═══════════════════════════════════════════════════════════════════════════════

    ]], REQUIRED_RESOURCE_NAME, currentResourceName, REQUIRED_RESOURCE_NAME))
end

Config = Config or {}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ SERVER BRANDING & INFO ████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.ServerInfo = {
    name        = 'The Land of Wolves 🐺',
    tagline     = 'Georgian RP 🇬🇪 | მგლების მიწა - რჩეულთა ადგილი!',
    description = 'ისტორია ცოცხლდება აქ!',
    type        = 'Serious Hardcore Roleplay',
    access      = 'Discord & Whitelisted',
    website     = 'https://www.wolves.land',
    discord     = 'https://discord.gg/CrKcWdfd3A',
    github      = 'https://github.com/iBoss21',
    store       = 'https://theluxempire.tebex.io',
    developer   = 'iBoss21 / The Lux Empire',
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ FRAMEWORK CONFIGURATION ███████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

--[[
    Framework Priority (in order):
    1. LXR-Core (Primary)
    2. RSG-Core (Primary)
    3. VORP Core (Supported)
    4. RedEM:RP  (Optional - if detected)
    5. QBR-Core  (Optional - if detected)
    6. QR-Core   (Optional - if detected)
    7. Standalone (Fallback)
]]

Config.Framework = 'lxr-core' -- 'auto' or manual: 'lxr-core', 'rsg-core', 'vorp_core', 'redem_roleplay', 'qbr-core', 'qr-core', 'standalone'

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ SCOREBOARD SETTINGS ███████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

-- Open scoreboard key
Config.OpenKey = 0xD8F73058

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 8) -- It returnes 64 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["storerobbery"] = {
        minimum = 2,
        busy = false,
    },
    ["bankrobbery"] = {
        minimum = 3,
        busy = false,
    },
    ["jewelry"] = {
        minimum = 3,
        busy = false,
    },
    ["pacific"] = {
        minimum = 5,
        busy = false,
    },
}

-- Current Cops Online
Config.CurrentCops = 0

-- Current Ambulance / Doctors Online
Config.CurrentAmbulance = 0