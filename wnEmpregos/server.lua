--------------------------------
-- [ CONEXAO ] --
--------------------------------

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
src = {}
Tunnel.bindInterface("wnEmpregos",src)
vCLIENT = Tunnel.getInterface("wnEmpregos")
Config = module(GetCurrentResourceName(), "cfg/config")

vRP._prepare("wnEmpregos/jesterInstagram", "SELECT * FROM smartphone_instagram WHERE user_id = @user_id")

src.CheckImagePlayer = function(passaporte)
 return "http://177.64.98.5/scripts/images/unknown.png"
end

src.CheckPerm = function()
    local source = source
	local user_id = vRP.getUserId(source)
    if user_id then
        -- return vRP.hasGroup(user_id,"Cafe") or vRP.hasGroup(user_id,"Atom")
        return true
    end
end

src.ReturnInfos = function()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local identity = vRP.userIdentity(user_id)
        return ""..identity.name.." "..identity.name2.."",user_id,src.CheckImagePlayer(user_id)
    end
end

src.getTutorial = function(emprego)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.userIdentity(user_id)
	ListaTutorial = {}
	local numero_player = 0
    for k, v in pairs(Config.Empregos[emprego].tutorial) do
        table.insert(ListaTutorial, {id = k,msg = v.msg })
    end
end

src.returnTutorial = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return ListaTutorial
    end
end


local peixes = {
    [1] = { x = "octopus" },
    [2] = { x = "carp" },
    [3] = { x = "codfish" },
    [4] = { x = "catfish" },
    [5] = { x = "goldenfish" },
    [6] = { x = "horsefish" },
    [7] = { x = "tilapia" },
    [8] = { x = "pacu" },
    [9] = { x = "pirarucu" },
    [10] = { x = "tambaqui" },
}

src.pagamento_pescaria = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local peixe_conseguido = peixes[math.random(8)].x
        if (vRP.inventoryWeight(user_id) + (itemWeight(peixe_conseguido) * 1)) <= vRP.getWeight(user_id) then
            vRP.generateItem(user_id,peixe_conseguido,1,true)
            TriggerClientEvent("Notify",source,"verde","Você recebeu <b>1x "..itemName(peixe_conseguido).." dólares</b>.")
        else
            TriggerClientEvent("Notify",source,"vermelho","Sua mochila esta <b>cheia</b>.")
        end
    end
end


src.pegar_isca = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if (vRP.inventoryWeight(user_id) + (0.50 * 1)) <= vRP.getWeight(user_id) then
            if vRP.tryGetInventoryItem(user_id,"cellphone",1,true) then
                return true
            else
                TriggerClientEvent("Notify",source,"vermelho","Você nao tem <b>1x "..itemName('cellphone').."</b>.")
                return false
            end
        else
            TriggerClientEvent("Notify",source,"vermelho","Sua mochila esta <b>cheia</b>.")
        end
    end
end

src.pagamento_colheita = function(emprego)
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local randomItem = math.random(#Config.Frutas)
		selectItem = Config.Frutas[randomItem]
		amountItem = math.random(2,4)
        if (vRP.inventoryWeight(user_id) + (itemWeight(selectItem) * parseInt(amountItem))) <= vRP.getWeight(user_id) then
            vRP.generateItem(user_id,selectItem,amountItem,true)
        else
            TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
        end
	end
end


src.pagamento_leiteiro = function()
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        amountItem = math.random(8,11)
        if (vRP.inventoryWeight(user_id) + (itemWeight('leite') * parseInt(amountItem))) <= vRP.getWeight(user_id) then
            vRP.generateItem(user_id,'leite',amountItem,true)
        else
            TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
        end
    end
end

src.pagamento_fazendeiro = function()
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        amountItem = math.random(8,11)
        if (vRP.inventoryWeight(user_id) + (itemWeight('farinha') * parseInt(amountItem))) <= vRP.getWeight(user_id) then
            vRP.generateItem(user_id,'farinha',amountItem,true)
        else
            TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
        end
    end
end

src.Payment = function(emprego)
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local dinheiror = math.random(Config.Empregos[emprego].valorMin,Config.Empregos[emprego].valorMax)
        vRP.generateItem(user_id,"dollars",parseInt(dinheiror),true)
		TriggerClientEvent("Notify",source,"verde","Você recebeu <b>$"..parseFormat(parseInt(dinheiror)).." dólares</b>.")
	end
end

src.Payment2 = function(emprego)
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local dinheiror = math.random(4,6)
        if (vRP.inventoryWeight(user_id) + (itemWeight("materialreciclavel") * parseInt(dinheiror))) <= vRP.getWeight(user_id) then
            vRP.generateItem(user_id,"materialreciclavel",parseInt(dinheiror),true)
        else
            TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
        end
	end
end

function src.checkPayment()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local consultItem = vRP.getInventoryItemAmount(user_id,"materialreciclavel")
		if vRP.tryGetInventoryItem(user_id,"materialreciclavel",consultItem[1]) then
			randmoney = math.random(40,65)
            vRP.generateItem(user_id,"dollars",parseInt(25*consultItem[1]),true)
			TriggerClientEvent("Notify",source,"verde","Você recebeu <b>$"..parseFormat(parseInt(randmoney*consultItem[1])).." dólares</b>.")
			return true
        else
            TriggerClientEvent("Notify",source,"vermelho","Voce precisa de <b>2x "..itemName('materialreciclavel').."</b>.")
		end
	end
end
