-- client.lua

local lastVehicleHash = nil

RegisterCommand("gethash", function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if DoesEntityExist(vehicle) and IsEntityAVehicle(vehicle) then
        local vehicleHash = GetEntityModel(vehicle)

        if lastVehicleHash ~= vehicleHash then
            lastVehicleHash = vehicleHash
            TriggerServerEvent("gethash:printToConsole", vehicleHash)
            TriggerEvent("chatMessage", "^1Vehicle Hash: ^7" .. vehicleHash)
        else
            TriggerEvent("chatMessage", "^1You already copied this vehicle's hash.")
        end
    else
        TriggerEvent("chatMessage", "^1You are not in a vehicle.")
    end
end)
