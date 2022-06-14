VORP = exports.vorp_inventory:vorp_inventoryApi()

RegisterNetEvent("fists_hunting:server:storepelt")
AddEventHandler("fists_hunting:server:storepelt", function(item)
	local _source = source
    VORP.addItem(_source, item, 1)
end)
