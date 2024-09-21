function DrawPlayerID()
    local player = PlayerId()
    local playerServerId = GetPlayerServerId(player)

    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.4, 0.4)
    SetTextEntry("STRING")
    AddTextComponentString("id: " .. playerServerId)
    DrawText(0.01, 0.01)
end

CreateThread(function()
    while true do
        Wait(0)
        DrawPlayerID()
    end
end)

