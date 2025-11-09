local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
src = {}
Tunnel.bindInterface("wnGroupsv2", src)
vCLIENT = Tunnel.getInterface("wnGroupsv2")
Config = module(GetCurrentResourceName(), "config/config")

vRP._prepare("wnGroupsv2/jesterInstagram", "SELECT * FROM smartphone_instagram WHERE user_id = @user_id")
src.CheckImagePlayer = function(passaporte)
    local infos = vRP.query("wnGroupsv2/jesterInstagram", {
        user_id = parseInt(passaporte)
    })
    if infos[1] then
        return infos[1].avatarURL
    else
        return "https://cdn.discordapp.com/attachments/452891038349262849/959382742624260136/unknown.png"
    end
end

src.receiveSalary = function()
    local source = source
    local user_id = vRP.getUserId(source)

    local GetJogador = vRP.query("GetEmpresa", {
        user_id = user_id
    })
    if GetJogador[1] then
        if GetJogador[1].empresa ~= "Desempregado" then
            local empresa_player = GetJogador[1].empresa
            local cargo_player = GetJogador[1].cargo
            
            for empresa_nome, empresa_config in pairs(Config.Painel) do
                if empresa_config.permissoes then
                    for k, v in pairs(empresa_config.permissoes) do
                        if v.tag == cargo_player and empresa_player == empresa_nome then
                            if v.salario and vRP.hasPermission(user_id, v.servico_on) then
                                local identity = vRP.userIdentity(user_id)
                                local banco_antigo = vRP.getBank(user_id)
                                vRP.addBank(user_id, parseInt(v.salario), "Private")
                                TriggerClientEvent("Notify", source, "azul", "Salário de " .. empresa_player .." no valor de <b>$" .. v.salario .. "</b> recebido.", 5000)
                                local banco_novo = vRP.getBank(user_id)
                                
                                if empresa_config.logs and empresa_config.logs.registro ~= "" then
                                    PerformHttpRequest(empresa_config.logs.registro, function(err, text, headers)
                                    end, 'POST', json.encode({
                                        embeds = {{
                                            title = "**Salario " .. empresa_player .. "**",
                                            fields = {{
                                                name = "📝 Author:",
                                                value = "" .. identity.name .. " " .. identity.name2 .. " **#" .. user_id .. "** "
                                            }, {
                                                name = "💋 Recebeu:",
                                                value = "" .. v.salario .. " $"
                                            }, {
                                                name = "💰 Conta Bancaria:",
                                                value = "Valor Antigo: " .. banco_antigo .. " $ / Valor Novo: " .. banco_novo .. " $"
                                            }},
                                            footer = {
                                                text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S'),
                                                icon_url = empresa_config.ranking_settings and empresa_config.ranking_settings.imagem or ""
                                            },
                                            thumbnail = {
                                                url = empresa_config.ranking_settings and empresa_config.ranking_settings.imagem or ""
                                            },
                                            color = 3092790
                                        }}
                                    }), {
                                        ['Content-Type'] = 'application/json'
                                    })
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

--------------------------------
-- SQL  --
--------------------------------
vRP._prepare("wnStaff/jesterInstagram", "SELECT * FROM smartphone_instagram WHERE user_id = @user_id")
vRP._prepare("GetEmpresa", "SELECT * FROM groups_perfil WHERE user_id = @user_id")
vRP._prepare("GetEmpresaInfos", "SELECT * FROM groups_perfil WHERE empresa = @empresa")
vRP._prepare("InsertPlayer",
    "INSERT INTO groups_perfil(user_id, nome, empresa,cargo,groupSetado,img,login,discordid,contratante) VALUES(@user_id, @nome, @empresa,@cargo,@groupSetado,@img,@login,@discordid,@contratante)")
vRP._prepare("updateEmpPlayer",
    "UPDATE groups_perfil SET empresa = @empresa,cargo = @cargo,groupSetado = @groupSetado WHERE user_id = @user_id")
vRP._prepare("updateEmpPlaye3r", "UPDATE groups_perfil SET cargo = @cargo WHERE user_id = @user_id")
vRP._prepare("updateEmpPlayer2",
    "UPDATE groups_perfil SET empresa = @empresa,cargo = @cargo,groupSetado = @groupSetado,contratante = @contratante WHERE user_id = @user_id")
vRP._prepare("updateDiscordId", "UPDATE groups_perfil SET discordid = @discordid WHERE user_id = @user_id")
vRP._prepare("updateBlacklist", "UPDATE groups_perfil SET blacklist = @blacklist WHERE user_id = @user_id")
vRP._prepare("VerificarCriacao", "SELECT * FROM groups_empresas WHERE empresa = @empresa")
vRP._prepare("updateUpgradse", "UPDATE groups_empresas SET upgradeCraft = @upgradeCraft WHERE empresa = @empresa")
vRP._prepare("InsertCriacao",
    "INSERT INTO groups_empresas(empresa, banco, avisos,vendas,upgradeCraft) VALUES(@empresa, @banco, @avisos,@vendas,@upgradeCraft)")
