exports['lxr-core']:CreateCallback('lxr-scoreboard:server:GetActivity', function(source, cb)
    local PoliceCount, AmbulanceCount = 0, 0
    for k, v in pairs(exports['lxr-core']:GetPlayers()) do
        local Player = exports['lxr-core']:GetPlayer(v)
        if Player ~= nil then
            if (Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty) then
                PoliceCount += 1
            end

            if ((Player.PlayerData.job.name == "ambulance" or Player.PlayerData.job.name == "doctor") and Player.PlayerData.job.onduty) then
                AmbulanceCount += 1
            end
        end
    end
    cb(PoliceCount, AmbulanceCount)
end)

exports['lxr-core']:CreateCallback('lxr-scoreboard:server:GetPlayersArrays', function(source, cb)
    local players = {}
    for k, v in pairs(exports['lxr-core']:GetPlayers()) do
        local Player = exports['lxr-core']:GetPlayer(v)
        if Player ~= nil then
            players[Player.PlayerData.source] = {}
            players[Player.PlayerData.source].permission = exports['lxr-core']:IsOptin(Player.PlayerData.source)
        end
    end
    cb(players)
end)

RegisterNetEvent('lxr-scoreboard:server:SetActivityBusy', function(activity, bool)
    Config.IllegalActions[activity].busy = bool
    GlobalState.IllegalActions = Config.IllegalActions
end)
