local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('sn-busstops:server:payFare', function(coords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if not Player then return end
    
    if Player.Functions.RemoveMoney('cash', Config.BusFare, "bus-fare") then
        TriggerClientEvent('sn-busstops:client:teleport', src, coords)
        TriggerClientEvent('QBCore:Notify', src, 'You paid £' .. Config.BusFare .. ' for the bus fare', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'You cannot afford the bus fare!', 'error')
    end
end) 