-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("wnGarages", cRP)
vPLAYER = Tunnel.getInterface("player")
vCLIENT = Tunnel.getInterface("wnGarages")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local vehSpawn = {}
local vehSignal = {}
local searchTimers = {}
local cooldownSpawn = 0
local garageLocates = {}
local workGarages = {}

GlobalState["vehPlates"] = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- INITIALIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    Wait(1000)
    print("[^5wnGarages^7] ^2Autenticado com sucesso!^7")

    local baseConfig = exports.base:getGeralConfig()
    local garagens = baseConfig.Garages

    TriggerClientEvent('wnGarages:receberGaragens', -1, garagens)
    garageLocates = garagens

    for nome, garagem in pairs(garagens) do
        if garagem.veiculos then
            workGarages[nome] = {}
            for veiculoName, _ in pairs(garagem.veiculos) do
                table.insert(workGarages[nome], veiculoName)
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVER VEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.serverVehicle(model, x, y, z, heading, vehPlate, nitroFuel, vehDoors, vehBody)
    local spawnVehicle = 0
    local mHash = GetHashKey(model)
    local myVeh = CreateVehicle(mHash, x, y, z, heading, true, true)

    while not DoesEntityExist(myVeh) and spawnVehicle <= 1000 do
        spawnVehicle = spawnVehicle + 1
        Citizen.Wait(100)
    end

    if not DoesEntityExist(myVeh) then
        return false
    end

    if not vehPlate then
        vehPlate = vRP.generatePlate()
    end
    SetVehicleNumberPlateText(myVeh, vehPlate)
    SetVehicleBodyHealth(myVeh, vehBody + 0.0)

    if vehDoors then
        local doorData = json.decode(vehDoors)
        if doorData then
            for k, v in pairs(doorData) do
                if v then
                    SetVehicleDoorBroken(myVeh, parseInt(k), true)
                end
            end
        end
    end

    local netVeh = NetworkGetNetworkIdFromEntity(myVeh)

    if model ~= "wheelchair" then
        local idNetwork = NetworkGetEntityFromNetworkId(netVeh)
        SetVehicleDoorsLocked(idNetwork, 2)

        local Nitro = GlobalState["Nitro"]
        Nitro[vehPlate] = nitroFuel or 0
        GlobalState["Nitro"] = Nitro
    end

    return true, netVeh, mHash, myVeh
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SIGNAL EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("signalRemove")
AddEventHandler("signalRemove", function(vehPlate)
    vehSignal[vehPlate] = true
end)

RegisterServerEvent("plateReveryone")
AddEventHandler("plateReveryone", function(vehPlate)
    if GlobalState["vehPlates"][vehPlate] then
        local vehPlates = GlobalState["vehPlates"]
        vehPlates[vehPlate] = nil
        GlobalState["vehPlates"] = vehPlates
    end
end)

RegisterServerEvent("plateEveryone")
AddEventHandler("plateEveryone", function(vehPlate)
    local vehPlates = GlobalState["vehPlates"]
    vehPlates[vehPlate] = true
    GlobalState["vehPlates"] = vehPlates
end)

RegisterServerEvent("platePlayers")
AddEventHandler("platePlayers", function(vehPlate, user_id)
    local userPlate = vRP.userPlate(vehPlate)
    if not userPlate then
        local vehPlates = GlobalState["vehPlates"]
        vehPlates[vehPlate] = user_id
        GlobalState["vehPlates"] = vehPlates
    end
end)

