--------------------------------
-- [ CONEXAO ] --
--------------------------------

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
src = {}
Tunnel.bindInterface("wnConce",src)
vCLIENT = Tunnel.getInterface("wnConce")
Config = module(GetCurrentResourceName(), "cfg/config")

local config_base = exports.base:getGeralConfig()

local actived = {}

vRP._prepare("warn/selectwnConce", "SELECT * FROM wnConce_Carros") 
vRP._prepare("warn/selectwnConce2", "SELECT * FROM wnConce_Carros WHERE carro = @carro and tipo = @tipo") 
vRP._prepare("warn/set_estoque","UPDATE wnConce_Carros SET estoque = @estoque WHERE carro = @carro and tipo = @tipo")
vRP._prepare("warn/update_estoque", "UPDATE wnConce_Carros SET estoque = estoque + @estoque WHERE carro = @carro") 
vRP._prepare("wnConce/jesterInstagram", "SELECT * FROM smartphone_instagram WHERE user_id = @user_id")

src.return_nome = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local identity = vRP.userIdentity(user_id)
        return ""..identity.name.." "..identity.name2.."",src.GetUserPhoto(user_id),config_base.Basico.link_loja
    end
end

src.consultCarros = function(ConceNumber,carroLista)
    local source = source
    local user_id = vRP.getUserId(source)
    listCarros = {}
    if user_id then
        if carroLista == "Possuidos" then
            local vehicle = vRP.query("vehicles/getVehicles",{ user_id = user_id })
            for k,v in pairs(vehicle) do
                if vehicleName(v.vehicle) then
                    table.insert(listCarros,{ k = v.vehicle, carro = vehicleName(v.vehicle), bau = vehicleChest(v.vehicle), tax = "pago",link = config_base.Basico.url_images.garagem })
                end
            end
        else
            local SQL = vRP.query("warn/selectwnConce")
            for k,v in pairs(SQL) do
                if v.tipo == carroLista then
                    local seguro = v.valor/10
                    if vehicleName(v.carro) then
                        if v.tipo == "Alugados" or v.tipo == "Exclusivos" or v.tipo == "Baby" then
                            table.insert(listCarros,{link = config_base.Basico.url_images.garagem,k = v.carro, carro = vehicleName(v.carro), seguro = parseFormat(parseInt(70000)), bau = vehicleChest(v.carro), valor2 = v.valor, valor = parseFormat(parseInt(v.valor)), estoque = v.estoque, tipo = v.tipo })
                        else
                            table.insert(listCarros,{link = config_base.Basico.url_images.garagem,k = v.carro, carro = vehicleName(v.carro), seguro = parseFormat(seguro), bau = vehicleChest(v.carro), valor2 = v.valor, valor = parseFormat(parseInt(v.valor)), estoque = v.estoque, tipo = v.tipo })
                        end
                    end
                end
            end
        end
    end
end

src.consultCarrosList = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return listCarros
    end
end

src.AlterarMundo = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local random = math.random(9000,20000)
        SetPlayerRoutingBucket(source,random)
    end
end

src.AlterarMundo2 = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        SetPlayerRoutingBucket(source,1)
    end
end

src.ConfirmTestDrive = function(carro)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.request(source,"Você deseja realizar o teste no carro "..vehicleName(carro).." ?") then
            return true
        else
            return false
        end
    end
end

vRP.prepare("wnConce/rental","INSERT IGNORE INTO vehicles(user_id,vehicle,plate,work,rental,tax) VALUES(@user_id,@vehicle,@plate,@work,@rental,UNIX_TIMESTAMP() + 604800)")


src.comprarCarro = function(carro,red,green,blue,categoria_escolhida)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.userIdentity(user_id)
    if user_id then

        if vRP.getFines(user_id) > 0 then
            TriggerClientEvent("Notify",source,"amarelo","Multas pendentes encontradas.",3000)
            return
        end

        local vehicle = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })
        if vehicle[1] then
            TriggerClientEvent("Notify",source,"amarelo","Já possui um <b>"..vehicleName(carro).."</b>.",3000)
            return
        else
            local SQL = vRP.query("warn/selectwnConce2", {carro = carro, tipo = categoria_escolhida })

            if SQL[1].estoque >= 1 then
                if SQL[1].tipo == "Alugados" or SQL[1].tipo == "Exclusivos" or SQL[1].tipo == "Baby" then
                    if vRP.request(source,"Você deseja realizar a compra do carro "..vehicleName(carro).." por "..SQL[1].valor.." Gemas ?") then
                        if vRP.paymentGems(user_id,SQL[1].valor) then
                            local vehicle = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })

                            vRP.execute("wnResgate/rentalResgate", {
                                user_id = user_id,
                                vehicle = carro,
                                plate = vRP.generatePlate(),
                                work = "false",
                                rental = getTimestampWithDays(30),
                            })

                            TriggerClientEvent("Notify",source,"verde","Aluguel do veículo <b>"..vehicleName(carro).."</b> concluído.",5000)
                            return true
                        end
                    end
                else
                    if vRP.request(source,"Você deseja realizar a compra do carro "..vehicleName(carro).." por "..SQL[1].valor.." $ ?") then
                        local maxVehs = vRP.query("vehicles/countVehicles",{ user_id = user_id, work = "false" })
                        local identity = vRP.userIdentity(user_id)
                        local amountVehs = identity["garage"]
                        if vRP.userPremium(user_id) then
							amountVehs = amountVehs + 2
						end
                        
                        if vRP.paymentFull(user_id,parseInt(SQL[1].valor)) then
							vRP.execute("vehicles/addVehicles",{ user_id = user_id, vehicle = carro, plate = vRP.generatePlate(), work = "false" })
							TriggerClientEvent("Notify",source,"verde","Compra concluída.",5000)
                            vRP.execute("warn/set_estoque",{ carro = carro, tipo = categoria_escolhida, estoque = parseInt(SQL[1].estoque) - 1 })
                            local identity = vRP.userIdentity(user_id)
                            return true
						else
							TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
						end
                    end
                end
            end
        end
    end
