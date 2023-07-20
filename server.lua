-- server.lua

RegisterServerEvent("gethash:printToConsole")
AddEventHandler("gethash:printToConsole", function(vehicleHash)
    local source = source
    print("Player " .. GetPlayerName(source) .. " copied the vehicle hash: " .. vehicleHash)
end)