RegisterServerEvent("plateRobberys")
AddEventHandler("plateRobberys", function(vehPlate, vehName)
    if not vehPlate or not vehName then return end
    
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    if GlobalState["vehPlates"][vehPlate] ~= user_id then
        local vehPlates = GlobalState["vehPlates"]
        vehPlates[vehPlate] = user_id
        GlobalState["vehPlates"] = vehPlates
    end

    vRP.generateItem(user_id, "vehkey-" .. vehPlate, 1, true, false)

    if math.random(100) >= 50 then
        local ped = GetPlayerPed(source)
        local coords = GetEntityCoords(ped)
        local policeResult = vRP.numPermission("Police")
        
        for k, v in pairs(policeResult) do
            async(function()
                TriggerClientEvent("NotifyPush", v, {
                    code = 31,
                    imagem = "lockpick",
                    title = "Roubo de Veículo",
                    criminal = "Um roubo a " .. vehicleName(vehName) .. " - " .. vehPlate .. " foi denunciado, va ate o local e efetue a prisao.",
                    x = coords["x"],
                    y = coords["y"],
                    z = coords["z"],
                    vehicle = vehicleName(vehName) .. " - " .. vehPlate,
                    time = os.date("%H:%M"),
                    blipColor = 44
                })
            end)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- IMPOUND
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.Impound()
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return {} end

    local myVehicle = {}
    local vehicles = vRP.query("vehicles/getVehicles", {user_id = user_id})

    for k, v in ipairs(vehicles) do
        if v["arrest"] >= os.time() then
            table.insert(myVehicle, {["model"] = v["vehicle"], ["name"] = vehicleName(v["vehicle"])})
        end
    end

    return myVehicle
end

RegisterServerEvent("wnGarages:Impound")
AddEventHandler("wnGarages:Impound", function(vehName)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local vehPrice = vehiclePrice(vehName)
    TriggerClientEvent("dynamic:closeSystem", source)

    if vRP.request(source, "A liberação do veículo tem o custo de <b>$" .. parseFormat(vehPrice * 0.10) .. "</b> dólares, deseja prosseguir com a liberação do mesmo?", "Sim", "Não") then
        if vRP.paymentFull(user_id, vehPrice * 0.10) then
            vRP.execute("vehicles/paymentArrest", {user_id = user_id, vehicle = vehName})
            TriggerClientEvent("Notify", source, "verde", "Veículo liberado.", 5000)
        else
            TriggerClientEvent("Notify", source, "vermelho", "<b>Dólares</b> insuficientes.", 5000)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN COOLDOWN
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if cooldownSpawn == 1 then
            Citizen.Wait(3000)
            cooldownSpawn = 0
        end
        Citizen.Wait(500)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN VEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("wnGarages:Spawn")
AddEventHandler("wnGarages:Spawn", function(vehicleData)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local splitName = splitString(vehicleData, "-")
    local vehName = splitName[1]
    local garageName = splitName[2]

    local vehicle = vRP.query("vehicles/selectVehicles", {user_id = user_id, vehicle = vehName})
    
    if not vehicle[1] then
        vRP.execute("vehicles/addVehicles", {user_id = user_id, vehicle = vehName, plate = vRP.generatePlate(), work = "true"})
        TriggerClientEvent("Notify", source, "verde", "Veículo adicionado em sua lista de veículos.", 5000)
        return
    end

    local vehPlate = vehicle[1]["plate"]
    local vehPlates = GlobalState["vehPlates"]

    if vehSpawn[vehPlate] then
        HandleSpawnedVehicle(source, user_id, vehPlate, vehName)
    else
        HandleNewVehicleSpawn(source, user_id, vehName, garageName, vehicle[1], vehPlate, vehPlates)
    end
end)

function HandleSpawnedVehicle(source, user_id, vehPlate, vehName)
    if vehSignal[vehPlate] == nil then
        if searchTimers[user_id] == nil then
            searchTimers[user_id] = os.time()
        end

        if os.time() >= parseInt(searchTimers[user_id]) then
            searchTimers[user_id] = os.time() + 60
            local vehNet = vehSpawn[vehPlate][3]
            local idNetwork = NetworkGetEntityFromNetworkId(vehNet)
            
            if DoesEntityExist(idNetwork) and not IsPedAPlayer(idNetwork) and GetEntityType(idNetwork) == 2 then
                vCLIENT.searchBlip(source, GetEntityCoords(idNetwork))
                TriggerClientEvent("Notify", source, "amarelo", "Rastreador do veículo foi ativado por <b>30 segundos</b>, lembrando que se o mesmo estiver em movimento a localização pode ser imprecisa.", 10000)
            else
                if vehSpawn[vehPlate] then
                    vehSpawn[vehPlate] = nil
                end
                local vehPlates = GlobalState["vehPlates"]
                if vehPlates[vehPlate] then
                    vehPlates[vehPlate] = nil
                    GlobalState["vehPlates"] = vehPlates
                end
                TriggerClientEvent("Notify", source, "verde", "A seguradora efetuou o resgate do seu veículo e o mesmo já se encontra disponível para retirada.", 5000)
            end
        else
            TriggerClientEvent("Notify", source, "amarelo", "Rastreador só pode ser ativado a cada <b>60 segundos</b>.", 5000)
        end
    else
        TriggerClientEvent("Notify", source, "amarelo", "Rastreador está desativado.", 5000)
    end
end

function HandleNewVehicleSpawn(source, user_id, vehName, garageName, vehicleData, vehPlate, vehPlates)
    if vehicleData["tax"] <= os.time() and vehicleData["tax"] ~= "true" then
        TriggerClientEvent("Notify", source, "amarelo", "Taxa do veículo atrasada, efetue o pagamento através do sistema da concessionária.", 5000)
    elseif vehicleData["arrest"] >= os.time() then
        TriggerClientEvent("Notify", source, "amarelo", "Veículo apreendido, dirija-se até o <b>Impound</b> e efetue o pagamento da liberação do mesmo.", 5000)
    else
        if vehicleData["rental"] ~= 0 and vehicleData["rental"] <= os.time() then
            TriggerClientEvent("Notify", source, "amarelo", "Validade do veículo expirou, efetue a renovação do mesmo.", 5000)
            return
        end

        local Coords = vCLIENT.spawnPosition(source, garageName)
        if not Coords then return end

        local vehMods = nil
        local custom = vRP.query("entitydata/getData", {dkey = "custom:" .. user_id .. ":" .. vehName})
        if #custom > 0 then
            vehMods = custom[1]["dvalue"]
        end

        SpawnVehicleProcess(source, user_id, vehName, Coords, vehPlate, vehicleData, vehMods, vehPlates)
    end
end

function SpawnVehicleProcess(source, user_id, vehName, Coords, vehPlate, vehicleData, vehMods, vehPlates)
    if garageLocates[garageName] and garageLocates[garageName][""] then
        if vRP.userPremium(user_id) then
            ExecuteSpawn(source, user_id, vehName, Coords, vehPlate, vehicleData, vehMods, vehPlates)
        else
            local vehPrice = vehiclePrice(vehName)
            if vRP.request(source, "Desejar retirar seu veículo?") then
                if vRP.getBank(user_id) >= parseInt(vehPrice * 0.00) then
                    ExecuteSpawn(source, user_id, vehName, Coords, vehPlate, vehicleData, vehMods, vehPlates)
                else
                    TriggerClientEvent("Notify", source, "vermelho", "<b>Dólares</b> insuficientes.", 5000)
                end
            end
        end
    else
        ExecuteSpawn(source, user_id, vehName, Coords, vehPlate, vehicleData, vehMods, vehPlates)
    end
end

function ExecuteSpawn(source, user_id, vehName, Coords, vehPlate, vehicleData, vehMods, vehPlates)
    Citizen.Wait(600)
    if cooldownSpawn == 0 then
        cooldownSpawn = 1
        TriggerClientEvent("dynamic:closeSystem", source)
        
        local netExist, netVeh, mHash = cRP.serverVehicle(vehName, Coords[1], Coords[2], Coords[3], Coords[4], vehPlate, vehicleData["nitro"], vehicleData["doors"], vehicleData["body"])

        if netExist then
            local engineHealth = mHash == -276744698 and 1000000 or vehicleData["engine"]
            vCLIENT.createVehicle(-1, mHash, netVeh, engineHealth, vehMods, vehicleData["windows"], vehicleData["tyres"])
            TriggerEvent("engine:tryFuel", vehPlate, vehicleData["fuel"])
            vehSpawn[vehPlate] = {user_id, vehName, netVeh}

            vehPlates[vehPlate] = user_id
            GlobalState["vehPlates"] = vehPlates
        end
    else
        TriggerClientEvent("Notify", source, "vermelho", "Aguarde um Pouco", 5000)
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("car", function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if not user_id or not vRP.hasGroup(user_id, "Admin") then return end

    local ped = GetPlayerPed(source)
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local vehPlate = "VEH" .. math.random(10000, 99999)
    
    local netExist, netVeh, mHash, myVeh = cRP.serverVehicle(args[1], coords["x"], coords["y"], coords["z"], heading, vehPlate, 200, nil, 1000)

    if not netExist then return end

    vCLIENT.createVehicle(-1, mHash, netVeh, 1000, nil, false, false)
    vehSpawn[vehPlate] = {user_id, args[1], netVeh}
    TriggerEvent("engine:tryFuel", vehPlate, 100)
    SetPedIntoVehicle(ped, myVeh, -1)

    local vehPlates = GlobalState["vehPlates"]
    vehPlates[vehPlate] = user_id
    GlobalState["vehPlates"] = vehPlates
end)

RegisterCommand("dv", function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if not user_id or not vRP.hasGroup(user_id, "Admin") then return end
    TriggerClientEvent("wnGarages:Delete", source)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLE KEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("wnGarages:vehicleKey")
AddEventHandler("wnGarages:vehicleKey", function(entity)
    local source = source
    local vehPlate = entity[1]
    local user_id = vRP.getUserId(source)
    if user_id and GlobalState["vehPlates"][vehPlate] == user_id then
        vRP.generateItem(user_id, "vehkey-" .. vehPlate, 1, true, false)
    end
end)

RegisterServerEvent("wnGarages:lockVehicle")
AddEventHandler("wnGarages:lockVehicle", function(vehNet, vehPlate)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id and GlobalState["vehPlates"][vehPlate] == user_id then
        TriggerEvent("wnGarages:keyVehicle", source, vehNet)
    end
end)

RegisterServerEvent("wnGarages:keyVehicle")
AddEventHandler("wnGarages:keyVehicle", function(source, vehNet)
    local idNetwork = NetworkGetEntityFromNetworkId(vehNet)
    local doorStatus = GetVehicleDoorLockStatus(idNetwork)

    if parseInt(doorStatus) <= 1 then
        TriggerClientEvent("Notify", source, "locked", "Veículo trancado.", 5000)
        TriggerClientEvent("sounds:source", source, "locked", 0.4)
        SetVehicleDoorsLocked(idNetwork, 2)
    else
        TriggerClientEvent("Notify", source, "unlocked", "Veículo destrancado.", 5000)
        TriggerClientEvent("sounds:source", source, "unlocked", 0.4)
        SetVehicleDoorsLocked(idNetwork, 1)
    end

    if not vRPC.inVehicle(source) then
        vRPC.playAnim(source, true, {"anim@mp_player_intmenu@key_fob@", "fob_click"}, false)
        Citizen.Wait(400)
        vRPC.stopAnim(source)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETE VEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.tryDelete(vehNet, vehEngine, vehBody, vehFuel, vehDoors, vehWindows, vehTyres, vehPlate)
    if not vehSpawn[vehPlate] then return end

    local user_id = vehSpawn[vehPlate][1]
    local vehName = vehSpawn[vehPlate][2]

    vehEngine = math.max(100, math.min(1000, parseInt(vehEngine)))
    vehBody = math.max(100, math.min(1000, parseInt(vehBody)))
    vehFuel = math.max(0, math.min(100, parseInt(vehFuel)))

    local vehicle = vRP.query("vehicles/selectVehicles", {user_id = user_id, vehicle = vehName})
    if vehicle[1] then
        vRP.execute("vehicles/updateVehicles", {
            user_id = user_id,
            vehicle = vehName,
            nitro = GlobalState["Nitro"][vehPlate] or 0,
            engine = vehEngine,
            body = vehBody,
            fuel = vehFuel,
            doors = json.encode(vehDoors),
            windows = json.encode(vehWindows),
            tyres = json.encode(vehTyres)
        })
    end

    TriggerEvent("wnGarages:deleteVehicle", vehNet, vehPlate)
end

RegisterServerEvent("wnGarages:deleteVehicleAdmin")
AddEventHandler("wnGarages:deleteVehicleAdmin", function(entity)
    TriggerEvent("wnGarages:deleteVehicle", entity[1], entity[2])
end)

RegisterServerEvent("wnGarages:deleteVehicle")
AddEventHandler("wnGarages:deleteVehicle", function(vehNet, vehPlate)
    local vehPlates = GlobalState["vehPlates"]
    if vehPlates[vehPlate] then
        vehPlates[vehPlate] = nil
        GlobalState["vehPlates"] = vehPlates
    end

    local Nitro = GlobalState["Nitro"]
    if Nitro[vehPlate] then
        Nitro[vehPlate] = nil
        GlobalState["Nitro"] = Nitro
    end

    if vehSignal[vehPlate] then
        vehSignal[vehPlate] = nil
    end

    if vehSpawn[vehPlate] then
        vehSpawn[vehPlate] = nil
    end

    local idNetwork = NetworkGetEntityFromNetworkId(vehNet)
    if DoesEntityExist(idNetwork) and not IsPedAPlayer(idNetwork) and GetEntityType(idNetwork) == 2 then
        if GetVehicleNumberPlateText(idNetwork) == vehPlate then
            DeleteEntity(idNetwork)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("wnGarages:updateGarages")
AddEventHandler("wnGarages:updateGarages", function(garageName, garageData)
    garageLocates[garageName] = {["name"] = garageName, ["payment"] = false}
    TriggerClientEvent("wnGarages:updateLocs", -1, garageName, garageData)
end)

RegisterServerEvent("wnGarages:removeGarages")
AddEventHandler("wnGarages:removeGarages", function(garageName)
    if garageLocates[garageName] then
        garageLocates[garageName] = nil
        TriggerClientEvent("wnGarages:updateRemove", -1, garageName)
    end
end)

AddEventHandler("playerConnect", function(user_id, source)
    TriggerClientEvent("wnGarages:allLocs", source, garageLocates)
end)

AddEventHandler("playerDisconnect", function(user_id)
    if searchTimers[user_id] then
        searchTimers[user_id] = nil
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLE SIGNAL
-----------------------------------------------------------------------------------------------------------------------------------------
exports("vehSignal", function(vehPlate)
    return vehSignal[vehPlate]
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLE LIST
-----------------------------------------------------------------------------------------------------------------------------------------
cRP.Vehicles = function(garage)
    local source = source
    local user_id = vRP.getUserId(source)

    if not user_id or exports["wnHud"]:Wanted(user_id) then
        return false
    end

    local garageInfo = garageLocates[garage]
    if not garageInfo then
        return false
    end

    local garageName = garageInfo["name"] or garage

    if type(garageName) == "string" and string.sub(garageName, 1, 5) == "Homes" then
        local consult = vRP.query("propertys/userPermissions", {name = garageName, user_id = user_id})
        if not consult[1] then
            return false
        end
        local ownerConsult = vRP.query("propertys/userOwnermissions", {name = garageName})
        if ownerConsult[1] and ownerConsult[1]["tax"] <= os.time() then
            TriggerClientEvent("Notify", source, "amarelo", "Taxa da propriedade atrasada.", 10000)
            return false
        end
    end

    if garageInfo["perm"] and not vRP.hasGroup(user_id, garageInfo["perm"]) then
        return false
    end

    local Vehicle = {}
    if workGarages[garageName] then
        for k, v in pairs(workGarages[garageName]) do
            table.insert(Vehicle, {
                ["model"] = v,
                ["name"] = vehicleName(v),
                plate = garageName,
                engine = 100,
                body = 100,
                fuel = 100
            })
        end
    else
        local vehicles = vRP.query("vehicles/getVehicles", {user_id = user_id})
        for k, v in ipairs(vehicles) do
            if v["work"] == "false" then
                local model = v["vehicle"]
                local name = vehicleName(model)
                if name then
                    table.insert(Vehicle, {
                        link_imgs = "http://127.0.0.1/scripts/images/cars",
                        model = model,
                        name = name,
                        plate = v["plate"],
                        engine = v["engine"] / 10,
                        body = v["body"] / 10,
                        fuel = v["fuel"]
                    })
                end
            end
        end
    end

    return Vehicle
end

cRP.returnVeh = function()
    return true
end

cRP.checkBau = function(carro, placacarro)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return {} end

    local itensBaus = {}
    local result = vRP.getSrvdata("vehChest:" .. user_id .. ":" .. carro)
    
    for k, v in pairs(result) do
        local splitName = splitString(v["item"], "-")
        local durability = 0
        local days = 1

        if splitName[2] then
            if itemDurability(v["item"]) then
                durability = parseInt(os.time() - splitName[2])
                days = itemDurability(v["item"])
            end
        end

        table.insert(itensBaus, {
            amount = parseInt(v["amount"]),
            name = itemName(v["item"]),
            peso = itemWeight(v["item"]),
            index = itemIndex(v["item"]),
            max = itemMaxAmount(v["item"]),
            type = itemType(v["item"]),
            desc = itemDescription(v["item"]),
            v = v["item"],
            k = k,
            days = days,
            durability = durability
        })
    end

    return itensBaus
end

cRP.returnBau = function()
    return true
end

cRP.trocarPlaca = function(carro)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return false end

    local vehicle = vRP.query("vehicles/selectVehicles", {user_id = user_id, vehicle = carro})
    if not vehicle[1] then
        TriggerClientEvent("Notify", source, "vermelho", "Modelo de veículo não encontrado.", 5000)
        return false
    end

    local qtditem = vRP.getInventoryItemAmount(user_id, "premiumplate")
    if not qtditem or qtditem[1] < 1 then
        TriggerClientEvent("Notify", source, "vermelho", "Você não possui <b>" .. itemName("premiumplate") .. "</b> na mochila.", 5000)
        return false
    end

    TriggerClientEvent("Notify", source, "amarelo", "Deve ser tudo em minusculas.", 5000)
    local vehPlate = vRP.prompt(source, "Placa:", "")
    
    if vehPlate == "" or string.upper(vehPlate) == "CREATIVE" then
        return false
    end

    local namePlate = string.sub(vehPlate, 1, 8)
    local plateCheck = sanitizeString(namePlate, "abcdefghijklmnopqrstuvwxyz0123456789", true)
    
    if string.len(plateCheck) ~= 8 then
        TriggerClientEvent("Notify", source, "amarelo", "O nome de definição para a placa deve conter 8 caracteres.", 5000)
        return false
    end

    if vRP.userPlate(namePlate) then
        TriggerClientEvent("Notify", source, "vermelho", "A placa escolhida já está sendo registrada em outro veículo.", 5000)
        return false
    end

    if vRP.tryGetInventoryItem(user_id, "premiumplate", 1) then
        vRP.execute("vehicles/plateVehiclesUpdate", {user_id = user_id, vehicle = carro, plate = string.upper(namePlate)})
        TriggerClientEvent("Notify", source, "verde", "Placa atualizada.", 5000)
        return true
    end

    return false
end


