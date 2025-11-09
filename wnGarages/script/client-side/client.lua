-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("wnGarages", cRP)
vSERVER = Tunnel.getInterface("wnGarages")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local allGarages = {}
local searchBlip = nil
local spawnSelected = {}
local vehHotwired = false
local animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
local anim = "machinic_loop_mechandplayer"
local currentGarage = nil
local currentVehicle = {model = nil, plate = nil}

-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('wnGarages:receberGaragens')
AddEventHandler('wnGarages:receberGaragens', function(garages)
    allGarages = garages
    CriarBlipsDeGaragem()
end)

RegisterNetEvent("wnGarages:Delete")
AddEventHandler("wnGarages:Delete", function(vehicle)
    if vehicle == nil or vehicle == "" then
        vehicle = vRP.nearVehicle(15)
    end

    if IsEntityAVehicle(vehicle) then
        local doorData = {}
        local windowData = {}
        local tyreData = {}

        for i = 0, 5 do
            doorData[i] = IsVehicleDoorDamaged(vehicle, i)
        end

        for i = 0, 5 do
            windowData[i] = IsVehicleWindowIntact(vehicle, i)
        end

        for i = 0, 7 do
            tyreData[i] = GetTyreHealth(vehicle, i) ~= 1000.0
        end

        vSERVER.tryDelete(VehToNet(vehicle), GetVehicleEngineHealth(vehicle), GetVehicleBodyHealth(vehicle), 
                         GetVehicleFuelLevel(vehicle), doorData, windowData, tyreData, GetVehicleNumberPlateText(vehicle))
    end
end)

RegisterNetEvent("wnGarages:updateLocs")
AddEventHandler("wnGarages:updateLocs", function(garageName, garageData)
    allGarages[garageName] = garageData
end)

RegisterNetEvent("wnGarages:updateRemove")
AddEventHandler("wnGarages:updateRemove", function(garageName)
    if allGarages[garageName] then
        allGarages[garageName] = nil
    end
end)

RegisterNetEvent("wnGarages:allLocs")
AddEventHandler("wnGarages:allLocs", function(garageTable)
    for k, v in pairs(garageTable) do
        allGarages[k] = v
    end
end)