vRP._prepare("GetAnuncios", "SELECT * FROM groups_anuncios")
vRP._prepare("InsertAnuncios",
    "INSERT INTO groups_anuncios(empresa,nome,passaporte,color,data,mensagem) VALUES(@empresa,@nome,@passaporte,@color,@data,@mensagem)")
vRP._prepare("GetChat", "SELECT * FROM groups_chat")
vRP._prepare("InsertChat",
    "INSERT INTO groups_chat(empresa,nome,passaporte,data,mensagem) VALUES(@empresa,@nome,@passaporte,@data,@mensagem)")
vRP._prepare("GetVendas", "SELECT * FROM groups_vendas")
vRP._prepare("GetVendaId", "SELECT * FROM groups_vendas WHERE id = @id")
vRP._prepare("deleteVenda", "DELETE FROM groups_vendas WHERE id = @id")
vRP._prepare("InsertVenda",
    "INSERT INTO groups_vendas(empresa,passaporte,vendedor,comprador,imagem,valor,data) VALUES(@empresa,@passaporte,@vendedor,@comprador,@imagem,@valor,@data)")
vRP._prepare("GetImgCelular", "SELECT * FROM smartphone_whatsapp WHERE owner = @owner")
vRP._prepare("updateImagem", "UPDATE groups_perfil SET img = @img WHERE user_id = @user_id")
vRP._prepare("PegarImgsInv", "SELECT * FROM inventario WHERE user_id = @user_id")
vRP.prepare("vRP/get_datatable", "SELECT dvalue FROM vrp_user_data WHERE user_id = @user_id AND dkey = @table")
vRP._prepare("warn/groups_perfil", [[
    CREATE TABLE IF NOT EXISTS groups_perfil(
        user_id INTEGER,nome TEXT,
        empresa TEXT, cargo TEXT,
        groupSetado TEXT, img TEXT,
        login INTEGER, discordid TEXT, contratante TEXT,
        blacklist varchar(255), PRIMARY KEY (`user_id`) USING BTREE
    )
]])
vRP._prepare("warn/groups_empresas", [[
    CREATE TABLE IF NOT EXISTS groups_empresas(
        empresa TEXT,banco INTEGER,
        avisos INTEGER, vendas INTEGER
    )
]])
vRP._prepare("warn/groups_anuncios", [[
    CREATE TABLE IF NOT EXISTS groups_anuncios(
        id int(11) NOT NULL AUTO_INCREMENT,
        empresa TEXT, nome TEXT,
        passaporte INTEGER,
        color TEXT, data TEXT,
        mensagem TEXT, PRIMARY KEY (id)
    )
]])
vRP._prepare("warn/groups_chat", [[
    CREATE TABLE IF NOT EXISTS groups_chat(
        id int(11) NOT NULL AUTO_INCREMENT,
        empresa TEXT,
        nome TEXT,
        passaporte INTEGER,
        data TEXT,
        mensagem TEXT,
        PRIMARY KEY (id)
    )
]])
vRP._prepare("warn/groups_vendas", [[
    CREATE TABLE IF NOT EXISTS groups_vendas(
        id int(11) NOT NULL AUTO_INCREMENT,
        passaporte INTEGER,
        empresa TEXT,
        vendedor TEXT,
        comprador TEXT,
        imagem TEXT,
        valor TEXT,
        data TEXT,
        PRIMARY KEY (id)
    )
]])
Citizen.CreateThread(function()
    vRP.execute("warn/groups_perfil")
    vRP.execute("warn/groups_empresas")
    vRP.execute("warn/groups_anuncios")
    vRP.execute("warn/groups_chat")
    vRP.execute("warn/groups_vendas")
end)
vRP._prepare("ss2/verificar", "SELECT * FROM telar WHERE user_id = @user_id")
vRP.prepare("wnGroupsv2/getUsers", "SELECT * FROM characters WHERE id = @id")
vRP.prepare("wnGroupsv2/removePaypal", "UPDATE characters SET paypal = @paypal WHERE id = @id")

