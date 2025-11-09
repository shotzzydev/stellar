
--------------------------------
-- [ CONEXAO ] --
--------------------------------

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
src = {}
Tunnel.bindInterface("wnEmpregos",src)
vSERVER = Tunnel.getInterface("wnEmpregos")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local emservico = false
local empregoAtual = "nil"
local carroBlip = "nil"
local todosBlips = 0
local dinheiroGanhoTotal = 0
local tipoEmprego = "nil"

Citizen.CreateThread(function()
	while true do
		local msec = 400
		if not emservico then
			for k,v in pairs(Config.Empregos) do
				local ped = PlayerPedId()
				local x,y,z = table.unpack(GetEntityCoords(ped))
				local bowz,cdz = GetGroundZFor_3dCoord(v.blip['x'],v.blip['y'],v.blip['z'])
				local distance = GetDistanceBetweenCoords(v.blip['x'],v.blip['y'],cdz,x,y,z,true)
				if distance <= 10 then
					msec = 3
					if not HasStreamedTextureDictLoaded("blip3d") then
						RequestStreamedTextureDict("blip3d", true)
						while not HasStreamedTextureDictLoaded("blip3d") do
							Wait(1)
						end
						else
						DrawMarker(9, v.blip['x'],v.blip['y'],v.blip['z'],0,0,0,90.0,0.0,0,0.6,0.6,0,255, 255, 255, 255,false, true, 1, false, "blip3d", v.blip['addon'], false)
					end
					if distance <= 1.2 then
						msec = 3
						if IsControlJustPressed(0,38) then
							if v.permissao then
								if vSERVER.CheckPerm() then
									local nome,passaporte,imagem = vSERVER.ReturnInfos()
									empregoAtual = k
									tipoEmprego = v.tipo_emprego
									carroBlip = v.carro
									SetNuiFocus(true,true)
									SendNUIMessage({ action = "showMenu", empregoAtual = empregoAtual, imagem_emprego = v.imagem_emprego,nome = nome, passaporte = passaporte, imagem = imagem })
									StartScreenEffect("MenuMGSelectionIn", 0, true)
								end
							else
								local nome,passaporte,imagem = vSERVER.ReturnInfos()
								empregoAtual = k
								tipoEmprego = v.tipo_emprego
								carroBlip = v.carro
								SetNuiFocus(true,true)
								SendNUIMessage({ action = "showMenu", empregoAtual = empregoAtual, imagem_emprego = v.imagem_emprego,nome = nome, passaporte = passaporte, imagem = imagem })
								StartScreenEffect("MenuMGSelectionIn", 0, true)
							end
						end
					end
				end
			end
		end
		Wait(msec)
	end
end)

RegisterNUICallback("getTutorial",function(data,cb)
	vSERVER.getTutorial(empregoAtual)
	local getTutorial = vSERVER.returnTutorial()
	if getTutorial then
		cb({ getTutorial = getTutorial })
	end
end)

RegisterNUICallback("iniciar",function(data,cb)
	destino = 1
	if empregoAtual ~= "Pescador" then
		todosBlips = #Config.Empregos[empregoAtual].entregas
		CriandoBlip(Config.Empregos[empregoAtual].entregas,destino)
	end
	emservico = true
	TriggerEvent("hud:f7",true)
	TriggerEvent("Notify","verde","Você entrou em serviço.")
end)

RegisterNUICallback("close",function(data)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "hideMenu" })
	StopScreenEffect("MenuMGSelectionIn")
	nui_open = false
end)

RegisterKeyMapping("+sairservicown","Sair Emprego Legais.","keyboard","F7")

RegisterCommand("+sairservicown",function(source,args,rawCommand)
	if emservico then
		emservico = false
		TriggerEvent("hud:f7",false)
		RemoveBlip(blip)
		TriggerEvent("Notify","amarelo","Você saiu de serviço.")
	end
end)