end

src.comprarCarroVip = function(carro,red,green,blue,categoria_escolhida)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.userIdentity(user_id)
    if user_id then

        -- if vRP.getFines(user_id) > 0 then
        --     TriggerClientEvent("Notify",source,"amarelo","Multas pendentes encontradas.",3000)
        --     return
        -- end

        local vehicle = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })
        if vehicle[1] then
            TriggerClientEvent("Notify",source,"amarelo","Já possui um <b>"..vehicleName(carro).."</b>.",3000)
            return
        else
            local SQL = vRP.query("warn/selectwnConce2", {carro = carro, tipo = categoria_escolhida })
            if SQL[1].estoque >= 1 then
                local valor_carro_completo = SQL[1].valor * 5

                if valor_carro_completo >= 900 then
                    valor_carro_completo = 600
                end

                if vRP.request(source,"Você deseja realizar a compra do carro "..vehicleName(carro).." por "..valor_carro_completo.." Gemas ?") then
                    if vRP.paymentGems(user_id,valor_carro_completo) then
                        local vehicle = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })
                        vRP.execute("vehicles/addVehicles",{ user_id = user_id, vehicle = carro, plate = vRP.generatePlate(), work = "false" })
                        TriggerClientEvent("Notify",source,"verde","Voce comprou o veículo <b>"..vehicleName(carro).."</b> concluído.",5000)
                        return true
                    end
                end
            end
        end
    end
end

src.venderCarro = function(carro)
    local source = source
	local user_id = vRP.getUserId(source)
    local identity = vRP.userIdentity(user_id)
    if user_id then
        local vehicle = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })
        local SQL = vRP.query("warn/selectwnConce2", {carro = carro, tipo = categoria_escolhida })
        if carro then
            if SQL[1] then
                local vehPrices = SQL[1].valor 
                if vehicle[1] then
                    if carro == "faggio" or carro == "manchez" or carro == "bf400" or carro == "baller6" then
                        TriggerClientEvent("Notify",source,"amarelo","Veículos de serviço não podem ser vendidos.",3000)
                        actived[user_id] = nil
                        return false
                    end

                    if vRP.getFines(user_id) > 0 then
                        TriggerClientEvent("Notify",source,"amarelo","Multas pendentes encontradas.",3000)
                        actived[user_id] = nil
                        return false
                    end
            
                    local vehType = vehicleType(vehName)
                    if vehType == "work" then
                        TriggerClientEvent("Notify",source,"amarelo","Veículos de serviço não podem ser vendidos.",3000)
                        actived[user_id] = nil
                        return false
                    end
            
                   local SQL = vRP.query("warn/selectwnConce2", {carro = carro, tipo = categoria_escolhida })
                    print("Eae", SQL)
                    if SQL[1].tipo ~= "Alugados" or SQL[1].tipo ~= "Exclusivos" or SQL[1].tipo ~= "Baby" then
                        local vehPrices = SQL[1].valor * 0.5
                                          if SQL[1].tipo ~= "Alugados" or SQL[1].tipo ~= "Exclusivos" or SQL[1].tipo ~= "Baby" then
                        if vRP.request(source,"Você deseja vender o carro "..vehicleName(carro).." por "..parseFormat(vehPrices).." $ ?") then
                            local vehicles = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })
                            if vehicles[1] then
                                vRP.remSrvdata("custom:"..user_id..":"..carro)
                                vRP.remSrvdata("vehChest:"..user_id..":"..carro)
                                vRP.remSrvdata("vehGloves:"..user_id..":"..carro)
                                vRP.execute("vehicles/removeVehicles",{ user_id = user_id, vehicle = carro })
                                vRP.addBank(user_id,vehPrices,"Private")
                                TriggerClientEvent("itensNotify",source,{ "recebeu","dollars",parseFormat(vehPrices),"Dólares" })
                            end
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Você nao pode vender carro <b>Alugado</b>.",10000)
                    end
                end
            else
                local vehPrices = 5000
                if vehicle[1] then
                    -- if vRP.getFines(user_id) > 0 then
                    --     TriggerClientEvent("Notify",source,"amarelo","Multas pendentes encontradas.",3000)
                    --     actived[user_id] = nil
                    --     return false
                    -- end
            
                    local vehType = vehicleType(vehName)
                    if vehType == "work" then
                        TriggerClientEvent("Notify",source,"amarelo","Veículos de serviço não podem ser vendidos.",3000)
                        actived[user_id] = nil
                        return false
                    end
            
                    local SQL = vRP.query("warn/selectwnConce2", {carro = carro, tipo = categoria_escolhida })
                    local vehPrices = SQL[1].valor * 0.5
                    if SQL[1].tipo ~= "Alugados" or SQL[1].tipo ~= "Exclusivos" or SQL[1].tipo ~= "Baby" then
                        if vRP.request(source,"Você deseja vender o carro "..vehicleName(carro).." por "..parseFormat(vehPrices).." $ ?") then
                            local vehicles = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = carro })
                            if vehicles[1] then
                                vRP.remSrvdata("custom:"..user_id..":"..carro)
                                vRP.remSrvdata("vehChest:"..user_id..":"..carro)
                                vRP.remSrvdata("vehGloves:"..user_id..":"..carro)
                                vRP.execute("vehicles/removeVehicles",{ user_id = user_id, vehicle = carro })
                                vRP.addBank(user_id,vehPrices,"Private")
                                TriggerClientEvent("itensNotify",source,{ "recebeu","dollars",parseFormat(vehPrices),"Dólares" })       
                            end
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Você nao pode vender carro <b>Alugado</b>.",10000)
                    end
                end
            end
                    else
                        print("Erro ao buscar veículo:", carro, "Tipo:", categoria_escolhida)
                        TriggerClientEvent("Notify", source, "vermelho", "Veículo não encontrado na concessionária.", 5000)
                        return
                    end
        end
    end
