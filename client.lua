function DrawPlayerID()
    local playerPed = PlayerId()
    local playerServerId = GetPlayerServerId(playerPed)

    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.4, 0.4)
    SetTextEntry("STRING")
    AddTextComponentString("id: " .. playerServerId)
    DrawText(0.01, 0.01)
end

CreateThread(function()
    while true do
        Citizen.Wait(0)
        DrawPlayerID()
    end
end)

local isInVehicleCamMode = false
