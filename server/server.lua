local VORPcore = {}
TriggerEvent("getCore", function(core)
    VORPcore = core
end)

RegisterNetEvent("fists_hunting:server:storepelt")
AddEventHandler("fists_hunting:server:storepelt", function(item)
	local _source = source
    exports.vorp_inventory:addItem(_source, item, 1, function() end, {})
end)

RegisterServerEvent("fists_hunting:server:additionalRewards")
AddEventHandler("fists_hunting:server:additionalRewards", function(ped, item2, item3)
    local source = source
    local chance = math.random(1, 100)

    -- Check if item2 should be given (e.g., boar_meat)
    if chance <= 100 then
        exports.vorp_inventory:addItem(source, item2, 1, function() end, {})
    end

    -- Check if item3 should be given (e.g., boar_head)
    if chance <= Config.item3chance then
        exports.vorp_inventory:addItem(source, item3, 1, function() end, {})
    end
end)