end

local plateVehs = {}
function src.startDrive()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if actived[user_id] == nil then
			actived[user_id] = true

			if not exports["wnHud"]:Wanted(user_id) then
				if vRP.request(source,"Iniciar o teste por <b>$100</b> dólares?") then
					if vRP.paymentFull(user_id,100) then
						plateVehs[user_id] = "PDMS"..(1000 + user_id)

						TriggerEvent("engine:tryFuel",plateVehs[user_id],100)
						TriggerClientEvent("update:Route",source,user_id)
						TriggerEvent("plateEveryone",plateVehs[user_id])
						SetPlayerRoutingBucket(source,user_id)
						actived[user_id] = nil

						return true,plateVehs[user_id]
					else
						TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
					end
				end
			end

			actived[user_id] = nil
		end
	end
	return false
end

function src.removeDrive()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		--TriggerEvent("plateReveryone",plateVehs[user_id])
		TriggerClientEvent("update:Route",source,0)
		SetPlayerRoutingBucket(source,0)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERDISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("playerDisconnect",function(user_id)
	if actived[user_id] then
		actived[user_id] = nil
	end

	if plateVehs[user_id] then
		plateVehs[user_id] = nil
	end
end)

local CelularCarregado = nil

CreateThread(function()
    if isResourceStarted('smartphone') then
        CelularCarregado = "jester"
    elseif isResourceStarted('lb-phone') then
        CelularCarregado = "lb-phone"
    end
end)

src.GetUserPhoto = function(user_id)
    local imagem = nil
    if CelularCarregado == "lb-phone" then
        vRP.prepare("wnBanco/Celular_LBPHONE", "SELECT * FROM phone_phones WHERE owner_id = @owner_id")
        local id = vRP.userSource(user_id)
        local infos = vRP.execute("wnBanco/Celular_LBPHONE", { owner_id = "license:"..getLicense(id).."" })
        if infos[1] then
            if infos[1].settings then
                local data = json.decode(infos[1].settings)
                if data then
                    if data.avatar then
                        imagem = data.avatar
                        return imagem
                    end
                end
            end
        end
    elseif CelularCarregado == "jester" then
        vRP.prepare("wnBanco/Celular_JESTER", "SELECT * FROM smartphone_instagram WHERE user_id = @user_id")
        local infos = vRP.query("wnBanco/Celular_JESTER", {user_id = parseInt(user_id)})
        if infos[1] then
            imagem = infos[1].avatarURL
            return imagem
        end
    end
end


function isResourceStarted(resourceName)
    local resourceState = GetResourceState(resourceName)
    return resourceState == "started"
end


getLicense = function(source)
    local result = false
    local identifiers = GetPlayerIdentifiers(source)
    for _,v in pairs(identifiers) do
        if string.find(v,"license") then
            local splitName = splitString(v,":")
            result = splitName[2]
            break
        end
    end
    return result
end

function getTimestampWithDays(days)
    local currentTimestamp = os.time()
    local additionalSeconds = days * 24 * 60 * 60 
    return currentTimestamp + additionalSeconds
end