RegisterNetEvent("wnGarages:Impound")
AddEventHandler("wnGarages:Impound", function()
    local impoundVehicles = vSERVER.Impound()
    if impoundVehicles and #impoundVehicles > 0 then
        for k, v in pairs(impoundVehicles) do
            exports["dynamic"]:AddButton(v["name"], "Clique para iniciar a liberação.", "garages:Impound", v["model"], false, true)
        end
        exports["dynamic"]:openMenu()
    else
        TriggerEvent("Notify", "amarelo", "Não possui veículos apreendidos.", 5000)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
function CriarBlipsDeGaragem()
    for garageName, garageData in pairs(allGarages) do
        if garageData.blip_mapa and garageData.blip_mapa.ativo then
            local coords = garageData.coord.blip
            local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
            
            SetBlipSprite(blip, garageData.blip_mapa.blipSprite or 357)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, garageData.blip_mapa.blipScale or 0.6)
            SetBlipColour(blip, garageData.blip_mapa.blipColor or 3)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(garageData.nome or "Garagem")
            EndTextCommandSetBlipName(blip)
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLE MODS
-----------------------------------------------------------------------------------------------------------------------------------------
function vehicleMods(veh, vehCustom)
    if not vehCustom then return end
    
    SetVehicleModKit(veh, 0)

    if vehCustom["wheeltype"] then
        SetVehicleWheelType(veh, vehCustom["wheeltype"])
    end

    if vehCustom["mods"] then
        for i = 0, 16 do
            if vehCustom["mods"][tostring(i)] then
                SetVehicleMod(veh, i, vehCustom["mods"][tostring(i)])
            end
        end

        for i = 17, 22 do
            if vehCustom["mods"][tostring(i)] then
                ToggleVehicleMod(veh, i, vehCustom["mods"][tostring(i)])
            end
        end

        for i = 23, 24 do
            if vehCustom["mods"][tostring(i)] then
                if not vehCustom["var"] then
                    vehCustom["var"] = {}
                end
                SetVehicleMod(veh, i, vehCustom["mods"][tostring(i)], vehCustom["var"][tostring(i)] or 0)
            end
        end

        for i = 25, 48 do
            if vehCustom["mods"][tostring(i)] then
                SetVehicleMod(veh, i, vehCustom["mods"][tostring(i)])
            end
        end
    end

    if vehCustom["neon"] then
        for i = 0, 3 do
            SetVehicleNeonLightEnabled(veh, i, vehCustom["neon"][tostring(i)])
        end
    end

    if vehCustom["extras"] then
        for i = 1, 12 do
            local onoff = tonumber(vehCustom["extras"][i])
            SetVehicleExtra(veh, i, onoff == 1 and 0 or 1)
        end
    end

    if vehCustom["liverys"] and vehCustom["liverys"] ~= 24 then
        SetVehicleLivery(veh, vehCustom["liverys"])
    end

    if vehCustom["plateIndex"] and vehCustom["plateIndex"] ~= 4 then
        SetVehicleNumberPlateTextIndex(veh, vehCustom["plateIndex"])
    end

    SetVehicleXenonLightsColour(veh, vehCustom["xenonColor"] or 0)
    SetVehicleColours(veh, vehCustom["colors"][1] or 0, vehCustom["colors"][2] or 0)
    SetVehicleExtraColours(veh, vehCustom["extracolors"][1] or 0, vehCustom["extracolors"][2] or 0)
    SetVehicleNeonLightsColour(veh, vehCustom["lights"][1] or 255, vehCustom["lights"][2] or 255, vehCustom["lights"][3] or 255)
    SetVehicleTyreSmokeColor(veh, vehCustom["smokecolor"][1] or 255, vehCustom["smokecolor"][2] or 255, vehCustom["smokecolor"][3] or 255)

    if vehCustom["tint"] then
        SetVehicleWindowTint(veh, vehCustom["tint"])
    end

    if vehCustom["dashColour"] then
        SetVehicleInteriorColour(veh, vehCustom["dashColour"])
    end

    if vehCustom["interColour"] then
        SetVehicleDashboardColour(veh, vehCustom["interColour"])
        TriggerEvent("nation:applymods", veh, vehCustom)
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN POSITION
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.spawnPosition(openGarage)
    local garageData = allGarages[openGarage]
    
    if not garageData or not garageData.coord or not garageData.coord.spawns then
        TriggerEvent("Notify", "vermelho", "Garagem inválida ou mal configurada.", 5000)
        return false
    end

    local spawns = garageData.coord.spawns
    local checkSlot = 0
    local checkPos = nil

    repeat
        checkSlot = checkSlot + 1
        if spawns[tostring(checkSlot)] then
            local spawn = spawns[tostring(checkSlot)]
            local _, groundZ = GetGroundZAndNormalFor_3dCoord(spawn[1], spawn[2], spawn[3])
            spawnSelected = {spawn[1], spawn[2], groundZ, spawn[4]}
            checkPos = GetClosestVehicle(spawnSelected[1], spawnSelected[2], spawnSelected[3], 2.501, 0, 71)
        end
    until not DoesEntityExist(checkPos) or not spawns[tostring(checkSlot)]

    if not spawns[tostring(checkSlot)] then
        TriggerEvent("Notify", "amarelo", "Vagas estão ocupadas.", 5000)
        return false
    end

    return spawnSelected
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CREATE VEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.createVehicle(vehModel, vehNet, vehEngine, vehCustom, vehWindows, vehTyres)
    if not NetworkDoesNetworkIdExist(vehNet) then return end
    
    local vehicle = NetToEnt(vehNet)
    if not DoesEntityExist(vehicle) then return end

    if vehCustom then
        local vehMods = json.decode(vehCustom)
        vehicleMods(vehicle, vehMods)
    end

    SetVehicleEngineHealth(vehicle, vehEngine + 0.0)

    if vehWindows then
        local windowData = json.decode(vehWindows)
        if windowData then
            for k, v in pairs(windowData) do
                if not v then
                    RemoveVehicleWindow(vehicle, parseInt(k))
                end
            end
        end
    end

    if vehTyres then
        local tyreData = json.decode(vehTyres)
        if tyreData then
            for k, burst in pairs(tyreData) do
                if burst then
                    SetVehicleTyreBurst(vehicle, parseInt(k), true, 1000.0)
                end
            end
        end
    end

    SetModelAsNoLongerNeeded(vehModel)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SEARCH BLIP
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.searchBlip(vehCoords)
    if DoesBlipExist(searchBlip) then
        RemoveBlip(searchBlip)
    end

    searchBlip = AddBlipForCoord(vehCoords["x"], vehCoords["y"], vehCoords["z"])
    SetBlipSprite(searchBlip, 225)
    SetBlipColour(searchBlip, 2)
    SetBlipScale(searchBlip, 0.6)
    SetBlipAsShortRange(searchBlip, true)
    
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Veículo")
    EndTextCommandSetBlipName(searchBlip)

    SetTimeout(30000, function()
        if DoesBlipExist(searchBlip) then
            RemoveBlip(searchBlip)
            searchBlip = nil
        end
    end)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- HOTWIRED ANIMATIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.startAnimHotwired()
    vehHotwired = true
    RequestAnimDict(animDict)
    
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(1)
    end

    TaskPlayAnim(PlayerPedId(), animDict, anim, 3.0, 3.0, -1, 49, 5.0, 0, 0, 0)
