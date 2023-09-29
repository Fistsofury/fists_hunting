local VORPcore = {}
TriggerEvent("getCore", function(core)
    VORPcore = core
end)

RegisterNetEvent("fists_hunting:server:storepelt")
AddEventHandler("fists_hunting:server:storepelt", function(item)
	local _source = source
    exports.vorp_inventory:addItem(_source, item, 1, function() end, {})
end)
