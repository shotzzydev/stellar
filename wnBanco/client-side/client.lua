local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vSERVER = Tunnel.getInterface("wnBanco")

cfg = module(GetCurrentResourceName(), "config/config")

CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        for k, v in pairs(cfg.banks) do
            local bankCoords = vector3(v[1], v[2], v[3])
            local dist = #(coords - bankCoords)

            if dist <= 5.0 then
                sleep = 5

                     if not HasStreamedTextureDictLoaded("blip3d") then
                        RequestStreamedTextureDict("blip3d", true)
                        while not HasStreamedTextureDictLoaded("blip3d") do
                            Wait(1)
                        end
                          else
                            DrawMarker(9, v[1], v[2], v[3], 0, 0, 0, 90.0, 0.0, 0, 0.6, 0.6, 0, 255, 255, 255, 255, false, true, 1, false, "blip3d", "wnBanco", false)
                        end


                if dist <= 1.5 and IsControlJustPressed(0, 38) then -- Tecla E
                    TriggerEvent("bank:openSystem")
                end
            end
        end

        Wait(sleep)
    end
end)


AddEventHandler("bank:openSystem",function()
    if vSERVER.requestWanted() then
        SetNuiFocus(true,true)
        SendNUIMessage({ action = "show" })
        vRP.playAnim(false,{"amb@prop_human_atm@male@idle_a","idle_a"},false)
    end
end)

RegisterCommand("abrirBanco", function()
    TriggerEvent("bank:openSystem")
end)

RegisterNUICallback("close",function()
    vRP.removeObjects()
    SetNuiFocus(false,false)
    SendNUIMessage({ action = "hide" })
end)

RegisterNUICallback("deposit",function(data)
    if parseInt(data["value"]) > 0 and MumbleIsConnected() then
        vSERVER.bankDeposit(data["value"])
    end
end)

RegisterNUICallback("withdraw",function(data)
    if parseInt(data["value"]) > 0 and MumbleIsConnected() then
        vSERVER.bankWithdraw(data["value"])
    end
end)