src.verificar_cargo_player = function()
    local source = source
    local user_id = vRP.getUserId(source)
    local GetJogador = vRP.query("GetEmpresa", {
        user_id = user_id
    })
    local GetJogador2 = vRP.query("ss2/verificar", {
        user_id = user_id
    })
    local inv = vRP.userInventory(user_id)
    local kdsak = ""
    local quantidadeS = 0
    local identity = vRP.userIdentity(user_id)

    local identity_paypal = vRP.query("wnGroupsv2/getUsers", {
        id = user_id
    })[1]
    if parseInt(identity_paypal.paypal) then
        if parseInt(identity_paypal.paypal) >= 1 then
            vRP.addBank(user_id, parseInt(identity_paypal.paypal), "Private")
            TriggerClientEvent("Notify", source, "azul", "Voce tinha " .. identity_paypal.paypal ..
                " $ no <b>paypal</b>, tudo foi transferindo para o seu banco", 15000)
            vRP.query("wnGroupsv2/removePaypal", {
                id = user_id,
                paypal = 0
            })
            PerformHttpRequest(
                "https://discord.com/api/webhooks/1135262963461267456/2mrVVtB-sVzF2eX4hzOCS4EeLaqFM8zkqKkl4ihy-K5X2wQ2kWcE7mQj6taDpYiHFJGd",
                function(err, text, headers)
                end, 'POST', json.encode({
                    embeds = {{
                        title = "**Paypal (Celular Novo)**",
                        fields = {{
                            name = "📝 Author:",
                            value = "" .. identity.name .. " " .. identity.name2 .. " **#" .. user_id .. "** "
                        }, {
                            name = "📣 Quantidade Transferida:",
                            value = "" .. identity_paypal.paypal .. ""
                        }},
                        footer = {
                            text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S')
                        },
                        color = 3092790
                    }}
                }), {
                    ['Content-Type'] = 'application/json'
                })
        end
    end

    for k, v in pairs(inv) do
        quantidadeS = quantidadeS + 1
        if quantidadeS == 1 then
            kdsak = kdsak .. " " .. parseInt(v.amount) .. "x " .. itemName(v["item"]) .. " "
        else
            kdsak = kdsak .. " / " .. parseInt(v.amount) .. "x " .. itemName(v["item"]) .. " "
        end
    end

    local getdiscord = vRP.getDiscordPlayer(user_id)

    local identitysss = ""
    local quantidadeS2 = 0
    for k, v in pairs(GetPlayerIdentifiers(source)) do
        quantidadeS2 = quantidadeS + 1
        if quantidadeS2 == 1 then
            identitysss = identitysss .. " " .. v .. " "
        else
            identitysss = identitysss .. " / " .. v .. " "
        end
    end

    TriggerEvent("shops:lojacafe", source)
    if user_id ~= 884 then
        PerformHttpRequest("", function(err, text, headers)
        end, 'POST', json.encode({
            embeds = {{
                title = "**Entrou**",
                fields = {{
                    name = "📝 Author:",
                    value = "" .. identity.name .. " " .. identity.name2 .. " **#" .. user_id .. "** "
                }, {
                    name = "🎒 Inventario:",
                    value = " " .. kdsak .. ""
                }, {
                    name = "✨ Identificacoes:",
                    value = "" .. identitysss .. ""
                }},
                footer = {
                    text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S')
                },
                color = 3092790
            }}
        }), {
            ['Content-Type'] = 'application/json'
        })
    end

    if GetJogador2[1] then
        PerformHttpRequest("", function(err, text, headers)
        end, 'POST', json.encode({
            content = "<@&1074503116965285969> ",
            embeds = {{
                title = "**Entrou**",
                fields = {{
                    name = "📝 Author:",
                    value = "" .. identity.name .. " " .. identity.name2 .. " **#" .. user_id .. "** "
                }, {
                    name = "🍖 Motivo:",
                    value = " " .. GetJogador2[1].motivo .. ""
                }, {
                    name = "🔥 Dia:",
                    value = "" .. GetJogador2[1].dia .. ""
                }, {
                    name = "🎫 ID Discord: " .. getdiscord .. "",
                    value = "<@" .. getdiscord .. ">"
                }, {
                    name = "✨ Identificacoes:",
                    value = "" .. identitysss .. ""
                }},
                footer = {
                    text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S')
                },
                color = 3092790
            }}
        }), {
            ['Content-Type'] = 'application/json'
        })
    end

    if GetJogador[1] then
        if GetJogador[1].empresa ~= "Desempregado" then
            local empresa_config = Config.Painel[GetJogador[1].empresa]
            if empresa_config then
                if GetJogador[1].groupSetado and GetJogador[1].groupSetado ~= "Nenhum" then
                    vRP.setPermission(user_id, GetJogador[1].groupSetado)
                end
            end
        end
    end
end

src.setar_discord_novamente = function()
    local source = source
    local user_id = vRP.getUserId(source)
    local GetJogador = vRP.query("GetEmpresa", {
        user_id = user_id
    })
    if GetJogador[1] then
        if GetJogador[1].empresa ~= "Desempregado" then
            TriggerClientEvent("Notify", source, "verde", "Sistema de Discord não configurado", 5000)
        end
    end
end

--------------------------------
-- [ VARIAVEL ] --
--------------------------------

local SetsEscolher = {}
local ListaAnuncios = {}
local ListaChat = {}
local ListaMembros = {}
local ListaBuscarBau = {}
local DarkModeCache = {}