end

function cRP.stopAnimHotwired(vehicle)
    RequestAnimDict(animDict)
    
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(1)
    end

    vehHotwired = false
    StopAnimTask(PlayerPedId(), animDict, anim, 2.0)

    if vehicle then
        local netVeh = VehToNet(vehicle)
        SetNetworkIdCanMigrate(netVeh, true)
        SetEntityAsMissionEntity(vehicle, true, false)
        SetVehicleHasBeenOwnedByPlayer(vehicle, true)
        SetVehicleNeedsToBeHotwired(vehicle, false)
    end
end

function cRP.updateHotwired(status)
    vehHotwired = status
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- HOTWIRED LOOP
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local timeDistance = 999
        local ped = PlayerPedId()
        
        if IsPedInAnyVehicle(ped) then
            local vehicle = GetVehiclePedIsUsing(ped)
            local plateText = GetVehicleNumberPlateText(vehicle)
            
            if GetPedInVehicleSeat(vehicle, -1) == ped and not GlobalState["vehPlates"][plateText] then
                SetVehicleEngineOn(vehicle, false, true, true)
                DisablePlayerFiring(ped, true)
                timeDistance = 1
            end

            if vehHotwired and vehicle then
                DisableControlAction(1, 75, true)
                DisableControlAction(1, 20, true)
                timeDistance = 1
            end
        end

        Citizen.Wait(timeDistance)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGE INTERACTION LOOP
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local timeDistance = 999
        local ped = PlayerPedId()

        if not IsPedInAnyVehicle(ped) then
            local coords = GetEntityCoords(ped)

            for garageName, garageData in pairs(allGarages) do
                if garageData.coord and garageData.coord.blip then
                    local blipCoord = vector3(garageData.coord.blip.x, garageData.coord.blip.y, garageData.coord.blip.z)
                    local distance = #(coords - blipCoord)

                    if distance <= 50 then
                        timeDistance = 1

                        if not HasStreamedTextureDictLoaded("blip3d") then
                            RequestStreamedTextureDict("blip3d", true)
                            while not HasStreamedTextureDictLoaded("blip3d") do
                                Wait(1)
                            end
                        else
                            DrawMarker(9, garageData.coord.blip.x, garageData.coord.blip.y, garageData.coord.blip.z, 
                                      0, 0, 0, 90.0, 0.0, 0, 0.6, 0.6, 0, 255, 255, 255, 255, false, true, 1, false, "blip3d", "blip-garagem", false)
                        end

                        if IsControlJustPressed(1, 38) and distance <= 1.0 and MumbleIsConnected() then
                            local vehicles = vSERVER.Vehicles(garageName)
                            if vehicles then
                                currentGarage = garageName
                                SetNuiFocus(true, true)
                                SetCursorLocation(0.5, 0.5)
                                StartScreenEffect("MenuMGSelectionIn", 0, true)
                                SendNUIMessage({action = "showMenu"})
                            end
                        end
                    end
                end
            end
        end

        Citizen.Wait(timeDistance)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NUI CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("vehList", function(data, cb)
    vSERVER.returnVeh()
    local vehicles = vSERVER.Vehicles(currentGarage)
    if vehicles then
        cb({vehs = vehicles})
    end
end)

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({action = "hideMenu"})
    StopScreenEffect("MenuMGSelectionIn")
    cb({})
