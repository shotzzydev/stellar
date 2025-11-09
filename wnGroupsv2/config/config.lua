Config = {}

Config.Imagens_Inventario = "nui://wnInventoryC5/script/web-side/images"

Config.Blacklist = {
    ["Legal"] = { duracao = 5 },
    ["Ilegal"] = { duracao = 5 },
}

Config.Comandos = {
    AbrirPainel = "tablet", -- [ ABRIR PAINEL ]
    TriggerVerificarSetagens = "wnGroupsv2:VerificarSetagens" -- [ ESSE TRIGGER DEVE SER INSERIDO NO /group id ]
}

Config.Painel = {

    ["Policia"] = {
        tipo = "Legal", -- # [ Ilegal / Legal ]
        limite_membros = 60,
        permissoes = {
            [1] = { tag = "Comando", servico_on = "Police", hierarquia = 1 },
            [2] = { tag = "Sub Comando", servico_on = "Police", hierarquia = 2 },
            [3] = { tag = "Coronel", servico_on = "Police", servico_off = "waitPolice", hierarquia = 3 },
            [4] = { tag = "Tenente-Coronel", servico_on = "Police", servico_off = "waitPolice", hierarquia = 4 },
            [5] = { tag = "Major", servico_on = "Police", servico_off = "waitPolice", hierarquia = 5 },
            [6] = { tag = "1º Tenente", servico_on = "Police", servico_off = "waitPolice", hierarquia = 6 },
            [7] = { tag = "2º Tenente", servico_on = "Police", servico_off = "waitPolice", hierarquia = 7 },
            [8] = { tag = "Aspirante a Oficial", servico_on = "Police", servico_off = "waitPolice", hierarquia = 8 },
            [9] = { tag = "Subtenente", servico_on = "Police", servico_off = "waitPolice", hierarquia = 9 },
            [10] = { tag = "1º Sargento", servico_on = "Police", servico_off = "waitPolice", hierarquia = 10 },
            [11] = { tag = "2º Sargento", servico_on = "Police", servico_off = "waitPolice", hierarquia = 11 },
            [12] = { tag = "3º Sargento", servico_on = "Police", servico_off = "waitPolice", hierarquia = 12 },
            [13] = { tag = "Cabo", servico_on = "Police", servico_off = "waitPolice", hierarquia = 13 },
            [14] = { tag = "Soldado 1ª Classe", servico_on = "Police", servico_off = "waitPolice", hierarquia = 14 },
            [15] = { tag = "Soldado 2ª Classe", servico_on = "Police", servico_off = "waitPolice", hierarquia = 15 },
            [16] = { tag = "Aluno", servico_on = "Police", servico_off = "waitPolice", hierarquia = 16 },
        },
        logs = {
            painel = "",
            registro = "",
        },
        ranking_settings = {
            nome = "Hospital",
            imagem = "https://images-ext-1.discordapp.net/external/UPCy37x8LKM8dd0RfEf7TF-2DsJKYvAM0w8kq1ga6_c/%3Fsize%3D2048/https/cdn.discordapp.com/icons/1080020903036989470/ede5a178cf43f02e67c5a2f4a35c34c1.png?format=webp&quality=lossless&width=676&height=676",
        },
    },   

    ["Hospital"] = {
        tipo = "Legal", -- # [ Ilegal / Legal ]
        limite_membros = 60,
        permissoes = {
            [1] = { tag = "Diretor", servico_on  = "Diretor-Paramedic", servico_off = "waitDiretor-Paramedic", hierarquia = 1, salario = 11000 },
            [2] = { tag = "Vice diretor", servico_on = "Gerente-Paramedic", servico_off = "waitDiretor-Paramedic", hierarquia = 2, salario = 9000 },
            [3] = { tag = "Cordenador", servico_on = "Gerente-Paramedic", servico_off = "waitDiretor-Paramedic", hierarquia = 3, salario = 7000 },
            [4] = { tag = "Medico", servico_on = "Paramedic", servico_off = "waitDiretor-Paramedic", hierarquia = 4, salario = 6000 },
            [5] = { tag = "Enfermeiro", servico_on = "Paramedic", servico_off = "waitDiretor-Paramedic", hierarquia = 5, salario = 5000 },
            [6] = { tag = "Estagiario", servico_on = "Paramedic", servico_off = "waitDiretor-Paramedic", hierarquia = 6, salario = 4000 },
        },
        logs = {
            painel = "",
            registro = "",
        },
        ranking_settings = {
            nome = "Hospital",
            imagem = "https://images-ext-1.discordapp.net/external/UPCy37x8LKM8dd0RfEf7TF-2DsJKYvAM0w8kq1ga6_c/%3Fsize%3D2048/https/cdn.discordapp.com/icons/1080020903036989470/ede5a178cf43f02e67c5a2f4a35c34c1.png?format=webp&quality=lossless&width=676&height=676",
        },
        itens_vendas = {
            "bandage",
            "medkit",
            "adrenaline",
            "gauze",
            "syringe",
            "syringe01",
            "syringe02",
            "syringe03",
            "syringe04",
        },
    },   

    ["Cafe"] = {
        tipo = "Legal", -- # [ Ilegal / Legal ]
        limite_membros = 60,
        permissoes = {
            [1] = { tag = "Chefe Cafe", servico_on  = "Chefe-Cafe", servico_off = "waitChefe-Cafe", hierarquia = 1, salario = 11000 },
            [2] = { tag = "Gerente Cafe", servico_on = "Gerente-Cafe", servico_off = "waitGerente-Cafe", hierarquia = 2, salario = 9000 },
            [3] = { tag = "Cafe", servico_on = "Cafe", servico_off = "waitCafe", hierarquia = 3, salario = 7000 },
        },
        logs = {
            painel = "",
            registro = "",
        },
        ranking_settings = {
            nome = "Cafe",
            imagem = "https://images-ext-1.discordapp.net/external/UPCy37x8LKM8dd0RfEf7TF-2DsJKYvAM0w8kq1ga6_c/%3Fsize%3D2048/https/cdn.discordapp.com/icons/1080020903036989470/ede5a178cf43f02e67c5a2f4a35c34c1.png?format=webp&quality=lossless&width=676&height=676",
        },
        itens_vendas = {
            "bandage",
            "medkit",
            "adrenaline",
            "gauze",
            "syringe",
            "syringe01",
            "syringe02",
            "syringe03",
            "syringe04",
        },
    },

    ["Helipa"] = {
        tipo = "Ilegal", -- # [ Ilegal / Legal ]
        limite_membros = 60,
        permissoes = {
            [1] = { tag = "Lider", servico_on  = "Lider-Helipa", servico_off = "", hierarquia = 1 },
            [2] = { tag = "Sub Lider", servico_on = "Sub-Lider-Helipa", servico_off = "", hierarquia = 2 },
            [3] = { tag = "Gerente", servico_on = "Gerente-Helipa", servico_off = "", hierarquia = 2 },
            [4] = { tag = "Elíte", servico_on = "Elite-Helipa", servico_off = "", hierarquia = 3 },
            [5] = { tag = "Membro", servico_on = "Membro-Helipa", servico_off = "", hierarquia = 3 },
        },
        logs = {
            painel = "",
            registro = "",
        },
        ranking_settings = {
            nome = "Helipa",
            imagem = "https://media.discordapp.net/attachments/1157069784446414898/1290986023630934057/LOGO_Meet_RP_2000x2000_V2_-_by_Design_Ideal.png?ex=66fe73ed&is=66fd226d&hm=04f266318edc754b39c3280b78f7a41c569b4117656c50534c123a69ebf4ef1a&=&format=webp&quality=lossless&width=350&height=350",
        },
        itens_vendas = {
            "bandage",
            "medkit",
            "adrenaline",
            "gauze",
            "syringe",
            "syringe01",
            "syringe02",
            "syringe03",
            "syringe04",
        },
    },
}

Config.Functions = {

	getUserIdentity = function(user_id) -- [ Função para puxar nome do players ]
        return vRP.userIdentity(user_id)
    end,

}

return Config