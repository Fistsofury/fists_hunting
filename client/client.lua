VORPcore = {}
TriggerEvent("getCore", function(core)
    VORPcore = core
end)


Citizen.CreateThread(function()
    while true do
        Wait(1000)

        local ped = PlayerPedId()
        local carriedpelt = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
        local pelthash = Citizen.InvokeNative(0x31FEF6A20F00B963, carriedpelt)

        if Config.debug and carriedpelt then
            print("Carrying pelt:", carriedpelt)  -- Debug print
        end

        if carriedpelt then
            local peltsLength = #Config.Pelts
            for i = 1, peltsLength do
                local peltsData = Config.Pelts[i]

                if pelthash == peltsData.pelthash then
                    local name = peltsData.name
                    local item = peltsData.item
                    local item2 = peltsData.item2
                    local item3 = peltsData.item3
                    local deleted = DeleteThis(carriedpelt)

                    if Config.debug then
                        print("Deleted pelt:", deleted)  -- Debug print
                    end

                    TriggerEvent('vorp:ShowAdvancedRightNotification', name, "satchel_textures", "tick", "COLOR_PURE_WHITE", 4000)
                    TriggerServerEvent("fists_hunting:server:storepelt", item)

                    if Config.debug then
                        print("Stored pelt item:", item)  -- Debug print
                    end

                    -- Additional Rewards
                    TriggerServerEvent("fists_hunting:server:additionalRewards", ped, item2, item3)
                end
            end
        end
    end
end)


function DeleteThis(holding)
    NetworkRequestControlOfEntity(holding)
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    local entitycheck = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    local holdingcheck = GetPedType(entitycheck)
    if holdingcheck == 0 then
        return true
    else
        return false
    end
end



