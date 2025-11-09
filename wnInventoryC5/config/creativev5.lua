Framework = {}

Framework = {

    ['prepare'] = function(a,b)
        return vRP.prepare(a,b)
    end,

    ['query'] = function(a,b) 
        return vRP.query(a,b)
    end,

    ['execute'] = function(a,b)
        return vRP.execute(a,b)
    end,

    ['getSource'] = function(source) 
        return vRP.userSource(source)
    end,

    ['getItemAmount'] = function(user_id,item)  -- [ VERIFICAR QUANTOS ITENS O USUARIO POSSUI ]
        return vRP.itemAmount(user_id,item)
    end,

    ['getUserId'] = function(source) 
        return vRP.getUserId(source)
    end,

    ['userList'] = function()
        return vRP.userList() or {}
    end,

    ['userIdentity'] = function(user_id)
        local identity = vRP.userIdentity(user_id)
        if identity then
            return {
                name = identity.name or 'None',
                name2 = identity.name2 or 'None',
            }
        else
            return {
                name = 'Sem',
                name2 = 'Nome',
            }
        end
    end,

    ['hasGroup'] = function(user_id,permissao)
        return vRP.hasGroup(user_id,permissao)
    end,

    ['tryGetInventoryItem'] = function(user_id,item,amount)
        return vRP.tryGetInventoryItem(user_id,item,amount,true)
    end,

    ['giveInventoryItem'] = function(user_id,item,amount)
        return vRP.generateItem(user_id,item,amount,true)
    end,

    ['getInventory'] = function(user_id,InventarioTable)
        InventarioTable[user_id] = {}
        local inv = vRP.userInventory(parseInt(user_id))
        local identity = vRP.userIdentity(user_id)
        for k,v in pairs(inv) do
            table.insert(InventarioTable[user_id],{ 	
                item = v["item"],
                quantidade = parseInt(v.amount) or 0, 
                nome = itemName(v["item"]) or "None", 
                index = itemIndex(v["item"]) or "None",
                link = Config.URLInventario
            })
        end
        return InventarioTable[user_id]
    end,

    ['userPlate'] = function(placa)
        local placaUser = vRP.userPlate(placa)
        if placaUser then
            if placaUser.user_id then
                return placaUser.user_id
            else
                return nil
            end
        else
            return nil
        end
    end,

    ['getItensList'] = function(user_id,ItensTable)
        ItensTable[user_id] = {}
        for k,v in pairs(returnLista()) do
            table.insert(ItensTable[user_id],{ 	
                item = k,
                nome = itemName(k) or "None", 
                index = itemIndex(k) or "None",
                link = Config.URLInventario
            })
        end
        return ItensTable[user_id]
    end,

}

Framework.Opcoes = {
    
    ['reviver'] = function(source,nsource,nuser_id,identity2)
        vRPclient.revivePlayer(nsource,200)
        TriggerClientEvent("resetDiagnostic",nsource)
        TriggerClientEvent("Notify",source,"verde","Voce reviveu o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['matar'] = function(source,nsource,nuser_id,identity2)
        vRPclient.revivePlayer(nsource,0)
        TriggerClientEvent("Notify",source,"verde","Voce matou o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['colete'] = function(source,nsource,nuser_id,identity2)
        vRPclient.setArmour(nsource,100)
        TriggerClientEvent("Notify",source,"verde","Colete Setado no <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['fome'] = function(source,nsource,nuser_id,identity2)
        vRP.upgradeThirst(nuser_id,100)
        vRP.upgradeHunger(nuser_id,100)
        vRP.downgradeStress(nuser_id,100)
        TriggerClientEvent("Notify",source,"verde","Resetou a Fome & Sede do <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['algemas'] = function(source,nsource,nuser_id,identity2)
        vPLAYER = Tunnel.getInterface("player")
        if vPLAYER.getHandcuff(nsource) then
            vPLAYER.toggleHandcuff(nsource)
            TriggerClientEvent("sounds:source",source,"uncuff",0.5)
            TriggerClientEvent("sounds:source",nsource,"uncuff",0.5)
            TriggerClientEvent("Notify",source,"verde","Voce desalgemou o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
        else
            vPLAYER.toggleHandcuff(nsource)
            TriggerClientEvent("sounds:source",source,"cuff",0.5)
            TriggerClientEvent("sounds:source",nsource,"cuff",0.5)
            TriggerClientEvent("Notify",source,"verde","Voce algemou o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
        end
    end,

    ['explodir'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.Explodir(nsource)
        TriggerClientEvent("Notify",source,"verde","Voce Explodiu o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['fogo'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.Fogo(nsource)
        TriggerClientEvent("Notify",source,"verde","Voce tacou fogo no <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['derrubar'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.Derrubar(nsource)
        TriggerClientEvent("Notify",source,"verde","Voce derrubou no <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['ceu'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.Ceu(nsource)
        TriggerClientEvent("Notify",source,"verde","Voce jogou o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b> para o ceu.")
    end,

    ['ban'] = function(source,nsource,nuser_id,identity2)
        vRP.kick(nuser_id,"Voce foi banido.")
        vRP.execute("banneds/insertBanned",{ steam = identity2["steam"] })
        TriggerClientEvent("Notify",source,"verde","Voce baniu o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['kick'] = function(source,nsource,nuser_id,identity2)
        vRP.kick(nuser_id,"Timeout.")
        TriggerClientEvent("Notify",source,"verde","Voce kickou o <b>"..identity2.name.." ".. identity2.name2.." ["..nuser_id.."]</b>.")
    end,

    ['suporte'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.Suporte(nsource)
        vRPclient.playSound(nsource,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

    ['destrancar'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.Destrancar(source)
        local status = vCLIENT.StatusDestrancar(source) or ""
        TriggerClientEvent("Notify",source,"sucesso","Carro <b>"..status.."</b> com sucesso.",5000)
        vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

    ['pintura'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.FecharUI(source)
        local rgb = vRP.prompt(source,"RGB:","")
        rgb = sanitizeString(rgb,"\"[]{}+=?!_()#@%/\\|,.",false)
        local r,g,b = table.unpack(splitString(rgb," "))
        vCLIENT.PintarVeiculo(source,r,g,b)
        vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

    ['tunar'] = function(source,nsource,nuser_id,identity2)
        local entity = vCLIENT.GetEntity(source)
        vCLIENT.tuning(-1,entity)
        vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

    ['blindado'] = function(source,nsource,nuser_id,identity2)
        vCLIENT.blindado(source)
        vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

    ['deletar'] = function(source,nsource,nuser_id,identity2)
        local entity = vCLIENT.GetEntity(source)
        TriggerClientEvent("wnGarages:Delete",source,entity)
        vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

    ['abastecer'] = function(source,nsource,nuser_id,identity2)
        local entity = vCLIENT.GetEntity(source)
        vCLIENT.abastecer(-1,entity)
        vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
    end,

}


return Framework