local processoPesca = false
local segundosPesca = 0

Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		local ped = PlayerPedId()
		if emservico and tipoEmprego == "pescador" then
			sleep = 4
			if not processoPesca then
				local distancia = GetDistanceBetweenCoords(GetEntityCoords(ped),720.15,3868.12,28.42)
				if distancia <= 180 then
					DrawMarker(1,720.15,3868.12,28.42-1.5,0,0,0,0,0,0,350.0,350.0,50.0,255,255,255,30,0,0,0,0)
					if distancia <= 180 then
						drawTxt("PRESSIONE  ~r~E~w~  PARA INICIAR A PESCARIA",4,0.5,0.93,0.50,255,255,255,180)
						if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
							if vSERVER.pegar_isca() then
								processoPesca = true
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								vRP.createObjects("amb@world_human_stand_fishing@idle_a","idle_c","prop_fishing_rod_01",15,60309)
								TriggerEvent("Progress",10000,"Pescando...")
								Wait(10000)
								processoPesca = false
								vRP.removeObjects()
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
								vSERVER.pagamento_pescaria()
							end
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)


Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		local ped = PlayerPedId()
		if emservico and tipoEmprego == "colheita" then
			sleep = 4
			local vehicle = GetVehiclePedIsIn(ped)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z,true)
			if distance <= 50 then
				sleep = 4
				DrawMarker(1,Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-0,0,0,0,0,0,0,4.0,4.0,1.0,255,0,0,50,0,0,0,0)
				if distance <= 4 then
					lastVehicle = GetPlayersLastVehicle()
						if distance <= 2 then
							if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
							RemoveBlip(blip)
							if destino == quantidade_de_blips then
								vRP.playAnim(false,{"amb@prop_human_movie_bulb@base","base"},true)
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								destino = math.random(22)
								Wait(2000)
								vSERVER.pagamento_colheita()
								vRP.stopAnim(false)
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
							else	
								vRP.playAnim(false,{"amb@prop_human_movie_bulb@base","base"},true)
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								destino = math.random(22)
								Wait(2000)
								vSERVER.pagamento_colheita()
								vRP.stopAnim(false)
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
							end
							CriandoBlip(Config.Empregos[empregoAtual].entregas,destino)
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		if emservico then
			sleep = 4
			drawTxt("PRESSIONE  ~r~F7~w~  PARA SAIR DE SERVIÇO",4,0.5,0.93,0.50,255,255,255,180)
		else
			sleep = 5000
		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		local ped = PlayerPedId()
		if emservico and tipoEmprego == "leiteiro" then
			sleep = 4
			local vehicle = GetVehiclePedIsIn(ped)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z,true)
			if distance <= 100 then
				DrawMarker(1,Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-0,0,0,0,0,0,0,4.0,4.0,1.0,255,0,0,50,0,0,0,0)
				if distance <= 4 then
					lastVehicle = GetPlayersLastVehicle()
						if distance <= 2 then
							if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
							RemoveBlip(blip)
							if destino == quantidade_de_blips then
								vRP.playAnim(false,{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"},true)
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								destino = math.random(11)
								Wait(2000)
								vSERVER.pagamento_leiteiro()
								vRP.stopAnim(false)
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
							else	
								vRP.playAnim(false,{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"},true)
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								destino = math.random(11)
								Wait(2000)
								vSERVER.pagamento_leiteiro()
								vRP.stopAnim(false)
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
							end
							CriandoBlip(Config.Empregos[empregoAtual].entregas,destino)
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		local ped = PlayerPedId()
		if emservico and tipoEmprego == "Fazendeiro" then
			sleep = 4
			local vehicle = GetVehiclePedIsIn(ped)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z,true)
			if distance <= 100 then
				DrawMarker(1,Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-0,0,0,0,0,0,0,4.0,4.0,1.0,255,0,0,50,0,0,0,0)
				if distance <= 4 then
					lastVehicle = GetPlayersLastVehicle()
						if distance <= 2 then
							if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
							RemoveBlip(blip)
							if destino == quantidade_de_blips then
								vRP.playAnim(false,{"amb@world_human_gardener_plant@female@base","base_female"},true)
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								destino = math.random(13)
								Wait(2000)
								vSERVER.pagamento_fazendeiro()
								vRP.stopAnim(false)
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
							else	
								vRP.playAnim(false,{"amb@world_human_gardener_plant@female@base","base_female"},true)
								LocalPlayer["state"]["Cancel"] = true
								LocalPlayer["state"]["Commands"] = true
								destino = math.random(13)
								Wait(2000)
								vSERVER.pagamento_fazendeiro()
								vRP.stopAnim(false)
								LocalPlayer["state"]["Cancel"] = false
								LocalPlayer["state"]["Commands"] = false
							end
							CriandoBlip(Config.Empregos[empregoAtual].entregas,destino)
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)



Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		local ped = PlayerPedId()
		if emservico and tipoEmprego == "carro" then
			sleep = 4
			if IsPedInAnyVehicle(ped) then
				local vehicle = GetVehiclePedIsIn(ped)
				local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z,true)
				if distance <= 50 then

					DrawMarker(36, Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-0.6,0,0,0,0,0,0,0.2,0.2,0.3,  255, 255,255,100 ,false,0,0,1)
					DrawMarker(27, Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-0.7,0,0,0,0,0,0,0.4,0.4,0.5, 255, 255,255,100 ,false,0,0,1)
					DrawMarker(1, Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-1,0,0,0,0,0,0,0.4,0.4,0.4, 252, 186, 3,100 ,false,0,0,1)

					if distance <= 4 then
						if GetPedInVehicleSeat(vehicle,-1) == ped then
							if IsVehicleModel(GetVehiclePedIsUsing(ped),GetHashKey(carroBlip)) then
								RemoveBlip(blip)
								if destino == todosBlips then
									destino = 1
								else				
									destino = destino + 1
								end
								vSERVER.Payment(empregoAtual)
								CriandoBlip(Config.Empregos[empregoAtual].entregas,destino)
							end
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)



Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		local ped = PlayerPedId()
		if emservico and tipoEmprego == "lixeiro" then
			sleep = 4
			local vehicle = GetVehiclePedIsIn(ped)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z,true)
			if distance <= 50 then
				DrawMarker(1,Config.Empregos[empregoAtual].entregas[destino].x,Config.Empregos[empregoAtual].entregas[destino].y,Config.Empregos[empregoAtual].entregas[destino].z-0,0,0,0,0,0,0,4.0,4.0,1.0,255,0,0,50,0,0,0,0)
				if distance <= 4 then
					lastVehicle = GetPlayersLastVehicle()
					if IsVehicleModel(lastVehicle, GetHashKey(carroBlip)) and not IsPedInAnyVehicle(PlayerPedId())  then
						if distance <= 2 then
							if IsControlJustPressed(0,38) then
								RemoveBlip(blip)
								if destino == quantidade_de_blips then
									vRP.createObjects("anim@heists@narcotics@trash","pickup_45_r","prop_cs_rub_binbag_01",50,28422)
									destino = 1
									vSERVER.Payment2(empregoAtual)
									Wait(2000)
									vRP.removeObjects()
								else	
									vRP.createObjects("anim@heists@narcotics@trash","pickup_45_r","prop_cs_rub_binbag_01",50,28422)
									vSERVER.Payment2(empregoAtual)
									destino = destino + 1
									Wait(2000)
									vRP.removeObjects()
								end
								CriandoBlip(Config.Empregos[empregoAtual].entregas,destino)
							end
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