end)

RegisterNUICallback("vercarro", function(data, cb)
    currentVehicle.model = data.model
    currentVehicle.plate = data.plate
    cb({retorno = 'done'})
end)

RegisterNUICallback("reqbau", function(data, cb)
    vSERVER.checkBau(currentVehicle.model, currentVehicle.plate)
    cb({retorno = 'done'})
end)

RegisterNUICallback("trocarPlaca", function(data, cb)
    if vSERVER.trocarPlaca(currentVehicle.model) then
        cb({retorno = 'done'})
    end
end)

RegisterNUICallback("bauCarro", function(data, cb)
    vSERVER.returnBau()
    local bau = vSERVER.checkBau(currentVehicle.model, currentVehicle.plate)
    if bau then
        cb({bau = bau})
    end
end)

RegisterNUICallback("guardarCarro", function(data, cb)
    TriggerEvent("wnGarages:Delete")
    cb({})
end)

function EnumerateVehicles()
    return coroutine.wrap(function()
        local handle, veh = FindFirstVehicle()
        local success
        repeat
            coroutine.yield(veh)
            success, veh = FindNextVehicle(handle)
        until not success
        EndFindVehicle(handle)
    end)
end

RegisterNUICallback("retirarcarro", function(data, cb)
    TriggerServerEvent("wnGarages:Spawn", currentVehicle.model .. "-" .. currentGarage)
    SetNuiFocus(false, false)
    SendNUIMessage({action = "hideMenu"})
    StopScreenEffect("MenuMGSelectionIn")

    Citizen.Wait(1000)

    local ped = PlayerPedId()
    local pcoords = GetEntityCoords(ped)
    local veh = GetClosestVehicle(pcoords, 5.0, 0, 70)

    if DoesEntityExist(veh) then
        local gx, gy, gz = table.unpack(pcoords)
        local foundZ = false
        local groundZ = gz
        for i = 0, 10 do
            local success, z = GetGroundZFor_3dCoord(gx, gy, gz + (i * 5.0), 0)
            if success then
                groundZ = z
                foundZ = true
                break
            end
        end
        if not foundZ then
            groundZ = gz
        end

        SetEntityCoordsNoOffset(veh, gx, gy, groundZ + 0.5, false, false, false)
        SetVehicleOnGroundProperly(veh)
        SetEntityVelocity(veh, 0.0, 0.0, 0.0)
        FreezeEntityPosition(veh, false)
        SetEntityDynamic(veh, true)
        ActivatePhysics(veh)

        Citizen.Wait(100) 

        TaskWarpPedIntoVehicle(ped, veh, -1)

        SetEntityAlpha(ped, 150, false)
        SetEntityAlpha(veh, 150, false)
        SetEntityInvincible(veh, true)

        for vehId in EnumerateVehicles() do
            if vehId ~= veh then
                SetEntityNoCollisionEntity(veh, vehId, true)
                SetEntityNoCollisionEntity(vehId, veh, true)
            end
        end

        local handle, pedFound = FindFirstPed()
        local successPed
        repeat
            if pedFound and pedFound ~= ped then
                SetEntityNoCollisionEntity(veh, pedFound, true)
                SetEntityNoCollisionEntity(pedFound, veh, true)
            end
            successPed, pedFound = FindNextPed(handle)
        until not successPed
        EndFindPed(handle)

        Citizen.Wait(5000)

        ResetEntityAlpha(ped)
        ResetEntityAlpha(veh)
        SetEntityInvincible(veh, false)

        for vehId in EnumerateVehicles() do
            if vehId ~= veh then
                SetEntityNoCollisionEntity(veh, vehId, false)
                SetEntityNoCollisionEntity(vehId, veh, false)
            end
        end

        handle, pedFound = FindFirstPed()
        repeat
            if pedFound and pedFound ~= ped then
                SetEntityNoCollisionEntity(veh, pedFound, false)
                SetEntityNoCollisionEntity(pedFound, veh, false)
            end
            successPed, pedFound = FindNextPed(handle)
        until not successPed
        EndFindPed(handle)
    end

    cb({})
end)