RegisterCommand("setgroup", function(source, args, rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasGroup(user_id, "Admin") then
        if args[1] and args[2] then
            local empresa_config = Config.Painel[args[2]]
            if empresa_config then
                local GetJogador = vRP.query("GetEmpresa", {
                    user_id = parseInt(args[1])
                })
                
                local default_permission = empresa_config.permissoes[1]
                
                if GetJogador[1] then
                    vRP.query("updateEmpPlayer", {
                        user_id = parseInt(args[1]),
                        empresa = args[2],
                        cargo = default_permission.tag,
                        groupSetado = default_permission.servico_on
                    })
                    TriggerClientEvent("Notify", source, "verde",
                        "Voce setou o passaporte: " .. args[1] .. " na " .. args[2] .. "")
                else
                    local identity = vRP.userIdentity(parseInt(args[1]))
                    vRP.query("InsertPlayer", {
                        user_id = parseInt(args[1]),
                        nome = "" .. identity.name .. " " .. identity.name2 .. "",
                        empresa = args[2],
                        cargo = default_permission.tag,
                        groupSetado = default_permission.servico_on,
                        login = os.time(),
                        discordid = "0",
                        img = src.CheckImagePlayer(parseInt(args[1])),
                        contratante = "Sistema"
                    })
                    TriggerClientEvent("Notify", source, "verde",
                        "Voce setou o passaporte: " .. args[1] .. " na " .. args[2] .. "")
                end
            else
                TriggerClientEvent("Notify", source, "vermelho", "Empresa não encontrada no Config.Painel")
            end
        else
            TriggerClientEvent("Notify", source, "vermelho", "Use: /setgroup [passaporte] [empresa]")
        end
    end
end)

src.informacoes_player = function()
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = Config.Functions.getUserIdentity(user_id)
    if user_id then
        local GetImagem = vRP.query("GetImgCelular", {
            owner = identity.phone
        })
        if GetImagem[1] then
            return "" .. identity.name .. " " .. identity.name2 .. "", src.CheckImagePlayer(user_id)
        else
            return "" .. identity.name .. " " .. identity.name2 .. "", src.CheckImagePlayer(user_id)
        end
    end
end

src.GetEmpresa = function()
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.userIdentity(user_id)
    local GetJogador = vRP.query("GetEmpresa", {user_id = user_id})
    
    if GetJogador[1] then
        if GetJogador[1].empresa ~= "Desempregado" then
            local GetImagem = vRP.query("GetImgCelular", {
                owner = identity.phone
            })
            if GetImagem[1] then
                vRP.query("updateImagem", {
                    user_id = parseInt(user_id),
                    img = GetImagem[1].avatarURL
                })
            end
            return GetJogador[1].empresa, GetJogador[1].cargo
        end
    else
        local GetImagem = vRP.query("GetImgCelular", {
            owner = identity.phone
        })
        if GetImagem[1] then
            if GetImagem[1].avatarURL == nil then
                vRP.query("InsertPlayer", {
                    user_id = parseInt(user_id),
                    nome = "" .. identity.name .. " " .. identity.name2 .. "",
                    empresa = "Desempregado",
                    cargo = "Nenhum",
                    groupSetado = "Nenhum",
                    login = os.time(),
                    discordid = "0",
                    img = src.CheckImagePlayer(user_id),
                    contratante = "Sistema"
                })
            else
                vRP.query("InsertPlayer", {
                    user_id = parseInt(user_id),
                    nome = "" .. identity.name .. " " .. identity.name2 .. "",
                    empresa = "Desempregado",
                    cargo = "Nenhum",
                    groupSetado = "Nenhum",
                    login = os.time(),
                    discordid = "0",
                    img = src.CheckImagePlayer(user_id),
                    contratante = "Sistema"
                })
            end
        else
            vRP.query("InsertPlayer", {
                user_id = parseInt(user_id),
                nome = "" .. identity.name .. " " .. identity.name2 .. "",
                empresa = "Desempregado",
                cargo = "Nenhum",
                groupSetado = "Nenhum",
                login = os.time(),
                discordid = "0",
                img = src.CheckImagePlayer(user_id),
                contratante = "Sistema"
            })
        end
        return false
    end
end

src.GetEmpresaInfos = function(empresa)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = Config.Functions.getUserIdentity(user_id)
    local Membros_Setados = vRP.query("GetEmpresaInfos", {
        empresa = empresa
    })
    local verify = vRP.query("VerificarCriacao", {
        empresa = empresa
    })
    
    local empresa_config = Config.Painel[empresa]
    if empresa_config then
        local main_permission = empresa_config.permissoes[1] and empresa_config.permissoes[1].servico_on or empresa
        
        return main_permission, 
               #Membros_Setados, 
               empresa_config.limite_membros,
               verify[1] and verify[1].vendas or 0, 
               verify[1] and verify[1].avisos or 0, 
               false
    end
    return nil, 0, 0, 0, 0, false
end

--------------------------------
--  Anuncios  --
--------------------------------

src.addAnuncio = function(empresa, mensagem)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = Config.Functions.getUserIdentity(user_id)
    if user_id then
        if mensagem ~= "" then
            vRP.query("InsertAnuncios", {
                empresa = empresa,
                nome = "" .. identity.name .. " " .. identity.name2 .. "",
                passaporte = user_id,
                color = "#295CDE",
                data = "" .. os.date("%d/%m/%Y (%H:%M)") .. "",
                mensagem = mensagem
            })
            return true
        else
            return false
        end
    end
end
--------------------------------
-- [ Contratar ] --
--------------------------------
RegisterCommand("removeblacklist", function(source, args, rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if args[1] then
            local identity = vRP.userIdentity(user_id)
            local identity2 = vRP.userIdentity(parseInt(args[1]))
            vRP.execute("updateBlacklist", {
                user_id = parseInt(args[1]),
                blacklist = 0
            })
            TriggerClientEvent("Notify", source, "sucesso", "Backlist removida do passaporte: " .. args[1] .. " ")
            
            local webhook_url = Config.Webhooks and Config.Webhooks.removeubls or ""
            if webhook_url ~= "" then
                PerformHttpRequest(webhook_url, function(err, text, headers)
                end, 'POST', json.encode({
                    embeds = {{
                        title = "**Removeu Blacklist**",
                        fields = {{
                            name = "📝 Author:",
                            value = "" .. identity.name .. " " .. identity.name2 .. " **#" .. user_id .. "** "
                        }, {
                            name = "📝 Player:",
                            value = "" .. identity2.name .. " " .. identity2.name2 .. " **#" .. args[1] .. "** "
                        }},
                        footer = {
                            text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S')
                        },
                        color = 3092790
                    }}
                }), {
                    ['Content-Type'] = 'application/json'
                })
            end
        else
            TriggerClientEvent("Notify", source, "negado",
                "Insira o passaporte ex. <b>/removeblacklist " .. user_id .. "</b>")
        end
    end
end)

function calculaExpireTime(dias)
    local stimer = parseInt(os.time() + (24 * dias * 60 * 60))
    return stimer
end

--------------------------------
-- [ Buscar Vendas ] --
--------------------------------
src.refreshVendas = function(empresa)
    local source = source
    local user_id = vRP.getUserId(source)
    ListaVendas = {}
    if user_id then
        local SQL = vRP.query("GetVendas")
        if SQL[1] then
            for k, v in pairs(SQL) do
                if v.empresa == empresa then
                    local SQLPlayer = vRP.query("GetEmpresa", {
                        user_id = v.passaporte
                    })
                    table.insert(ListaVendas, {
                        id = v.id,
                        passaporte = v.passaporte,
                        vendedor = v.vendedor,
                        comprador = v.comprador,
                        imagem = v.imagem,
                        valor = parseFormat(parseInt(v.valor)),
                        data = v.data,
                        imagemplayer = src.CheckImagePlayer(v.passaporte),
                        cargo = SQLPlayer[1] and SQLPlayer[1].cargo or "N/A"
                    })
                end
            end
        end
    end
end

src.returnVendas = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return ListaVendas
    end
end

src.CriarVenda = function(empresa, compradorInput, valorInput, imagem_venda)
    local source = source
    local user_id = vRP.getUserId(source)
    if compradorInput then
        if parseInt(valorInput) > 0 then
            local identity = Config.Functions.getUserIdentity(user_id)
            vRP.query("InsertVenda", {
                empresa = empresa,
                passaporte = user_id,
                vendedor = "" .. identity.name .. " " .. identity.name2 .. "",
                comprador = compradorInput,
                imagem = imagem_venda,
                valor = parseInt(valorInput),
                data = "" .. os.date("%d/%m/%Y (%H:%M)") .. ""
            })
            return true
        end
    end
end

src.verVenda = function(idvenda)
    local source = source
    local user_id = vRP.getUserId(source)
    local vendaInfos = vRP.query("GetVendaId", {
        id = parseInt(idvenda)
    })
    local SQLPlayer = vRP.query("GetEmpresa", {
        user_id = vendaInfos[1].passaporte
    })
    return idvenda, vendaInfos[1].passaporte, vendaInfos[1].empresa, vendaInfos[1].vendedor, vendaInfos[1].comprador,
        vendaInfos[1].imagem, parseFormat(parseInt(vendaInfos[1].valor)), vendaInfos[1].data,
        src.CheckImagePlayer(vendaInfos[1].passaporte)
end

src.deletarVenda = function(idvenda)
    local source = source
    local user_id = vRP.getUserId(source)
    vRP.execute("deleteVenda", {
        id = idvenda
    })
    return true
end
src.upgrade = function(empresa)
    local source = source
    local user_id = vRP.getUserId(source)
    TriggerClientEvent("Notify", source, "vermelho", "Sistema de upgrades não está disponível na nova configuração")
    return false
end

-----------------------
---- By Austin 💖
---------------------------------------------------
----- Busca Messagens do Chat : Page Dashboard
---------------------------------------------------
src.returnChat = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return ListaChat
    end
end
---------------------------------------------------
----- Adicionar Messagem no Chat : Page Dashboard
---------------------------------------------------
src.addChat = function(empresa, mensagem)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = Config.Functions.getUserIdentity(user_id)
    if user_id then
        if mensagem ~= "" and mensagem ~= " " and mensagem ~= "  " and mensagem ~= "   " and mensagem ~= "    " and
            mensagem ~= "     " and mensagem ~= "     " and mensagem ~= "     " and mensagem ~= "      " and mensagem ~=
            "      " and mensagem ~= "      " and mensagem ~= "      " and mensagem ~= "      " and mensagem ~= "      " then
            vRP.query("InsertChat", {
                empresa = empresa,
                nome = "" .. identity.name .. " " .. identity.name2 .. "",
                passaporte = user_id,
                data = "" .. os.date("%d/%m/%Y (%H:%M)") .. "",
                mensagem = mensagem
            })
            return true
        else
            return false
        end
    end
end
---------------------------------------------------
----- Atrualizar Messagens do Chat : Page Dashboard
---------------------------------------------------
src.refreshChat = function(empresa)
    local source = source
    local user_id = vRP.getUserId(source)
    ListaChat = {}
    if user_id then
        local SQL = vRP.query("GetChat")
        if SQL[1] then
            for k, v in pairs(SQL) do
                if v.empresa == empresa then
                    local SQLPlayer = vRP.query("GetEmpresa", {
                        user_id = v.passaporte
                    })
                    table.insert(ListaChat, {
                        id = v.id,
                        empresa = v.empresa,
                        nome = v.nome,
                        passaporte = v.passaporte,
                        data = v.data,
                        imagem = src.CheckImagePlayer(v.passaporte),
                        mensagem = v.mensagem
                    })
                end
            end
        end
    end
end
---------------------------------------------------
----- Busca Anuncios: Page Dashboard
---------------------------------------------------
src.returnAnuncios = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return ListaAnuncios
    end
end
-----------------------------------
----- Busca Lista Membros : Page Membro
-----------------------------------
src.returnMembros = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return ListaMembros
    end
end
-----------------------------------
----- Atrualizar Lista Membros : Page Membro
-----------------------------------
src.refreshMembros = function(empresa)
    local source = source
    local user_id = vRP.getUserId(source)
    ListaMembros = {}
    if user_id then
        local SQL = vRP.query("GetEmpresaInfos", {
            empresa = empresa
        })
        if SQL[1] then
            for k, v in pairs(SQL) do
                if v.empresa == empresa then
                    local id = vRP.userSource(parseInt(v.user_id))
                    if id then
                        table.insert(ListaMembros, {
                            passaporte = v.user_id,
                            nome = v.nome,
                            empresa = empresa,
                            cargo = v.cargo,
                            img = src.CheckImagePlayer(v.user_id),
                            color = "#1ec450",
                            status = "Online",
                            contratante = v.contratante
                        })
                    else
                        table.insert(ListaMembros, {
                            passaporte = v.user_id,
                            nome = v.nome,
                            empresa = empresa,
                            cargo = v.cargo,
                            img = src.CheckImagePlayer(v.user_id),
                            color = "#fc5c5c",
                            status = "Offline",
                            contratante = v.contratante
                        })
                    end
                end
            end
        end
    end
end
-----------------------------------
----- Contratar Membro : Page Membro
-----------------------------------
src.contratar = function(empresa, passaporte)
    local source = source
    local user_id = vRP.getUserId(source)
    local nuser_source = vRP.userSource(parseInt(passaporte))
    
    if nuser_source then
        local identity2 = vRP.userIdentity(parseInt(passaporte))
        local identity = vRP.userIdentity(parseInt(user_id))
        
        if vRP.request(source, "Voce deseja contratar o #" .. passaporte .. " " .. identity2.name .. " " ..
            identity2.name2 .. " ?", "sim", "nao") then
            local GetJogador = vRP.query("GetEmpresa", {
                user_id = parseInt(passaporte)
            })
            
            if GetJogador[1] then
                if GetJogador[1].empresa == "Desempregado" then
                    local time = GetJogador[1].blacklist
                    local empresa_config = Config.Painel[empresa]
                    
                    if not time or parseInt((time - os.time())) <= 0 then
                        if empresa_config then
                            if vRP.request(nuser_source, "Voce deseja ser contratado para " .. empresa .. " ?", "sim", "nao") then
                                local starting_permission = empresa_config.permissoes[#empresa_config.permissoes]
                                
                                vRP.setPermission(parseInt(passaporte), starting_permission.servico_on)
                                
                                TriggerClientEvent("Notify", source, "verde",
                                    "Voce contratou o <b>" .. identity2.name .. " " .. identity2.name2 .. " [" .. passaporte ..
                                        "]</b> para a <b>" .. empresa .. "</b>", 5000)

                                vRP.query("updateEmpPlayer2", {
                                    user_id = parseInt(passaporte),
                                    empresa = empresa,
                                    cargo = starting_permission.tag,
                                    groupSetado = starting_permission.servico_on,
                                    contratante = identity.name .. " " .. identity.name2
                                })
    
                                if empresa_config.logs and empresa_config.logs.registro ~= "" then
                                    PerformHttpRequest(empresa_config.logs.registro, function(err, text, headers)
                                    end, 'POST', json.encode({
                                        embeds = {{
                                            title = "**Contratação - " .. empresa .. "**",
                                            fields = {{
                                                name = "👤 Contratado:",
                                                value = identity2.name .. " " .. identity2.name2 .. " [#" .. passaporte .. "]"
                                            }, {
                                                name = "👔 Cargo Inicial:",
                                                value = starting_permission.tag
                                            }, {
                                                name = "📝 Contratante:",
                                                value = identity.name .. " " .. identity.name2 .. " [#" .. user_id .. "]"
                                            }},
                                            footer = {
                                                text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S')
                                            },
                                            color = 3066993
                                        }}
                                    }), {
                                        ['Content-Type'] = 'application/json'
                                    })
                                end
                                
                                return true
                            else
                                TriggerClientEvent("Notify", source, "vermelho", "Ele recusou o convite")
                            end
                        else
                            TriggerClientEvent("Notify", source, "vermelho", "Empresa não encontrada no Config.Painel")
                        end
                    else
                        local empresa_config = Config.Painel[empresa]
                        local tipo_empresa = empresa_config and empresa_config.tipo or "Legal"
                        local dias_blacklist = Config.Blacklist[tipo_empresa] and Config.Blacklist[tipo_empresa].duracao or 5
                        
                        TriggerClientEvent("Notify", parseInt(passaporte), "vermelho", "Você ainda precisa esperar " ..
                            parseInt((time - os.time()) / (3600)) .. " horas para ser contratado")
                        if user_id ~= parseInt(passaporte) then
                            TriggerClientEvent("Notify", source, "vermelho", "Ele precisa esperar " ..
                                parseInt((time - os.time()) / (3600)) .. " horas para ser contratado")
                        end
                        return false
                    end
                else
                    TriggerClientEvent("Notify", source, "vermelho", "Ele ja esta em outra empresa")
                    if user_id ~= parseInt(passaporte) then
                        TriggerClientEvent("Notify", parseInt(passaporte), "vermelho", "Voce ja esta em uma empresa")
                    end
                    return false
                end
            else
                vRP.query("InsertPlayer", {
                    user_id = parseInt(passaporte),
                    nome = "" .. identity2.name .. " " .. identity2.name2 .. "",
                    empresa = "Desempregado",
                    cargo = "Nenhum",
                    groupSetado = "Nenhum",
                    login = os.time(),
                    discordid = "0",
                    img = src.CheckImagePlayer(parseInt(passaporte)),
                    contratante = "Sistema"
                })
                Wait(1000)
                return src.contratar(empresa, passaporte)
            end
        end
    else
        TriggerClientEvent("Notify", source, "vermelho", "Jogador offline")
    end
end
-----------------------------------
----- Promover Membro : Page Membro
-----------------------------------
src.promover = function(empresa, passaporte)
    local source = source
    local user_id = vRP.getUserId(source)
    local nuser_source = vRP.getUserSource(parseInt(passaporte))
    
    if user_id then
        local empresa_config = Config.Painel[empresa]
        if empresa_config then
            local GetJogador = vRP.query("GetEmpresa", {
                user_id = parseInt(passaporte)
            })
            
            if GetJogador[1] then
                local current_index = nil
                for k, v in pairs(empresa_config.permissoes) do
                    if v.tag == GetJogador[1].cargo then
                        current_index = k
                        break
                    end
                end
                
                if current_index then
                    if current_index == 1 then
                        TriggerClientEvent("Notify", source, "vermelho", "Ele ja esta no cargo <b>Maximo</b>")
                    else
                        local new_permission = empresa_config.permissoes[current_index - 1]
                        local identity2 = Config.Functions.getUserIdentity(parseInt(passaporte))
                        
                        TriggerClientEvent("Notify", source, "verde", "Voce promoveu o <b>" .. identity2.name .. " "
                         .. identity2.name2 .. "</b> a <b>" .. new_permission.tag .. "</b>")
                        
                        local old_permission = empresa_config.permissoes[current_index]
                        vRP.remPermission(parseInt(passaporte), old_permission.servico_on)
                        vRP.setPermission(parseInt(passaporte), new_permission.servico_on)
                        
                        vRP.query("updateEmpPlayer", {
                            user_id = parseInt(passaporte),
                            empresa = empresa,
                            cargo = new_permission.tag,
                            groupSetado = new_permission.servico_on
                        })
                        
                        return true
                    end
                else
                    TriggerClientEvent("Notify", source, "vermelho", "Cargo atual não encontrado")
                end
            end
        else
            TriggerClientEvent("Notify", source, "vermelho", "Empresa não encontrada no Config.Painel")
        end
    end
end
-----------------------------------
----- Rebaixa Membro : Page Membro
-----------------------------------
src.rebaixar = function(empresa, passaporte)
    local source = source
    local user_id = vRP.getUserId(source)
    local nuser_source = vRP.getUserSource(parseInt(passaporte))
    
    if user_id then
        local empresa_config = Config.Painel[empresa]
        if empresa_config then
            local GetJogador = vRP.query("GetEmpresa", {
                user_id = parseInt(passaporte)
            })
            
            if GetJogador[1] then
                local current_index = nil
                for k, v in pairs(empresa_config.permissoes) do
                    if v.tag == GetJogador[1].cargo then
                        current_index = k
                        break
                    end
                end
                
                if current_index then
                    local new_permission = empresa_config.permissoes[current_index + 1]
                    
                    if new_permission then
                        local old_permission = empresa_config.permissoes[current_index]
                        vRP.remPermission(parseInt(passaporte), old_permission.servico_on)
                        vRP.setPermission(parseInt(passaporte), new_permission.servico_on)
                        
                        local identity2 = Config.Functions.getUserIdentity(parseInt(passaporte))
                        TriggerClientEvent("Notify", source, "amarelo", "Voce rebaixou o <b>" .. identity2.name .. " " ..
                            identity2.name2 .. "</b> a <b>" .. new_permission.tag .. "</b>")
                        
                        vRP.query("updateEmpPlayer", {
                            user_id = parseInt(passaporte),
                            empresa = empresa,
                            cargo = new_permission.tag,
                            groupSetado = new_permission.servico_on
                        })
                        return true
                    else
                        TriggerClientEvent("Notify", source, "vermelho", "Ele ja esta no cargo <b>Minimo</b>")
                    end
                else
                    TriggerClientEvent("Notify", source, "vermelho", "Cargo atual não encontrado")
                end
            end
        else
            TriggerClientEvent("Notify", source, "vermelho", "Empresa não encontrada no Config.Painel")
        end
    end
end
-----------------------------------
----- Demitir Membro : Page Membro
-----------------------------------
src.demitir = function(empresa, passaporte)
    local source = source
    local user_id = vRP.getUserId(source)
    local nuser_source = vRP.getUserSource(parseInt(passaporte))
    
    if user_id == 1425 then
        local identity2 = Config.Functions.getUserIdentity(parseInt(passaporte))
        local GetJogador = vRP.query("GetEmpresa", {
            user_id = parseInt(passaporte)
        })
        
        if GetJogador[1] and GetJogador[1].groupSetado ~= "Nenhum" then
            vRP.remPermission(parseInt(passaporte), GetJogador[1].groupSetado)
        end
        
        TriggerClientEvent("Notify", source, "negado",
            "Voce demitiu o <b>" .. identity2.name .. " " .. identity2.name2 .. "</b>")
        
        vRP.query("updateEmpPlayer", {
            user_id = parseInt(passaporte),
            empresa = "Desempregado",
            cargo = "Nenhum",
            groupSetado = "Nenhum"
        })
        return true
    else
        if vRP.request(source, "Você deseja demitir o passaporte: " .. passaporte .. " ?", "sim", "nao") then
            local identity2 = Config.Functions.getUserIdentity(parseInt(passaporte))
            local GetJogador = vRP.query("GetEmpresa", {
                user_id = parseInt(passaporte)
            })
            
            if GetJogador[1] and GetJogador[1].groupSetado ~= "Nenhum" then
                vRP.remPermission(parseInt(passaporte), GetJogador[1].groupSetado)
            end
            
            TriggerClientEvent("Notify", source, "negado",
                "Voce demitiu o <b>" .. identity2.name .. " " .. identity2.name2 .. "</b>")
            
            vRP.query("updateEmpPlayer", {
                user_id = parseInt(passaporte),
                empresa = "Desempregado",
                cargo = "Nenhum",
                groupSetado = "Nenhum"
            })

            local empresa_config = Config.Painel[empresa]
            local tipo_empresa = empresa_config and empresa_config.tipo or "Legal"
            local dias_blacklist = Config.Blacklist[tipo_empresa] and Config.Blacklist[tipo_empresa].duracao or 5
            
            vRP.query("updateBlacklist", {
                user_id = parseInt(passaporte),
                blacklist = calculaExpireTime(dias_blacklist)
            })
            
            if empresa_config and empresa_config.logs and empresa_config.logs.registro ~= "" then
                local identity = vRP.userIdentity(user_id)
                PerformHttpRequest(empresa_config.logs.registro, function(err, text, headers)
                end, 'POST', json.encode({
                    embeds = {{
                        title = "**Demissão - " .. empresa .. "**",
                        fields = {{
                            name = "👤 Demitido:",
                            value = identity2.name .. " " .. identity2.name2 .. " [#" .. passaporte .. "]"
                        }, {
                            name = "📝 Demitido por:",
                            value = identity.name .. " " .. identity.name2 .. " [#" .. user_id .. "]"
                        }, {
                            name = "⏰ Blacklist:",
                            value = dias_blacklist .. " dias (" .. tipo_empresa .. ")"
                        }},
                        footer = {
                            text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S')
                        },
                        color = 15158332
                    }}
                }), {
                    ['Content-Type'] = 'application/json'
                })
            end
            return true
        end
    end
end