Citizen.CreateThread(function()
    while true do
        Wait(1000)
        local entity = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
        local model = GetEntityModel(entity)
        local carriedEntityHash = Citizen.InvokeNative(0x31FEF6A20F00B963, entity)
        local entType = GetEntityType(entity)
        local src = source

        if entType == 3 and Config.Pelts[carriedEntityHash] then
            local peltsConfig = Config.Pelts[carriedEntityHash]
            local item = peltsConfig.item
            local name = peltsConfig.name
            
            TriggerEvent('vorp:ShowAdvancedRightNotification', name, "satchel_textures", "tick", "COLOR_PURE_WHITE", 4000)
            TriggerServerEvent("fists_hunting:server:storepelt", item)
            DeleteThis(entity)
        end
    end
end)
