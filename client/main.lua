local QBCore = exports['qb-core']:GetCoreObject()
local isWaiting = false

local function WaitForBus(busStop, destinationCoords)
    if isWaiting then return end
    isWaiting = true
    
    local ped = PlayerPedId()
    
    SetEntityHeading(ped, busStop.heading)
    Wait(500)
    
    
    local animations = {
        {"missbigscore2aig_3", "wait_for_van_c"},
        {"amb@world_human_smoking@female@idle_a", "idle_b"},
        {"rcmjosh1", "idle"},
        {"friends@frt@ig_1", "trevor_impatient_wait_1"},
        {"missbigscore2aig_4", "wait_idle_c"}
    }
    
    local anim = animations[math.random(#animations)]
    RequestAnimDict(anim[1])
    
    while not HasAnimDictLoaded(anim[1]) do Wait(0) end
    
    TaskPlayAnim(ped, anim[1], anim[2], 8.0, -8.0, -1, 1, 0, false, false, false)
    
    
    if lib.progressBar({
        duration = busStop.waitTime * 1000,
        label = 'Waiting for bus...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            combat = true,
        },
    }) then
        TriggerServerEvent('sn-busstops:server:payFare', destinationCoords)
    end
    
    isWaiting = false
    ClearPedTasks(ped)
end


local function OpenDestinationMenu(busStop)
    local options = {}
    
    for _, destination in ipairs(busStop.destinations) do
        if destination.coords ~= busStop.coords then
            table.insert(options, {
                title = destination.label,
                description = 'Cost: £' .. Config.BusFare,
                onSelect = function()
                    WaitForBus(busStop, destination.coords)
                end
            })
        end
    end

    lib.registerContext({
        id = 'bus_stop_menu',
        title = 'Bus Stop - ' .. busStop.name,
        options = options
    })

    lib.showContext('bus_stop_menu')
end


CreateThread(function()
    for _, busStop in pairs(Config.BusStops) do
        
        local blip = AddBlipForCoord(busStop.coords.x, busStop.coords.y, busStop.coords.z)
        SetBlipSprite(blip, 513) 
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.6)
        SetBlipColour(blip, 3) 
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Bus Stop")
        EndTextCommandSetBlipName(blip)

        if Config.Target == "ox" then
            
            exports.ox_target:addBoxZone({
                coords = busStop.coords,
                size = vec3(1.5, 1.5, 2.0),
                rotation = busStop.heading,
                debug = false,
                options = {
                    {
                        name = 'bus_stop_' .. busStop.name,
                        icon = 'fas fa-bus',
                        label = 'Use Bus Stop',
                        onSelect = function()
                            OpenDestinationMenu(busStop)
                        end
                    }
                }
            })
        elseif Config.Target == "qb" then
            
            exports['qb-target']:AddBoxZone('bus_stop_' .. busStop.name, busStop.coords, 1.5, 1.5, {
                name = 'bus_stop_' .. busStop.name,
                heading = busStop.heading,
                debugPoly = false,
                minZ = busStop.coords.z - 1.0,
                maxZ = busStop.coords.z + 1.0,
            }, {
                options = {
                    {
                        type = "client",
                        event = "sn-busstops:client:waitForBus",
                        icon = "fas fa-bus",
                        label = "Use Bus Stop",
                        busStop = busStop
                    },
                },
                distance = 2.5
            })
        end
    end
end)


RegisterNetEvent('sn-busstops:client:waitForBus', function(data)
    OpenDestinationMenu(data.busStop)
end)

RegisterNetEvent('sn-busstops:client:teleport', function(coords)
    local ped = PlayerPedId()
    DoScreenFadeOut(500)
    Wait(500)
    SetEntityCoords(ped, coords.x, coords.y, coords.z)
    SetEntityHeading(ped, coords.w or 0.0)
    Wait(500)
    DoScreenFadeIn(500)
end) 