local processo = false
local segundos = 0

Citizen.CreateThread(function()
	while true do
		local sleep = 5000
		if not processo then
			local ped = PlayerPedId()
			local distancia = GetDistanceBetweenCoords(GetEntityCoords(ped),-329.45,-1566.93,25.23)
			local vehicle = GetPlayersLastVehicle()

			if distancia <= 3 then
				sleep = 4
				DrawMarker(21, -329.45,-1566.93,25.23-0.6,0,0,0,0,0,0,0.2,0.2,0.3,  255, 255,255,100 ,false,0,0,1)
				DrawMarker(27, -329.45,-1566.93,25.23-0.7,0,0,0,0,0,0,0.4,0.4,0.5, 255, 255,255,100 ,false,0,0,1)
				DrawMarker(1, -329.45,-1566.93,25.23-1,0,0,0,0,0,0,0.4,0.4,0.4, 252, 186, 3,100 ,false,0,0,1)
				if distancia <= 1.5 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA DESPEJAR O LIXO",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) then
						if vSERVER.checkPayment() then
							TriggerEvent('cancelando',true)
							vRP.createObjects("anim@heists@narcotics@trash","throw_ranged_a","prop_cs_rub_binbag_01",50,28422)
							processo = true
							segundos = 3
							Wait(1000)
							vRP.removeObjects()
						end
					end
				end
			end
		end
		if processo then
			sleep = 4
			drawTxt("AGUARDE ~g~"..segundos.."~w~ SEGUNDOS ATÉ FINALIZAR O DESPEJO DO LIXO",4,0.5,0.93,0.50,255,255,255,180)
		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if processo then
			if segundos > 0 then
				segundos = segundos - 1
				if segundos == 0 then
					processo = false
					TriggerEvent('cancelando',false)
				end
			end
		end
	end
end)


















function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function CriandoBlip(entregas,destino)
	blip = AddBlipForCoord(entregas[destino].x,entregas[destino].y,entregas[destino].z)
	SetBlipSprite(blip,1)
	SetBlipColour(blip,3)
	SetBlipScale(blip,0.4)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Emprego Blip")
	EndTextCommandSetBlipName(blip)

end

function DrawText3D(x,y,z, text, r,g,b)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextFont(4)
        SetTextProportional(1)
        SetTextScale(0.0, 0.35)
        SetTextColour(r, g, b, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

RegisterCommand("pack",function(source,args)
	LocalPlayer["state"]["Cancel"] = false
	LocalPlayer["state"]["Commands"] = false
end)

