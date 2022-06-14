VORP = exports.vorp_inventory:vorp_inventoryApi()

RegisterNetEvent("fists:server:storepelt")
AddEventHandler("fists:server:storepelt", function(item)
	local _source = source
    VORP.addItem(_source, item, 1)
end)
