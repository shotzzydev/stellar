Config = {}

Config.NomeCidade = "Stellar"

Config.Baus = {
	["Hospital"] = {
		NomeBau = "Hospital", 
		Coords = { ['x'] = 1135.13, ['y'] = -1545.09, ['z'] = 35.03 },
		perms = { 
			GerenciarBau = { 'Diretor-Paramedic' },
			RetirarItensBlacklist = { 'Gerente-Paramedic' },
			Acessar = { 'Paramedic' },
		},
		webhook = "",
	},
	["Cafe"] = {
		NomeBau = "Cafe", 
		Coords = { ['x'] = -1548.46, ['y'] = -453.86, ['z'] = 36.19 },
		perms = { 
			Acessar = { 'Cafe' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Cafe",
	},

	["BauTeste"] = {
		NomeBau = "Cupula", 
		Coords = { ['x'] = 3081.17, ['y'] = 5462.62, ['z'] = 23.69 },
		perms = { 
			GerenciarBau = { 'Chefe-Cafe' },
			RetirarItensBlacklist = { 'Gerente-Cafe' },
			Acessar = { 'Cafe' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Cafe",
	},

	["Mineradora"] = {
		NomeBau = "Mineradora", 
		Coords = { ['x'] = 2860.61, ['y'] = 2681.73, ['z'] = 102.14 },
		perms = { 
			GerenciarBau = { 'Lider-Mineradora' },
			RetirarItensBlacklist = { 'Gerente-Mineradora' },
			Acessar = { 'Mineradora' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Mineradora",
	},

	["Mineradora-Lider"] = {
		NomeBau = "Mineradora", 
		Coords = { ['x'] = 2847.74, ['y'] = 2686.08, ['z'] = 102.11 },
		perms = { 
			GerenciarBau = { 'Lider-Mineradora' },
			RetirarItensBlacklist = { 'Gerente-Mineradora' },
			Acessar = { 'Gerente-Mineradora' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Mineradora",
	},

	["Rodovia"] = {
		NomeBau = "Rodovia", 
		Coords = { ['x'] = 1555.32, ['y'] = 1465.14, ['z'] = 114.49 },
		perms = { 
			GerenciarBau = { 'Lider-Rodovia' },
			RetirarItensBlacklist = { 'Gerente-Rodovia' },
			Acessar = { 'Rodovia' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Rodovia",
	},

	["Rodovia-Lider"] = {
		NomeBau = "Rodovia", 
		Coords = { ['x'] = 1553.58, ['y'] = 1465.32, ['z'] = 111.14 },
		perms = { 
			GerenciarBau = { 'Lider-Rodovia' },
			RetirarItensBlacklist = { 'Gerente-Rodovia' },
			Acessar = { 'Gerente-Rodovia' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Rodovia",
	},

	["Antena"] = {
		NomeBau = "Antena", 
		Coords = { ['x'] = 897.54, ['y'] = 1988.91, ['z'] = 84.77 },
		perms = { 
			GerenciarBau = { 'Lider-Antena' },
			RetirarItensBlacklist = { 'Gerente-Antena' },
			Acessar = { 'Antena' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Antena",
	},

	["Antena-Lider"] = {
		NomeBau = "Antena", 
		Coords = { ['x'] = 883.31, ['y'] = 1972.78, ['z'] = 86.27 },
		perms = { 
			GerenciarBau = { 'Lider-Antena' },
			RetirarItensBlacklist = { 'Gerente-Antena' },
			Acessar = { 'Gerente-Antena','Antena' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Antena",
	},

	["Helipa"] = {
		NomeBau = "Helipa", 
		Coords = { ['x'] = 1335.14, ['y'] = -837.63, ['z'] = 93.95 },
		perms = { 
			GerenciarBau = { 'Lider-Helipa' },
			RetirarItensBlacklist = { 'Gerente-Helipa' },
			Acessar = { 'Helipa' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Helipa",
	},

	["Helipa-Lider"] = {
		NomeBau = "Helipa", 
		Coords = { ['x'] = 1393.15, ['y'] = -769.47, ['z'] = 77.61 },
		perms = { 
			GerenciarBau = { 'Lider-Helipa' },
			RetirarItensBlacklist = { 'Gerente-Helipa' },
			Acessar = { 'Gerente-Helipa','Helipa' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Helipa",
	},

	["Municao1"] = {
		NomeBau = "Municao1", 
		Coords = { ['x'] = 3448.57, ['y'] = 4893.61, ['z'] = 35.99 },
		perms = { 
			GerenciarBau = { 'Lider-Municao1' },
			RetirarItensBlacklist = { 'Gerente-Municao1' },
			Acessar = { 'Municao1' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Municao1",
	},

	["Municao1-Lider"] = {
		NomeBau = "Municao1", 
		Coords = { ['x'] = 3439.85, ['y'] = 4935.78, ['z'] = 39.85 },
		perms = { 
			GerenciarBau = { 'Lider-Municao1' },
			RetirarItensBlacklist = { 'Gerente-Municao1' },
			Acessar = { 'Gerente-Municao1','Municao1' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Municao1",
	},

	["Municao2"] = {
		NomeBau = "Municao2", 
		Coords = { ['x'] = -2591.61, ['y'] = 1893.2, ['z'] = 167.3 },
		perms = { 
			GerenciarBau = { 'Lider-Municao2' },
			RetirarItensBlacklist = { 'Gerente-Municao2' },
			Acessar = { 'Municao2' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Municao2",
	},
	
	["Municao2-Lider"] = {
		NomeBau = "Municao2", 
		Coords = { ['x'] = -2588.83, ['y'] = 1893.95, ['z'] = 163.71 },
		perms = { 
			GerenciarBau = { 'Lider-Municao2' },
			RetirarItensBlacklist = { 'Gerente-Municao2' },
			Acessar = { 'Gerente-Municao2','Municao2' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Municao2",
	},

	["Armas1"] = {
		NomeBau = "Armas1", 
		Coords = { ['x'] = 1428.73, ['y'] = 4712.33, ['z'] = 134.83 },
		perms = { 
			GerenciarBau = { 'Lider-Armas1' },
			RetirarItensBlacklist = { 'Gerente-Armas1' },
			Acessar = { 'Armas1' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Armas1",
	},
	
	["Armas1-Lider"] = {
		NomeBau = "Armas1", 
		Coords = { ['x'] = 1409.74, ['y'] = 4716.35, ['z'] = 140.24 },
		perms = { 
			GerenciarBau = { 'Lider-Armas1' },
			RetirarItensBlacklist = { 'Gerente-Armas1' },
			Acessar = { 'Gerente-Armas1','Armas1' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Armas1",
	},

	["Armas2"] = {
		NomeBau = "Armas2", 
		Coords = { ['x'] = -3225.96, ['y'] = 811.32, ['z'] = 8.93 },
		perms = { 
			GerenciarBau = { 'Lider-Armas2' },
			RetirarItensBlacklist = { 'Gerente-Armas2' },
			Acessar = { 'Armas2' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Armas2",
	},
	
	["Armas2-Lider"] = {
		NomeBau = "Armas2", 
		Coords = { ['x'] = -3233.35, ['y'] = 814.24, ['z'] = 14.07 },
		perms = { 
			GerenciarBau = { 'Lider-Armas2' },
			RetirarItensBlacklist = { 'Gerente-Armas2' },
			Acessar = { 'Gerente-Armas2','Armas2' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Armas2",
	},

	["Mecanica"] = {
		NomeBau = "Mecanica", 
		Coords = { ['x'] = 913.86, ['y'] = -2099.4, ['z'] = 30.46 },
		perms = { 
			GerenciarBau = { 'Chefe-Mecanica' },
			RetirarItensBlacklist = { 'Gerente-Mecanica' },
			Acessar = { 'Mecanica' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Mecanica",
	},

	["Mecanica-Chefe"] = {
		NomeBau = "Mecanica", 
		Coords = { ['x'] = 886.25, ['y'] = -2097.41, ['z'] = 34.88 },
		perms = { 
			GerenciarBau = { 'Chefe-Mecanica' },
			RetirarItensBlacklist = { 'Gerente-Mecanica' },
			Acessar = { 'Gerente-Mecanica' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "Mecanica",
	},

	["Mecanica-Ilegal"] = {
		NomeBau = "Mecanica", 
		Coords = { ['x'] = 934.74, ['y'] = -1460.83, ['z'] = 33.62 },
		perms = { 
			GerenciarBau = { 'Chefe-Mecanica' },
			RetirarItensBlacklist = { 'Gerente-Mecanica' },
			Acessar = { 'Mecanica' },
		},
		webhook = "",
		TextoTarget = "Abrir",
		wnRotas = "MecanicaSul-Ilegal",
	},


	["Policia"] = {
		NomeBau = "Policia", 
		Coords = { ['x'] = 2510.52, ['y'] = -329.65, ['z'] = 101.89 },
		perms = { 
			GerenciarBau = { 'Comando-Police' },
			RetirarItensBlacklist = { 'SubComando-Police' },
			Acessar = { 'Police' },
		},
		webhook = "",
		TextoTarget = "Abrir",
	},

	["Policia-Comando"] = {
		NomeBau = "Policia Comando", 
		Coords = { ['x'] = 2521.56, ['y'] = -323.93, ['z'] = 101.89 },
		perms = { 
			GerenciarBau = { 'Comando-Police' },
			RetirarItensBlacklist = { 'SubComando-Police' },
			Acessar = { 'Comando-Police','SubComando-Police' },
		},
		webhook = "",
		TextoTarget = "Abrir",
	},


}

Config.Lojas = {

	["coffeeMachine"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["coffe"] = 50,
		},
	}, 

	["sodaMachine"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["cola"] = 350,
			["soda"] = 350,
		},
	},
	
	["donutMachine"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["donut"] = 150,
			["cola"] = 150,
		},
	},

	["burgerMachine"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["hamburger"] = 350,
		},
	},

	["hotdogMachine"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["hotdog"] = 350,
		},
	},

	["Chihuahua"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["hotdog"] = 350,
			["hamburger"] = 350,
			["coffee"] = 350,
			["cola"] = 350,
			["soda"] = 350,
		},
	},

	["waterMachine"] = {
		NomeLoja = "Lojinha",
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["water"] = 350,
		},
	},



	["Lojinha-Hospital"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1136.93, ['y'] = -1555.67, ['z'] = 35.03 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	}, 

	["MercadoIlegal"] = {
		NomeLoja = "Mercado Ilegal",
		Coords = { ['x'] = -595.96, ['y'] = 217.63, ['z'] = 74.16 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["handcuff"] = 20000,
			["hood"] = 20000,
			["pager"] = 20000,
			["card01"] = 2500,
			["card02"] = 15000,
			["card03"] = 25000,
			["card04"] = 30000,
			["card05"] = 60000,
			["lockpick"] = 2000,
			["lockpick2"] = 2000,
			["floppy"] = 3000,
			["WEAPON_CROWBAR"] = 2000,
			["kitattachs"] = 10000,
		},
	}, 

	["MercadoIlegal2"] = {
		NomeLoja = "Mercado Ilegal",
		Coords = { ['x'] = -597.86, ['y'] = 223.96, ['z'] = 74.14 },
		perms = { },
		Type = "Sell", -- [ BUY OU SELL ]
		Itens = {
			["keyboard"] = 1200,
			["mouse"] = 800,
			["playstation"] = 6000,
			["xbox"] = 6000,
			["dish"] = 700,
			["pan"] = 700,
			["fan"] = 1800,
			["blender"] = 2400,
			["switch"] = 1400,
			["cup"] = 1400,
			["lampshade"] = 800,
			["silverring"] = 800,
			["goldring"] = 1400,
			["watch"] = 1000,
			["bracelet"] = 1000,
			["dildo"] = 1400,
			["spray01"] = 1400,
			["spray02"] = 1400,
			["spray03"] = 1400,
			["spray04"] = 1400,
			["sneakers"] = 1200,
			["slipper"] = 1400,
			["rimel"] = 1400,
			["brush"] = 1400,
			["soap"] = 1400,			
		},
	}, 


	["Lojinha1"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -1220.67, ['y'] = -1447.71, ['z'] = 4.4 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	}, 

	["Lojinha2"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 25.75, ['y'] = -1346.95, ['z'] = 29.49 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	}, 

	["Lojinha3"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -707.41, ['y'] = -913.87, ['z'] = 19.21 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	}, 

	["Lojinha4"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -1487.3, ['y'] = -379.02, ['z'] = 40.15 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	}, 

	["Lojinha5"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -48.15, ['y'] = -1757.77, ['z'] = 29.42 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha6"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1135.59, ['y'] = -981.85, ['z'] = 46.4 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha7"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1163.31, ['y'] = -323.86, ['z'] = 69.2 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha8"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 374.14, ['y'] = 326.52, ['z'] = 103.56 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha9"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -1223.16, ['y'] = -906.88, ['z'] = 12.32 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha10"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 547.52, ['y'] = 2670.76, ['z'] = 42.16 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha11"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1392.36, ['y'] = 3604.36, ['z'] = 34.98 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha12"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1961.41, ['y'] = 3740.89, ['z'] = 32.33 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha13"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1698.31, ['y'] = 4924.83, ['z'] = 42.06 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha14"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 1729.61, ['y'] = 6414.98, ['z'] = 35.03 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},
	
	["Lojinha15"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = 162.14, ['y'] = 6636.41, ['z'] = 31.56 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha16"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -3039.74, ['y'] = 586.03, ['z'] = 7.9 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Lojinha17"] = {
		NomeLoja = "Lojinha",
		Coords = { ['x'] = -2968.28, ['y'] = 390.91, ['z'] = 15.05 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		blip = { asset = "blip3d", imgfile = "blip-lojinha" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			["soap"] = 5000,
			["backpack"] = 15000,
			["rope"] = 2000,
			["soda"] = 100,
			["cola"] = 100,
			["sandwich"] = 100,
			["donut"] = 100,
			["water"] = 125,
			["WEAPON_BRICK"] = 150,
			["postit"] = 125,
			["roupas"] = 15000,
			["dices"] = 125,
			["firecracker"] = 125,
			["rose"] = 80,
			["teddy"] = 500,
			["postit"] = 500,
		},
	},

	["Ammunation"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = 21.12, ['y'] = -1106.38, ['z'] = 29.79 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation2"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = 811.18, ['y'] = -2157.67, ['z'] = 29.62 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},
	
	["Ammunation3"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = 843.43, ['y'] = -1033.95, ['z'] = 28.19 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},
	
	["Ammunation4"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = -1305.49, ['y'] = -393.25, ['z'] = 36.7 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation5"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = 2568.98, ['y'] = 294.12, ['z'] = 108.73 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation6"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = 1693.01, ['y'] = 3758.92, ['z'] = 34.69 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation7"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = -331.2, ['y'] = 6082.9, ['z'] = 31.46 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation8"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = -663.23, ['y'] = -935.22, ['z'] = 21.82 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation9"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = -3172.39, ['y'] = 1086.89, ['z'] = 20.84 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation10"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = -1118.87, ['y'] = 2698.03, ['z'] = 18.55 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Ammunation11"] = {
		NomeLoja = "Ammunation",
		Coords = { ['x'] = 252.89, ['y'] = -49.14, ['z'] = 69.94 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			["GADGET_PARACHUTE"] = 10000,
			["WEAPON_HATCHET"] = 10000,  
			["WEAPON_BAT"] = 10000,
			["WEAPON_BATTLEAXE"] = 10000,
			["WEAPON_GOLFCLUB"] = 10000,
			["WEAPON_HAMMER"] = 10000,
			["WEAPON_MACHETE"] = 10000,
			["WEAPON_STONE_HATCHET"] = 10000,
			["WEAPON_KNUCKLE"] = 10000,
			["WEAPON_FLASHLIGHT"] = 10000,
		},
	},

	["Arsenal"] = {
		NomeLoja = "Arsenal",
		Coords = { ['x'] = 2529.54, ['y'] = -339.08, ['z'] = 101.89 },
		perms = { 'Police' },
		Type = "Buy", -- [ BUY OU SELL ]
		PoliciaItens = true, -- [ CASO FOR UMA LOJINHA DE ITENS POLICAIS ATIVE TRUE ]
		Itens = {
			["cellphone"] = 1,
			["vest"] = 1,
			["gsrkit"] = 1,
			["gdtkit"] = 1,
			["barrier"] = 1,
			["handcuff"] = 1,
			["WEAPON_SMG"] = 200,
			["WEAPON_SMG_MK2"] = 200,
			["WEAPON_PUMPSHOTGUN"] = 200,
			["WEAPON_APPISTOL"] = 200,
			["WEAPON_CARBINERIFLE"] = 200,
			["WEAPON_SPECIALCARBINE_MK2"] = 200,
			["WEAPON_SPECIALCARBINE"] = 200,
			["WEAPON_CARBINERIFLE_MK2"] = 200,
			["WEAPON_PARAFAL"] = 200,
			["WEAPON_FNFAL"] = 200,
			["energetic"] = 1,
			["backpack"] = 1,
			["kitattachs"] = 1,
			["WEAPON_STUNGUN"] = 1,
			["WEAPON_COMBATPISTOL"] = 200,
			["WEAPON_HEAVYPISTOL"] = 200,
			["WEAPON_NIGHTSTICK"] = 200,
			["WEAPON_PISTOL_AMMO"] = 1,
			["WEAPON_SMG_AMMO"] = 1,
			["WEAPON_RIFLE_AMMO"] = 1,
			["WEAPON_SHOTGUN_AMMO"] = 1,
			["badge01"] = 1,
			["badge02"] = 1,
			["badge03"] = 1,
			["badge05"] = 1,
			["badge06"] = 1,
			["badge07"] = 1,
			["badge08"] = 1,
			["badge09"] = 1,
			["badge10"] = 1,
			["radio"] = 1,
			["roupas"] = 1,
			["identity"] = 1
		},
	}, 

	["Farmacia"] = {
		NomeLoja = "Farmacia",
		Coords = { ['x'] = 1140.26, ['y'] = -1529.48, ['z'] = 35.03 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		--PoliciaItens = true, -- [ CASO FOR UMA LOJINHA DE ITENS POLICAIS ATIVE TRUE ]
		Shop = { -- [ CASO VOCE QUEIRA COLOCAR A LOJA COM PESSOAS MINIMAS PARA COMPRAR ALGO  ]
			Quantidade_Min_Acessar = 1,
			perms = { 'Paramedic' },
		},
		blip = { asset = "blip3d", imgfile = "blip-farmacia" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			['bandage'] = 1500,
			['gauze'] = 850,
		},
		Limite_Compra = {
			['bandage'] = { quantidade_maxima = 5, cooldown = 60 }, -- Quantidade de minutos de cooldown
		},
	}, 

	["Cafe"] = {
		NomeLoja = "Cafe",
		Coords = { ['x'] = -1543.97, ['y'] = -459.5, ['z'] = 35.89 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		--PoliciaItens = true, -- [ CASO FOR UMA LOJINHA DE ITENS POLICAIS ATIVE TRUE ]
		Shop = { -- [ CASO VOCE QUEIRA COLOCAR A LOJA COM PESSOAS MINIMAS PARA COMPRAR ALGO  ]
			Quantidade_Min_Acessar = 1,
			perms = { 'Cafe' },
		},
		blip = { asset = "blip3d", imgfile = "catcafe" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			['coxinha'] = 800,
			['milkcereja'] = 800,
			['marshmellow'] = 800,
		},
		Limite_Compra = {
			['bandage'] = { quantidade_maxima = 5, cooldown = 60 }, -- Quantidade de minutos de cooldown
		},
	}, 

	["Farmacia-Privada"] = {
		NomeLoja = "Farmacia Privada",
		Coords = { ['x'] = 1142.77, ['y'] = -1530.07, ['z'] = 35.03 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		--PoliciaItens = true, -- [ CASO FOR UMA LOJINHA DE ITENS POLICAIS ATIVE TRUE ]
		Itens = {
			['bandage'] = 500,
			['gauze'] = 500,
			['medkit'] = 1200,
			['adrenaline'] = 5000,
			['syringe'] = 20,
		},
	}, 

	["DigitalDen"] = {
		NomeLoja = "Digital Den",
		Coords = { ['x'] = -1528.28, ['y'] = -401.07, ['z'] = 35.64 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Itens = {
			['vape'] = 5000,
			['cellphone'] = 4000,
			['backpack'] = 15000,
			['binoculars'] = 5000,
			['camera'] = 5000,
			['radio'] = 3000,
		},
	}, 

	["Mecanica"] = {
		NomeLoja = "Mecanica",
		Coords = { ['x'] = 874.05, ['y'] = -2101.55, ['z'] = 30.46 },
		perms = { },
		Type = "Buy", -- [ BUY OU SELL ]
		Shop = { -- [ CASO VOCE QUEIRA COLOCAR A LOJA COM PESSOAS MINIMAS PARA COMPRAR ALGO  ]
			Quantidade_Min_Acessar = 1,
			perms = { 'Mecanica' },
		},
		blip = { asset = "blip3d", imgfile = "blip-lojamec" }, -- [ SE VOCE DEIXAR ISSO ATIVO ELE SERA UM BLIP 3D e NAO PELO TARGET ]
		Itens = {
			['tyres'] = 1500,
			['toolbox'] = 5000,
			['WEAPON_WRENCH'] = 3000,
			['advtoolbox'] = 8000,
		},
		Limite_Compra = {
			['toolbox'] = { quantidade_maxima = 5, cooldown = 60 }, -- Quantidade de minutos de cooldown
			['advtoolbox'] = { quantidade_maxima = 1, cooldown = 60 }, -- Quantidade de minutos de cooldown
		},
	}, 

}

Config.ItensUsaveis = {

    ['backpack'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
        if vRP.getWeight(user_id) >= 101 then
            return
        end

        Active[user_id] = os.time() + 7
        TriggerClientEvent("Progress",source,7000)
        TriggerClientEvent("wnInventoryC5Close",source)
        TriggerClientEvent("wnInventoryC5blockButtons",source,true)
        vRPC.playAnim(source,true,{"clothingtie","try_tie_negative_a"},true)

        repeat
            if os.time() >= parseInt(Active[user_id]) then
                Active[user_id] = nil
                vRPC.stopAnim(source,"one")
                TriggerClientEvent("wnInventoryC5Buttons",source,false)

                if vRP.tryGetInventoryItem(user_id,totalName,1,true,slot) then
                    vRP.setWeight(user_id,27)
                end
            end

            Citizen.Wait(100)
        until Active[user_id] == nil
        return
    end,

	['soap'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		if vPLAYER.checkSoap(source) then
			Active[user_id] = os.time() + 30
			TriggerClientEvent("Progress",source,30000)
			TriggerClientEvent("wnInventoryC5Close",source)
			TriggerClientEvent("wnInventoryC5Buttons",source,true)
			vRPC.playAnim(source,false,{"amb@world_human_bum_wash@male@high@base","base"},true)

			repeat
				if os.time() >= parseInt(Active[user_id]) then
					Active[user_id] = nil
					vRPC.removeObjects(source)
					TriggerClientEvent("wnInventoryC5Buttons",source,false)

					if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
						vPLAYER.cleanResidual(source)
					end
				end

				Citizen.Wait(100)
			until Active[user_id] == nil
			return
		end
    end,

	['binoculars'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		local ped = GetPlayerPed(source)
		if GetSelectedPedWeapon(ped) ~= GetHashKey("WEAPON_UNARMED") then
			return
		end

		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				TriggerClientEvent("useBinoculos",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)
				vRPC.createObjects(source,"amb@world_human_binoculars@male@enter","enter","prop_binoc_01",50,28422)
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['camera'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		local ped = GetPlayerPed(source)
		if GetSelectedPedWeapon(ped) ~= GetHashKey("WEAPON_UNARMED") then
			return
		end

		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				TriggerClientEvent("useCamera",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)
				vRPC.createObjects(source,"amb@world_human_paparazzi@male@base","base","prop_pap_camera_01",49,28422)
			end

			Citizen.Wait(100)
		until Active[user_id] == nil	
		return	
    end,

	['rose'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("wnInventoryC5Close",source)
		vRPC.createObjects(source,"anim@heists@humane_labs@finale@keycards","ped_a_enter_loop","prop_single_rose",49,18905,0.13,0.15,0.0,-100.0,0.0,-20.0)
    end,

	['vape'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		Active[user_id] = os.time() + 30
		TriggerClientEvent("Progress",source,30000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"anim@heists@humane_labs@finale@keycards","ped_a_enter_loop","ba_prop_battle_vape_01",49,18905,0.08,-0.00,0.03,-150.0,90.0,-10.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRP.downgradeStress(user_id,15)
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['radio'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.stopActived(source)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("radioGui",source)
    end,

	['postit'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("postit:initPostit",source)
    end,

	['firecracker'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		if not vRPC.inVehicle(source) and not vCLIENT.checkCracker(source) then
			Active[user_id] = os.time() + 3
			TriggerClientEvent("Progress",source,3000)
			TriggerClientEvent("wnInventoryC5Close",source)
			TriggerClientEvent("wnInventoryC5Buttons",source,true)
			vRPC.playAnim(source,false,{"anim@mp_fireworks","place_firework_3_box"},true)

			repeat
				if os.time() >= parseInt(Active[user_id]) then
					Active[user_id] = nil
					vRPC.stopAnim(source,false)
					TriggerClientEvent("wnInventoryC5Buttons",source,false)

					if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
						TriggerClientEvent("wnInventoryC5Firecracker",source)
					end
				end

				Citizen.Wait(100)
			until Active[user_id] == nil
		end
    end,

	['dices'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,1750)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@mp_player_intcelebrationmale@wank","wank"},true)

		Citizen.Wait(1750)

		Active[user_id] = nil
		vRPC.stopAnim(source,false)
		TriggerClientEvent("wnInventoryC5Buttons",source,false)

		local Dice = math.random(6)
		local activePlayers = vRPC.activePlayers(source)
		for _,v in ipairs(activePlayers) do
			async(function()
				TriggerClientEvent("showme:pressMe",v,source,"<img src='images/"..Dice..".png'>",10,true)
			end)
		end
		return
    end,

	['campfire'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("wnInventoryC5Close",source)
		local application,coords,heading = vRPC.objectCoords(source,"prop_beach_fire")
		if application then
			if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
				local Number = 0
				repeat
					Number = Number + 1
				until Objects[tostring(Number)] == nil
				Objects[tostring(Number)] = { x = mathLegth(coords["x"]), y = mathLegth(coords["y"]), z = mathLegth(coords["z"]) - 0.6, h = heading, object = "prop_beach_fire", item = totalName, distance = 50, mode = "2" }
				TriggerClientEvent("objects:Adicionar",-1,tostring(Number),Objects[tostring(Number)])
				TriggerClientEvent("wnInventoryC5Close",source)
			end
		end
    end,

	['vehkey'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName)
		local vehicle,vehNet,vehPlate = vRPC.vehList(source,5)
		if vehicle then
			if vehPlate == splitName[2] then
				TriggerEvent("garages:keyVehicle",source,vehNet)
			end
		end
    end,

	['toolbox'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName)
		if not vRPC.inVehicle(source) then
			local vehicle,vehNet,vehPlate = vRPC.vehList(source,4)
			if vehicle then
				vRPC.stopActived(source)
				Active[user_id] = os.time() + 100
				TriggerClientEvent("wnInventoryC5Close",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				vRPC.playAnim(source,false,{"mini@repair","fixing_a_player"},true)

				local activePlayers = vRPC.activePlayers(source)
				for _,v in ipairs(activePlayers) do
					async(function()
						TriggerClientEvent("player:syncHoodOptions",v,vehNet,"open")
					end)
				end

				
				local taskSetup = {
					type = 11,
					dificulty = 1,
					title = "Reparar o Carro", 
					description = "Acerte para reparar o seu veiculo" 
				}

				local resp = exports['hv-task']:createTask(source, json.encode(taskSetup))
				if resp then
					if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
						TriggerClientEvent("Progress",source,10000)
						Wait(10000)
						local activePlayers = vRPC.activePlayers(source)
						for _,v in ipairs(activePlayers) do
							async(function()
								TriggerClientEvent("wnInventoryC5repairVehicle",v,vehNet,vehPlate)
							end)
						end

						vRP.upgradeStress(user_id,2)
					end
				end

				local activePlayers = vRPC.activePlayers(source)
				for _,v in ipairs(activePlayers) do
					async(function()
						TriggerClientEvent("player:syncHoodOptions",v,vehNet,"close")
					end)
				end

				TriggerClientEvent("wnInventoryC5Buttons",source,false)
				vRPC.stopAnim(source,false)
				Active[user_id] = nil
			end
		end
    end,

	['advtoolbox'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName)
		if not vRPC.inVehicle(source) then
			local vehicle,vehNet,vehPlate = vRPC.vehList(source,4)
			if vehicle then
				vRPC.stopActived(source)
				Active[user_id] = os.time() + 100
				TriggerClientEvent("wnInventoryC5Close",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				vRPC.playAnim(source,false,{"mini@repair","fixing_a_player"},true)

				local activePlayers = vRPC.activePlayers(source)
				for _,v in ipairs(activePlayers) do
					async(function()
						TriggerClientEvent("player:syncHoodOptions",v,vehNet,"open")
					end)
				end

				local taskSetup = {
					type = 11,
					dificulty = 1,
					title = "Reparar o Carro", 
					description = "Acerte para reparar o seu veiculo" 
				}

				local resp = exports['hv-task']:createTask(source, json.encode(taskSetup))

				if resp then
					local numberItem = splitName[2]
					if vRP.hasGroup(user_id,"NaoGastarKit-Mecanica") then
						local activePlayers = vRPC.activePlayers(source)
						for _,v in ipairs(activePlayers) do
							async(function()
								TriggerClientEvent("wnInventoryC5repairVehicle",v,vehNet,vehPlate)
							end)
						end

						vRP.upgradeStress(user_id,2)
					else
						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							TriggerClientEvent("Progress",source,10000)
							Wait(10000)
							numberItem = numberItem - 1

							if numberItem > 0 then
								vRP.giveInventoryItem(user_id,"advtoolbox-"..numberItem,1,false)
							end

							local activePlayers = vRPC.activePlayers(source)
							for _,v in ipairs(activePlayers) do
								async(function()
									TriggerClientEvent("wnInventoryC5repairVehicle",v,vehNet,vehPlate)
								end)
							end

							vRP.upgradeStress(user_id,2)
						end
					end
				end



				local activePlayers = vRPC.activePlayers(source)
				for _,v in ipairs(activePlayers) do
					async(function()
						TriggerClientEvent("player:syncHoodOptions",v,vehNet,"close")
					end)
				end

				TriggerClientEvent("wnInventoryC5Buttons",source,false)
				vRPC.stopAnim(source,false)
				Active[user_id] = nil
			end
		end
    end,

	['tyres'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		if not vRPC.inVehicle(source) then
			if not vCLIENT.checkWeapon(source,"WEAPON_WRENCH") then
				TriggerClientEvent("Notify",source,"amarelo","<b>Chave Inglesa</b> não encontrada.",5000)
				return
			end

			TriggerClientEvent("wnInventoryC5Close",source)

			local taskSetup = {
				type = 2,
				dificulty = 1,
				title = "Colocando Pneu", -- caso seja nulo, o script irá utilizar o padrão
				description = "Acerte para reparar o seu veiculo" -- caso seja nulo, o script irá utilizar o padrão
			}

			local resp = exports['hv-task']:createTask(source, json.encode(taskSetup))
			if resp then
				local tyreStatus,Tyre,vehNet,vehPlate = vCLIENT.tyreStatus(source)
				if tyreStatus then
					local Vehicle = NetworkGetEntityFromNetworkId(vehNet)
					if DoesEntityExist(Vehicle) and not IsPedAPlayer(Vehicle) and GetEntityType(Vehicle) == 2 then
						if vCLIENT.tyreHealth(source,vehNet,Tyre) ~= 1000.0 then
							vRPC.stopActived(source)
							Active[user_id] = os.time() + 100
							TriggerClientEvent("wnInventoryC5Close",source)
							TriggerClientEvent("wnInventoryC5Buttons",source,true)
							vRPC.playAnim(source,false,{"anim@amb@clubhouse@tutorial@bkr_tut_ig3@","machinic_loop_mechandplayer"},true)
							TriggerClientEvent("Progress",source,5000)
							Wait(5000)
							if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
								local activePlayers = vRPC.activePlayers(source)
								for _,v in ipairs(activePlayers) do
									async(function()
										TriggerClientEvent("wnInventoryC5repairTyre",v,vehNet,Tyre,vehPlate)
									end)
								end
							end

							TriggerClientEvent("wnInventoryC5Buttons",source,false)
							vRPC.stopAnim(source,false)
							Active[user_id] = nil
						end
					end
				end
			end
		end
    end,

	['nitro'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName)
		if not vRPC.inVehicle(source) then
			local vehicle,vehNet,vehPlate = vRPC.vehList(source,4)
			if vehicle then
				vRPC.stopActived(source)
				Active[user_id] = os.time() + 10
				TriggerClientEvent("Progress",source,10000)
				TriggerClientEvent("wnInventoryC5Close",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				vRPC.playAnim(source,false,{"mini@repair","fixing_a_player"},true)

				local activePlayers = vRPC.activePlayers(source)
				for _,v in ipairs(activePlayers) do
					async(function()
						TriggerClientEvent("player:syncHoodOptions",v,vehNet,"open")
					end)
				end

				repeat
					if os.time() >= parseInt(Active[user_id]) then
						Active[user_id] = nil
						vRPC.stopAnim(source,false)
						TriggerClientEvent("wnInventoryC5Buttons",source,false)

						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							local Nitro = GlobalState["Nitro"]
							Nitro[vehPlate] = 2000
							GlobalState["Nitro"] = Nitro
						
						end
					end

					Citizen.Wait(100)
				until Active[user_id] == nil

				local activePlayers = vRPC.activePlayers(source)
				for _,v in ipairs(activePlayers) do
					async(function()
						TriggerClientEvent("player:syncHoodOptions",v,vehNet,"close")
					end)
				end
			end
		end
    end,

	['energetic'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_intdrink","loop_bottle","prop_energy_drink",49,60309,0.0,0.0,0.0,0.0,0.0,130.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent("setEnergetic",source,60,1.10)
					vRP.upgradeStress(user_id,5)



				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['oculostatico'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnOculosTatico:Abrir",source)
    end,

	['bandage'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if (Healths[user_id] == nil or os.time() > Healths[user_id]) then
			if vRP.getHealth(source) > 101 and vRP.getHealth(source) < 200 then
				Active[user_id] = os.time() + 10
				TriggerClientEvent("Progress",source,10000)
				TriggerClientEvent("wnInventoryC5Close",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				vRPC.playAnim(source,true,{"amb@world_human_clipboard@male@idle_a","idle_c"},true)

				repeat
					if os.time() >= parseInt(Active[user_id]) then
						Active[user_id] = nil
						vRPC.stopAnim(source,false)
						TriggerClientEvent("wnInventoryC5Buttons",source,false)

						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							TriggerClientEvent("sounds:source",source,"bandage",0.5)
							Healths[user_id] = os.time() + 60
							vRP.upgradeStress(user_id,3)
							vRPC.updateHealth(source,15)
						end
					end

					Citizen.Wait(100)
				until Active[user_id] == nil
			else
				TriggerClientEvent("Notify",source,"amarelo","Não pode utilizar de vida cheia ou nocauteado.",5000)
			end
		else
			local healTimers = parseInt(Healths[user_id] - os.time())
			TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..healTimers.." segundos</b>.",5000)
		end
    end,

	['medkit'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if (Healths[user_id] == nil or os.time() > Healths[user_id]) then
			if vRP.getHealth(source) > 101 and vRP.getHealth(source) < 200 then
				Active[user_id] = os.time() + 20
				TriggerClientEvent("Progress",source,20000)
				TriggerClientEvent("wnInventoryC5Close",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				vRPC.playAnim(source,true,{"amb@world_human_clipboard@male@idle_a","idle_c"},true)

				repeat
					if os.time() >= parseInt(Active[user_id]) then
						Active[user_id] = nil
						vRPC.stopAnim(source,false)
						TriggerClientEvent("wnInventoryC5Buttons",source,false)

						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							TriggerClientEvent("resetBleeding",source)
							Healths[user_id] = os.time() + 60
							vRPC.updateHealth(source,65)
						end
					end

					Citizen.Wait(100)
				until Active[user_id] == nil
			else
				TriggerClientEvent("Notify",source,"amarelo","Não pode utilizar de vida cheia ou nocauteado.",5000)
			end
		else
			local healTimers = parseInt(Healths[user_id] - os.time())
			TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..healTimers.." segundos</b>.",5000)
		end
    end,

	['adrenaline'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		local nplayer = vRPC.nearestPlayer(source,2)
		if nplayer then
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local n_source = vRP.userSource(nuser_id)
				if n_source then
					if vRP.getHealth(n_source) <= 101 then
						if vRP.tryGetInventoryItem(user_id,totalName,1,false,Slot) then
							TriggerClientEvent("wnInventoryC5Close",source)
							TriggerClientEvent("wnInventoryC5Buttons",source,false)
							vRPC.playAnim(source,false,{"mini@cpr@char_a@cpr_str","cpr_pumpchest"},true)
							TriggerClientEvent("Progress",source,10000,"Utilizando...")
							Citizen.Wait(10000)
							vRP.upgradeThirst(nuser_id,10)
							vRP.upgradeHunger(nuser_id,10)
							vRPC.revivePlayer(nplayer,110)
							vRPC.stopAnim(source,false)
							vRPC.stopAnim(n_source,false)
							TriggerClientEvent("wnInventoryC5Buttons",source,true)
						end
					end
				end
			end
		end
    end,

	['gauze'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"amb@world_human_clipboard@male@idle_a","idle_c"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source,false)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent("sounds:source",source,"bandage",0.5)
					TriggerClientEvent("resetBleeding",source)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['soda'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 7
		TriggerClientEvent("Progress",source,7000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_intdrink","loop_bottle","ng_proc_sodacan_01b",49,60309,0.0,0.0,-0.04,0.0,0.0,130.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeThirst(user_id,5)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,
	
	['donut'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 15
		TriggerClientEvent("Progress",source,15000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_amb_donut",49,28422)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,10)
					vRP.upgradeHunger(user_id,20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['sandwich'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 7
		TriggerClientEvent("Progress",source,7000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","prop_sandwich_01",49,18905,0.13,0.05,0.02,-50.0,16.0,60.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['cola'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 7
		TriggerClientEvent("Progress",source,7000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_intdrink","loop_bottle","prop_ecola_can",49,60309,0.01,0.01,0.05,0.0,0.0,90.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeThirst(user_id,5)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,
	
	['absolut'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422,0.0,0.0,0.05,0.0,0.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.alcoholTimer(user_id,1)
					vRP.upgradeThirst(user_id,20)
					TriggerClientEvent("setDrunkTime",source,90)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['chandon'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_blr",49,28422,0.0,0.0,-0.10,0.0,0.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.alcoholTimer(user_id,1)
					vRP.upgradeThirst(user_id,20)
					TriggerClientEvent("setDrunkTime",source,300)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['dewars'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_blr",49,28422,0.0,0.0,-0.10,0.0,0.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.alcoholTimer(user_id,1)
					vRP.upgradeThirst(user_id,20)
					TriggerClientEvent("setDrunkTime",source,300)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['milkcereja'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","p_shk_frappuccino_02",49,28422)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeThirst(user_id,40)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,


	['milkfrutos'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","p_shk_frappuccino_05",49,28422)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeThirst(user_id,40)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['mlkmorango'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","p_shk_frappuccino_06",49,28422)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeThirst(user_id,40)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['milkchocolate'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","p_shk_frappuccino_01",49,28422)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeThirst(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['leitecomcanela'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","Mia_chocolatemarshmallow",49,28422,0.0,0,-0.03,0.0,0.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeThirst(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,


	['capuccino'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","Mia_chocolatequente",49,28422,0.03,0,-0.03,0.0,0.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeThirst(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['supermilkshakechocolate'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","Mia_Superchocolate",49,28422)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,40)
					vRP.upgradeThirst(user_id,40)
					vRP.upgradeHunger(user_id,40)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['supermilkshakerosa'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","Mia_Supermorango",49,28422)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,40)
					vRP.upgradeThirst(user_id,40)
					vRP.upgradeHunger(user_id,40)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['cafe'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		--vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","Mia_cafe",49,60309,-0.05,0.02,0.03,0.0,0.0,-190.0)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","Mia_cafe",49,28422,0.02,0.0,-0.03,0.0,0.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeThirst(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['milkuwu'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a", "idle_a","milk_uwu",49,28422)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,40)
					vRP.upgradeThirst(user_id,50)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['mamadeira'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_mamadeira",49,60309,0.05,0.05,0.0,0.0,280.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeThirst(user_id,40)
					vRP.upgradeHunger(user_id,40)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['cupcakedeabóbora'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_Cupcakeabobora",49,60309,0.02,0,-0.05,0.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['cupcakerecheado'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_Cupcakebiscoito",49,60309,0.02,0,-0.05,0.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['cupcakededefranboesa'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_cupcakedefranboesa",49,60309,0.02,0,-0.05,0.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['cupcakedemorango'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_cupcakedemorango",49,60309,0.02,0,-0.05,0.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['cupcakedelaranja'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_Chocolateelaranja",49,60309,-0.02,0.0,-0.03,0.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['chocolatecremoso'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","Mia_chocolatecremoso",49,28422,0.02,0.0,-0.05,0.0,0.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeThirst(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['ursoburger'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@code_human_wander_eating_donut@male@idle_a", "idle_c","Mia_ursoburguer",49,28422,0.02,0,-0.08,0.0,0.0,-30.0) -- nome = "coxinha" , dict = "amb@code_human_wander_eating_donut@male@idle_a" , anim = "idle_c" , prop = "bagdad_coxinha" , flag = 49 , hand = 28422

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['catburger'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger", "mp_player_int_eat_burger","bag_catburg",49,60309) -- nome = "coxinha" , dict = "amb@code_human_wander_eating_donut@male@idle_a" , anim = "idle_c" , prop = "bagdad_coxinha" , flag = 49 , hand = 28422

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['catpanqueca'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger", "mp_player_int_eat_burger","Mia_catpanqueca",49,60309,-0.00,0.0,-0.01,90.0,30.0,0.0) -- nome = "coxinha" , dict = "amb@code_human_wander_eating_donut@male@idle_a" , anim = "idle_c" , prop = "bagdad_coxinha" , flag = 49 , hand = 28422

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,40)
					--vRP.upgradeThirst(user_id,30)
				--	vRP.downgradeStress(user_id,30)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['sorvete'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		--vRPC.createObjects(source,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","Mia_sorvetedemorango",49,60309,49,60309,0.02,0,-0.05,0.0,280.0,0.0)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_sorvetedemorango",49,60309,0.0,-0.0,-0.05,0.0,280.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,40)
					vRP.upgradeThirst(user_id,30)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['sorvete2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_sorvetinho",49,60309,0.0,-0.0,-0.05,0.0,280.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,40)
					vRP.upgradeThirst(user_id,30)
				end
			end
			
			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['marshmellow'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","bag_marshmallow",49,60309,0.00,0,-0.02,0.0,280.0,160.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,40)
					vRP.upgradeHunger(user_id,20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['rocambolemorango'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)

		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_Rocambole",49,60309,0.05,0,-0.05,0.0,280.0,0.0)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				vRP.downgradeStress(user_id,15)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['bolinhodecereja'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_bolinho",49,60309,0.05,0,-0.04,0.0,280.0,160.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['coelhodechocolate'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_coelhodechocolate",49,60309,-0.0,0.03,-0.04,90.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['chaverde'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","bag_catmug",49,28422,0.00,0,-0.0,0.0,0.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
		
					vRP.downgradeStress(user_id,20)
					vRP.upgradeThirst(user_id,40)
					TriggerClientEvent("setEnergetic",source,60,1.30)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['pirulito'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","mah_pirulito",49,60309,-0.02,0.0,0.01,0.0,360.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,40)
					vRP.upgradeHunger(user_id,20)

				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['melancia'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger", "mp_player_int_eat_burger","Mia_melancia",49,60309,-0.01,0,-0.05,0.0,280.0,-50.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,40)
					vRP.upgradeThirst(user_id,30)
				--	vRP.downgradeStress(user_id,30)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['coxinha'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","offstore_coxinha",49,60309,0.00,0,-0.02,0.0,280.0,160.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,40)
					vRP.upgradeHunger(user_id,20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['torrada'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_torrada",49,60309,-0.03,0.0,-0.06,90.0,240.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.upgradeHunger(user_id,30)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['bolodecoco'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"mp_player_inteat@burger","mp_player_int_eat_burger","Mia_bolococo",49,60309,0.05,0,-0.05,0.0,280.0,0.0)
		
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.downgradeStress(user_id,30)
					vRP.upgradeHunger(user_id,40)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['sulfuric'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 3
		TriggerClientEvent("Progress",source,3000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"mp_suicide","pill"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source,false)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRPC.downHealth(source,100)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['lsd'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga)
		if VidaDroga[user_id] then
			if os.time() < VidaDroga[user_id] then
				local armorTimers = parseInt(VidaDroga[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					VidaDroga[user_id] = os.time() + 60
					vRPC.updateHealth(source,15)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['lsd2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga)
		if VidaDroga[user_id] then
			if os.time() < VidaDroga[user_id] then
				local armorTimers = parseInt(VidaDroga[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					VidaDroga[user_id] = os.time() + 60
					vRPC.updateHealth(source,25)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['lsd3'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga)
		if VidaDroga[user_id] then
			if os.time() < VidaDroga[user_id] then
				local armorTimers = parseInt(VidaDroga[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		vRPC.stopActived(source)
		Active[user_id] = os.time() + 12
		TriggerClientEvent("Progress",source,12000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					VidaDroga[user_id] = os.time() + 60
					vRPC.updateHealth(source,35)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['cocaine'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.chemicalTimer(user_id,10)
					TriggerClientEvent("setCocaine",source)
					TriggerClientEvent("setEnergetic",source,15,1.20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['cocaine2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.chemicalTimer(user_id,10)
					TriggerClientEvent("setCocaine",source)
					TriggerClientEvent("setEnergetic",source,30,1.20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['cocaine3'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.chemicalTimer(user_id,10)
					TriggerClientEvent("setCocaine",source)
					TriggerClientEvent("setEnergetic",source,30,1.20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['meth'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga)
		if Armors[user_id] then
			if os.time() < Armors[user_id] then
				local armorTimers = parseInt(Armors[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent("setMeth",source)
					Armors[user_id] = os.time() + 60
					vRP.chemicalTimer(user_id,10)
					vRP.setArmour(source,5)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['meth2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga)
		if Armors[user_id] then
			if os.time() < Armors[user_id] then
				local armorTimers = parseInt(Armors[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent("setMeth",source)
					Armors[user_id] = os.time() + 60
					vRP.chemicalTimer(user_id,10)
					vRP.setArmour(source,20)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['meth3'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga)
		if Armors[user_id] then
			if os.time() < Armors[user_id] then
				local armorTimers = parseInt(Armors[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"anim@amb@nightclub@peds@","missfbi3_party_snort_coke_b_male3"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent("setMeth",source)
					Armors[user_id] = os.time() + 60
					vRP.chemicalTimer(user_id,10)
					vRP.setArmour(source,30)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['rope'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors,VidaDroga, Carry)
		if not vRPC.inVehicle(source) then
			if Carry[user_id] then
				TriggerClientEvent("player:ropeCarry",Carry[user_id],source)
				TriggerClientEvent("player:Commands",Carry[user_id],false)
				vRPC.removeObjects(Carry[user_id])
				vRPC.removeObjects(source)
				Carry[user_id] = nil
			else
				local otherPlayer = vRPC.nearestPlayer(source)
				if otherPlayer and (vRP.getHealth(otherPlayer) <= 101 or vPLAYER.getHandcuff(otherPlayer)) then
					Carry[user_id] = otherPlayer

					TriggerClientEvent("player:ropeCarry",Carry[user_id],source)
					TriggerClientEvent("player:Commands",Carry[user_id],true)
					TriggerClientEvent("wnInventoryC5Close",Carry[user_id])

					vRPC.playAnim(source,true,{"missfinale_c2mcs_1","fin_c2_mcs_1_camman"},true)
					vRPC.playAnim(otherPlayer,false,{"nm","firemans_carry"},true)
				end
			end
		end
	end,

	['lean'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 3
		TriggerClientEvent("Progress",source,3000)
		TriggerClientEvent("wnInventoryC5Close",source)
		vRPC.playAnim(source,true,{"mp_suicide","pill"},true)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source,false)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.chemicalTimer(user_id,10)
					vRP.downgradeStress(user_id,50)
					TriggerClientEvent("cleanEffectDrugs",source)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['vest'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths,Armors)
		if Armors[user_id] then
			if os.time() < Armors[user_id] then
				local armorTimers = parseInt(Armors[user_id] - os.time())
				TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..armorTimers.." segundos</b>.",5000)
				return
			end
		end

		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,true,{"clothingtie","try_tie_negative_a"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.stopAnim(source,false)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					Armors[user_id] = os.time() + 300
					vRP.setArmour(source,100)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['pager'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		local otherPlayer = vRPC.nearestPlayer(source)
		if otherPlayer then
			if vPLAYER.getHandcuff(otherPlayer) then
				local nuser_id = vRP.getUserId(otherPlayer)
				if nuser_id then
					if vRP.hasGroup(nuser_id,"Police") then
						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							vRP.removePermission(user_id,"Police")
							TriggerClientEvent("radio:outServers",otherPlayer)
							TriggerEvent("blipsystem:serviceExit",otherPlayer)
							vRP.updatePermission(nuser_id,"Police","waitPolice")
							TriggerClientEvent("service:Label",otherPlayer,"Police","Entrar em Serviço",5000)
							TriggerClientEvent("Notify",source,"amarelo","Todas as comunicações foram retiradas.",5000)
						end
					end
					if vRP.hasGroup(nuser_id,"Paramedic") then
						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							vRP.removePermission(user_id,"Paramedic")
							TriggerClientEvent("radio:outServers",otherPlayer)
							TriggerEvent("blipsystem:serviceExit",otherPlayer)
							vRP.updatePermission(nuser_id,"Paramedic","waitParamedic")
							TriggerClientEvent("service:Label",otherPlayer,"Paramedic","Entrar em Serviço",5000)
							TriggerClientEvent("Notify",source,"amarelo","Todas as comunicações foram retiradas.",5000)
						end
					end
				end
			end
		end
	end,

	['hood'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		local otherPlayer = vRPC.nearestPlayer(source)
		if otherPlayer and vPLAYER.getHandcuff(otherPlayer) then
			TriggerClientEvent("hud:toggleHood",otherPlayer)
			TriggerClientEvent("wnInventoryC5Close",otherPlayer)
		end
	end,

	['notebook'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("notebook:openSystem",source)
	end,

	['alcoolemgel'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		Active[user_id] = os.time() + 15
		TriggerClientEvent("Progress",source,15000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.playAnim(source,false,{"missheist_agency3aig_23","urinal_sink_loop"},true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source)
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					exports["wnPoliceSystem"].limpar(source,user_id)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
		return
    end,

	['lockpick'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if not vPLAYER.getHandcuff(source) then
			local vehicle,vehNet,vehPlate,vehName,vehBlock,vehHealth,vehClass = vRPC.vehList(source,4)
			if vehicle then
				if vehClass == 15 or vehClass == 16 or vehClass == 19 then
					return
				end

				if not vehName or vehName == nil then
					vehName = "CARRO DESCONHECIDO"
				end

				if vRPC.inVehicle(source) then
					vRPC.stopActived(source)
					vGARAGE.startAnimHotwired(source)
					Active[user_id] = os.time() + 100
					TriggerClientEvent("wnInventoryC5Close",source)
					TriggerClientEvent("wnInventoryC5Buttons",source,true)

					local taskSetup = {
						type = 3,
						dificulty = 4,
						title = "Usando lockpick", -- caso seja nulo, o script irá utilizar o padrão
						description = "Acerte para abrir o veiculo" -- caso seja nulo, o script irá utilizar o padrão
					}

					local resp = exports['hv-task']:createTask(source, json.encode(taskSetup))
		
					if resp then
						if math.random(100) >= 0 then
							vRP.upgradeStress(user_id,2)
							TriggerEvent("plateEveryone",vehPlate)
							TriggerEvent("platePlayers",vehPlate,user_id)

							local idNetwork = NetworkGetEntityFromNetworkId(vehNet)
							if GetVehicleDoorLockStatus(idNetwork) == 2 then
								SetVehicleDoorsLocked(idNetwork,1)
							end
							local consult = vRP.userPlate(vehPlate)
							local identity = vRP.userIdentity(user_id)
							local x,y,z = vCLIENT.getPosition(source)
							if consult and consult.user_id then
								local identity2 = vRP.userIdentity(parseInt(consult.user_id))
								local emojis,logo_cidade = exports.base:GetConfig()
								PerformHttpRequest(exports.base:GetLog(GetCurrentResourceName(),"Inventario-Lockpick"), function(err, text, headers) end, 'POST', json.encode({
									embeds = {
										{     
											description = "# LOCKPICK",
											fields = {
												{ 
													name = ""..emojis["user"].." AUTHOR", 
													value = "" ..identity.name.." "..identity.name2.." **#"..user_id.."** ",
												},
												{ 
													name = ""..emojis["pen"].." PLAYER", 
													value = "" ..identity2.name.." "..identity2.name2.." **#"..consult.user_id.."** ",
												},
												{ 
													name = ""..emojis["carro"].." CARRO", 
													value = "" ..vehicleName(vehName).." ``("..vehPlate..")``",
												},
												{ 
													name = ""..emojis["cord"].." COORDENADA", 
													value = ""..x..","..y..","..z.."",
												},
											}, 
											footer = { 
												text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S'),
												icon_url = logo_cidade
											},
											image = {
												url = exports.base:ScreenShotBase(source)
											},
											color = 2829875
										}
									}
								}), { ['Content-Type'] = 'application/json' })
							end

						end
					end
					--if vTASKBAR.taskLockpick(source) then

						if math.random(100) >= 40 then
							local activePlayers = vRPC.activePlayers(source)
							for _,v in ipairs(activePlayers) do
								async(function()
									TriggerClientEvent("wnInventoryC5vehicleAlarm",v,vehNet,vehPlate)
								end)
							end

							local coords = vRPC.getEntityCoords(source)
							local policeResult = vRP.getUsersByPermission("Police")

							local setupNotify = {
								titlo = "Roubo de Veículo",
								desc = "Um roubo ao "..vehicleName(vehName).." - "..vehPlate.." foi denunciado, va ate o local e efetue a prisao.",
								coordenada = { x = coords["x"], y = coords["y"], z = coords["z"] },
								horario = os.date("%H:%M"),
								css = { tipo = "lockpick", imagem = "lockpick" },
								blipMarker = { marcarGPS = true, raio = 50.0, cor = 7, alpha = 150 },
							}
					
							local policeResult = vRP.getUsersByPermission("Police")
							for k,v in pairs(policeResult) do
								if user_id ~= parseInt(v) then
									local nsource = vRP.userSource(parseInt(v))
									async(function()
										TriggerClientEvent("wnPoliceSystem:Notify",nsource,setupNotify)
									end)
								end 
							end

		
						end
					--end

					if parseInt(math.random(100)) >= 70 then
						vRP.generateItem(user_id,"brokenpick",1,false)
						vRP.removeInventoryItem(user_id,totalName,1,false)
						TriggerClientEvent("itensNotify",source,{ "quebrou","lockpick",1,"Lockpick de Alumínio" })
					end

					TriggerClientEvent("wnInventoryC5Buttons",source,false)
					vGARAGE.stopAnimHotwired(source,vehicle)
					Active[user_id] = nil
				else
					vRPC.stopActived(source)
					Active[user_id] = os.time() + 100
					TriggerClientEvent("wnInventoryC5Close",source)
					TriggerClientEvent("wnInventoryC5Buttons",source,true)
					vRPC.playAnim(source,false,{"missfbi_s4mop","clean_mop_back_player"},true)

					local taskSetup = {
						type = 3,
						dificulty = 4,
						title = "Usando lockpick", -- caso seja nulo, o script irá utilizar o padrão
						description = "Acerte para abrir o veiculo" -- caso seja nulo, o script irá utilizar o padrão
					}

					local resp = exports['hv-task']:createTask(source, json.encode(taskSetup))
			
					if resp then
						if math.random(100) >= 0 then
							vRP.upgradeStress(user_id,2)
							TriggerEvent("plateEveryone",vehPlate)

							local idNetwork = NetworkGetEntityFromNetworkId(vehNet)
							if GetVehicleDoorLockStatus(idNetwork) == 2 then
								SetVehicleDoorsLocked(idNetwork,1)
							end
							local consult = vRP.userPlate(vehPlate)
							local identity = vRP.userIdentity(user_id)
							local identity2 = vRP.userIdentity(parseInt(consult.user_id))
							local x,y,z = vCLIENT.getPosition(source)
							local emojis,logo_cidade = exports.base:GetConfig()
							PerformHttpRequest(exports.base:GetLog(GetCurrentResourceName(),"Inventario-Lockpick"), function(err, text, headers) end, 'POST', json.encode({
								embeds = {
									{     
										description = "# LOCKPICK",
										fields = {
											{ 
												name = ""..emojis["user"].." AUTHOR", 
												value = "" ..identity.name.." "..identity.name2.." **#"..user_id.."** ",
											},
											{ 
												name = ""..emojis["pen"].." PLAYER", 
												value = "" ..identity2.name.." "..identity2.name2.." **#"..consult.user_id.."** ",
											},
											{ 
												name = ""..emojis["carro"].." CARRO", 
												value = "" ..vehicleName(vehName).." ``("..vehPlate..")``",
											},
											{ 
												name = ""..emojis["cord"].." COORDENADA", 
												value = ""..x..","..y..","..z.."",
											},
										}, 
										footer = { 
											text = os.date('Dia: %d/%m/%Y - Horas: %H:%M:%S'),
											icon_url = logo_cidade
										},
										image = {
											url = exports.base:ScreenShotBase(source)
										},
										color = 2829875
									}
								}
							}), { ['Content-Type'] = 'application/json' })

						end

						if math.random(100) >= 100 then
							local activePlayers = vRPC.activePlayers(source)
							for _,v in ipairs(activePlayers) do
								async(function()
									TriggerClientEvent("wnInventoryC5vehicleAlarm",v,vehNet,vehPlate)
								end)
							end

							local coords = vRPC.getEntityCoords(source)
							local policeResult = vRP.getUsersByPermission("Police")

							local setupNotify = {
								titlo = "Roubo de Veículo",
								desc = "Um roubo ao "..vehicleName(vehName).." - "..vehPlate.." foi denunciado, va ate o local e efetue a prisao.",
								coordenada = { x = coords["x"], y = coords["y"], z = coords["z"] },
								horario = os.date("%H:%M"),
								css = { tipo = "lockpick", imagem = "lockpick" },
								blipMarker = { marcarGPS = true, raio = 50.0, cor = 7, alpha = 150 },
							}
					
							local policeResult = vRP.getUsersByPermission("Police")
							for k,v in pairs(policeResult) do
								if user_id ~= parseInt(v) then
									local nsource = vRP.userSource(parseInt(v))
									async(function()
										TriggerClientEvent("wnPoliceSystem:Notify",nsource,setupNotify)
									end)
								end 
							end
						end
					end

					if parseInt(math.random(100)) >= 70 then
						vRP.generateItem(user_id,"brokenpick",1,false)
						vRP.removeInventoryItem(user_id,totalName,1,false)
						TriggerClientEvent("itensNotify",source,{ "quebrou","lockpick",1,"Lockpick de Alumínio" })
					end

					TriggerClientEvent("wnInventoryC5Buttons",source,false)
					vRPC.stopAnim(source,false)
					Active[user_id] = nil
				end
			end
		end
	end,

	['lockpick2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if not vPLAYER.getHandcuff(source) then
			if exports["wnHud"]:Wanted(user_id) then
				return
			end

			local homeName = exports["homes"]:homesTheft(source)
			if homeName then
				vRPC.stopActived(source)
				vRP.upgradeStress(user_id,2)
				Active[user_id] = os.time() + 100
				TriggerClientEvent("wnInventoryC5Close",source)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				vRPC.playAnim(source,false,{"missheistfbi3b_ig7","lift_fibagent_loop"},false)

				if vTASKBAR.taskLockpick(source) then
					exports["homes"]:enterHomes(source,user_id,homeName,true)
				else
					exports["homes"]:resetTheft(homeName)
				end

				if parseInt(math.random(1000)) >= 100 then
					vRP.generateItem(user_id,"brokenpick",1,false)
					vRP.removeInventoryItem(user_id,totalName,1,false)
					TriggerClientEvent("itensNotify",source,{ "quebrou","lockpick2",1,"Lockpick de Cobre" })
				end

				TriggerClientEvent("wnInventoryC5Buttons",source,false)
				vRPC.stopAnim(source,false)
				Active[user_id] = nil
			end
		end
	end,

	['caixabasica'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_presente04",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				local caixaBasica = {
					[1] = { item = "WEAPON_PISTOL_MK2" },
					[2] = { item = "WEAPON_SNSPISTOL_MK2" },
					[3] = { item = "WEAPON_MACHINEPISTOL" },
					[4] = { item = "WEAPON_PISTOL50" },
				}

				chanceBasica1 = math.random(#caixaBasica)
				chanceBasica2 = math.random(#caixaBasica)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.generateItem(user_id,caixaBasica[chanceBasica1].item,1,true)
					vRP.generateItem(user_id,caixaBasica[chanceBasica2].item,1,true)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['caixamedia'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_presente04",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				local caixaMedia = {
					[1] = { item = "WEAPON_SMG_MK2" },
					[2] = { item = "WEAPON_MINISMG" },
					[3] = { item = "WEAPON_ASSAULTSMG" },
					[4] = { item = "WEAPON_GUSENBERG" },
				}

				chanceMedia1 = math.random(#caixaMedia)
				chanceMedia2 = math.random(#caixaMedia)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.generateItem(user_id,caixaMedia[chanceMedia1].item,1,true)
					vRP.generateItem(user_id,caixaMedia[chanceMedia2].item,1,true)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['caixagrande'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_presente04",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				local caixaGrande = {
					[1] = { item = "WEAPON_SPECIALCARBINE_MK2" },
					[2] = { item = "WEAPON_ASSAULTRIFLE_MK2" },
					[3] = { item = "WEAPON_ADVANCEDRIFLE" },
					[4] = { item = "WEAPON_BULLPUPRIFLE" },
					[5] = { item = "WEAPON_BULLPUPRIFLE_MK2" },
				}

				chanceGrande1 = math.random(#caixaGrande)
				chanceGrande2 = math.random(#caixaGrande)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.generateItem(user_id,caixaGrande[chanceGrande1].item,1,true)
					vRP.generateItem(user_id,caixaGrande[chanceGrande2].item,1,true)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['divingsuit'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		TriggerClientEvent("hud:Diving",source)
	end,

	['GADGET_PARACHUTE'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vCLIENT.parachuteColors(source)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['kitattachs'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vCLIENT.executar(source,'388818idsakk121k3ksdk2')
	end,

	['caixalendaria'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_presente04",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				local caixaLendaria = {
					[1] = { item = "WEAPON_PARAFAL" },
					[2] = { item = "WEAPON_FNFAL" },
					[3] = { item = "WEAPON_M6IC" },
				}

				chanceLendaria1 = math.random(#caixaLendaria)
				chanceLendaria2 = math.random(#caixaLendaria)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.generateItem(user_id,caixaLendaria[chanceLendaria1].item,1,true)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
	end,

	['blocksignal'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if not vPLAYER.getHandcuff(source) then
			local vehicle,vehNet,vehPlate = vRPC.vehList(source,4)
			if vehicle and vRPC.inVehicle(source) then
				if exports["wnGarages"]:vehSignal(vehPlate) == nil then
					vRPC.stopActived(source)
					vGARAGE.startAnimHotwired(source)
					Active[user_id] = os.time() + 100
					TriggerClientEvent("wnInventoryC5Close",source)
					TriggerClientEvent("wnInventoryC5Buttons",source,true)

					local taskSetup = {
						type = 11,
						dificulty = 1,
						title = "Reparar o Carro", 
						description = "Acerte para reparar o seu veiculo" 
					}
	
					local resp = exports['hv-task']:createTask(source, json.encode(taskSetup))

					if resp then
						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							TriggerClientEvent("Notify",source,"verde","<b>Bloqueador de Sinal</b> instalado.",5000)
							TriggerEvent("signalRemove",vehPlate)
						end
					end

					TriggerClientEvent("wnInventoryC5Buttons",source,false)
					vGARAGE.stopAnimHotwired(source)
					Active[user_id] = nil
				else
					TriggerClientEvent("Notify",source,"amarelo","<b>Bloqueador de Sinal</b> já instalado.",5000)
				end
			end
		end
	end,

	['barrier'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		-- if not exports["homes"]:checkHotel(user_id) then
			TriggerClientEvent("wnInventoryC5Close",source)
			local application,coords,heading = vRPC.objectCoords(source,"prop_mp_barrier_02b")
			if application then
				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					local Number = 0

					repeat
						Number = Number + 1
					until Objects[tostring(Number)] == nil

					Objects[tostring(Number)] = { x = mathLegth(coords["x"]), y = mathLegth(coords["y"]), z = mathLegth(coords["z"]), h = heading, object = "prop_mp_barrier_02b", item = totalName, distance = 100, mode = "3" }
					TriggerClientEvent("objects:Adicionar",-1,tostring(Number),Objects[tostring(Number)])
					TriggerClientEvent("wnInventoryC5Close",source)
				end
			end
		-- end
	end,

	['gsrkit'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnPoliceSystem:Abrir",source)
	end,

	['handcuff'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if not vRPC.inVehicle(source) then
			local otherPlayer = vRPC.nearestPlayer(source,2.0)
			if otherPlayer then
				if vPLAYER.getHandcuff(otherPlayer) then
					vPLAYER.toggleHandcuff(otherPlayer)
					TriggerClientEvent("sounds:source",source,"uncuff",0.5)
					TriggerClientEvent("sounds:source",otherPlayer,"uncuff",0.5)
					TriggerClientEvent("player:Commands",otherPlayer,false)
				else
					if not vTASKBAR.taskDoors(otherPlayer) then
						TriggerClientEvent("player:playerCarry",otherPlayer,source,"handcuff")
						vRPC.playAnim(otherPlayer,false,{"mp_arrest_paired","crook_p2_back_left"},false)
						vRPC.playAnim(source,false,{"mp_arrest_paired","cop_p2_back_left"},false)

						Citizen.Wait(3500)

						vRPC.stopAnim(source,false)
						vPLAYER.toggleHandcuff(otherPlayer)
						TriggerClientEvent("wnInventoryC5Close",otherPlayer)
						TriggerClientEvent("sounds:source",source,"cuff",0.5)
						TriggerClientEvent("player:Commands",otherPlayer,true)
						TriggerClientEvent("sounds:source",otherPlayer,"cuff",0.5)
						TriggerClientEvent("player:playerCarry",otherPlayer,source)
					end
				end
			end
		end
	end,


	['hennessy'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 10
		TriggerClientEvent("Progress",source,10000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		vRPC.createObjects(source,"amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422,0.0,0.0,0.05,0.0,0.0,0.0)

		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRP.alcoholTimer(user_id,1)
					vRP.upgradeThirst(user_id,20)
					TriggerClientEvent("setDrunkTime",source,300)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil	
		return
    end,

	['newgarage'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if vRP.tryGetInventoryItem(user_id,totalName,1,false,Slot) then
			vRP.upgradeGarage(user_id)
			TriggerClientEvent("wnInventoryC5Update",source,"updateMochila")
			TriggerClientEvent("Notify",source,"verde","Garagem liberada.",5000)
		end
    end,

	['premiumplate'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if vRPC.inVehicle(source) then
			TriggerClientEvent("wnInventoryC5Close",source)

			local vehModel = vRPC.vehicleName(source)
			local vehicle = vRP.query("vehicles/selectVehicles",{ user_id = user_id, vehicle = vehModel })
			if vehicle[1] then
				local vehPlate = vRP.prompt(source,"Placa:","")
				if vehPlate == "" or string.upper(vehPlate) == "CREATIVE" then
					return
				end

				local namePlate = string.sub(vehPlate,1,8)
				local plateCheck = sanitizeString(namePlate,"abcdefghijklmnopqrstuvwxyz0123456789",true)

				if string.len(plateCheck) ~= 8 then
					TriggerClientEvent("Notify",source,"amarelo","O nome de definição para a placa deve conter 8 caracteres.",5000)
					return
				else
					if vRP.userPlate(namePlate) then
						TriggerClientEvent("Notify",source,"vermelho","A placa escolhida já está sendo registrada em outro veículo.",5000)
						return
					else
						if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
							vRP.execute("vehicles/plateVehiclesUpdate",{ user_id = user_id, vehicle = vehModel, plate = string.upper(namePlate) })
							TriggerClientEvent("Notify",source,"verde","Placa atualizada.",5000)
						end
					end
				end
			else
				TriggerClientEvent("Notify",source,"vermelho","Modelo de veículo não encontrado.",5000)
			end
		end
    end,

	['newchars'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		if vRP.tryGetInventoryItem(user_id,totalName,1,false,Slot) then
			vRP.upgradeChars(user_id)
			TriggerClientEvent("wnInventoryC5Update",source,"updateMochila")
			TriggerClientEvent("Notify",source,"verde","Personagem liberado.",5000)
		end
    end,

	['chip'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		TriggerClientEvent("wnInventoryC5Close",source)

		local firstNumber = vRP.prompt(source,"Três primeiros digitos:","")
		local lastNumber = vRP.prompt(source,"Três ultimos digitos:","")
		if firstNumber == "" or lastNumber == "" then
			return
		end

		local initCheck = sanitizeString(firstNumber,"0123456789",true)
		local finiCheck = sanitizeString(lastNumber,"0123456789",true)

		if string.len(initCheck) == 3 and string.len(finiCheck) == 3 then
			local newPhone = firstNumber.."-"..lastNumber
			print(vRP.userPhone(newPhone))
			if not vRP.userPhone(newPhone) then
				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent("Notify",source,"verde","Telefone atualizado.",5000)
					TriggerEvent("smartphone:updatePhoneNumber",user_id,newPhone)
					vRP.upgradePhone(user_id,newPhone)
				end
			else
				TriggerClientEvent("Notify",source,"amarelo","Número escolhido já possui um proprietário.",5000)
			end
		else
			TriggerClientEvent("Notify",source,"amarelo","O número telefônico deve conter 6 dígitos e somente números.",5000)
		end	
    end,

	['namechange'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base,splitName,Healths)
		TriggerClientEvent("wnInventoryC5Close",source)

		local name = vRP.prompt(source,"Primeiro Nome:","")
		local name2 = vRP.prompt(source,"Segundo Nome:","")
		if name == "" or name2 == "" then
			return
		end

		if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
			TriggerClientEvent("Notify",source,"verde","Passaporte atualizado.",5000)
			TriggerClientEvent("wnInventoryC5Update",source,"updateMochila")
			vRP.upgradeNames(user_id,name,name2)
		end
    end,


    ['water'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
        vRPC.stopActived(source)
        Active[user_id] = os.time() + 15
        TriggerClientEvent("Progress", source, 15000)
        TriggerClientEvent("wnInventoryC5Close", source)
        TriggerClientEvent("wnInventoryC5Buttons", source, true)
        vRPC.createObjects(source, "mp_player_intdrink", "loop_bottle", "vw_prop_casino_water_bottle_01a", 49, 60309, 0.0, 0.0, -0.06, 0.0, 0.0, 130.0)

        repeat
            if os.time() >= parseInt(Active[user_id]) then
                Active[user_id] = nil
                vRPC.removeObjects(source, "one")
                TriggerClientEvent("wnInventoryC5Buttons", source, false)

                if vRP.tryGetInventoryItem(user_id, totalName, 1, true, Slot) then
                    vRP.upgradeThirst(user_id, 20)
                    vRP.generateItem(user_id, "emptybottle", 1)
                end
            end

            Citizen.Wait(100)
        until Active[user_id] == nil
        return
    end,

	['floppy'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("wnAtm:Roubar",source)
    end,

	['anelnamoro'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		local otherPlayer = vRPC.nearestPlayer(source,5.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		if otherPlayer then
			local nuser_id = vRP.getUserId(otherPlayer)
			local nidentity = vRP.userIdentity(nuser_id)
			
			if not exports["wnIdentidade"].GetBlacklist(user_id,user_id,nuser_id) then
				TriggerClientEvent("Notify",source,"negado","Alguem esta na <b>blacklist</b>.",5000)
				return
			end

			if vRP.request(source,"Voce deseja enviar o pedido de namoro para <b>"..nidentity.name.." "..nidentity.name2.." #"..nuser_id.."</b> ?","sim","nao") then
				if exports["wnIdentidade"].namorando(user_id,user_id) then
					TriggerClientEvent("Notify",source,"negado","Voce esta <b>"..exports["wnIdentidade"].getTipo(user_id,user_id).."</b> nao pode pedir em namoro.",5000)
					TriggerClientEvent("Notify",otherPlayer,"negado","Alguem tento pedir voce em namoro mas a pessoa esta <b>"..exports["wnIdentidade"].getTipo(user_id,user_id).."</b>.",5000)
					return
				end
	
				if exports["wnIdentidade"].namorando(nuser_id,nuser_id) then
					TriggerClientEvent("Notify",source,"negado","Essa pessoa ela esta <b>"..exports["wnIdentidade"].getTipo(nuser_id,nuser_id).."</b> com alguem.",5000)
					TriggerClientEvent("Notify",otherPlayer,"negado","Voce esta <b>"..exports["wnIdentidade"].getTipo(user_id,user_id).."</b> nao pode ser pedida em namoro.",5000)
					return
				end
	
				local identity = vRP.userIdentity(user_id)
	
				vRPC.createObjects(source,"amb@code_human_wander_eating_donut_fat@female@base","static","bagdad_alianca",49,28422,0.01,0,-0.01,0.0,0.0,0.0)
	
				TriggerClientEvent("wnInventoryC5Buttons",source,true)

				if vRP.request(otherPlayer,"Voce deseja aceitar o pedido de namoro de <b>"..identity.name.." "..identity.name2.." #"..user_id.."</b> ?","sim","nao") then
					Active[user_id] = os.time() + 10
					TriggerClientEvent("Progress",source,10000)
					TriggerClientEvent("wnInventoryC5Buttons",otherPlayer,true)
					repeat
						if os.time() >= parseInt(Active[user_id]) then
							Active[user_id] = nil
							vRPC.removeObjects(source,"one")
							TriggerClientEvent("wnInventoryC5Buttons",source,false)
							TriggerClientEvent("wnInventoryC5Buttons",otherPlayer,false)
							if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
								exports["wnIdentidade"].setNamorando(user_id,user_id,nuser_id)
								TriggerClientEvent("Notify",source,"sucesso","Agora voce namora a seguinte pessoa: <b>"..nidentity.name.." "..nidentity.name2.." #"..nuser_id.."</b>.",5000)
								TriggerClientEvent("Notify",otherPlayer,"sucesso","Agora voce namora a seguinte pessoa: <b>"..identity.name.." "..identity.name2.." #"..user_id.."</b>.",5000)
							end
						end
	
						Citizen.Wait(100)
					until Active[user_id] == nil
				else
					vRPC.removeObjects(source,"one")
					TriggerClientEvent("Notify",source,"amarelo","Essa pessoa recusou o seu <b>pedido de namoro</b>.",5000)
				end
			end
		end
    end,

	['anelcasamento'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		local otherPlayer = vRPC.nearestPlayer(source,5.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		if otherPlayer then
			local nuser_id = vRP.getUserId(otherPlayer)
			local nidentity = vRP.userIdentity(nuser_id)

			if exports["wnIdentidade"].GetBlacklist(user_id,nuser_id) then
				TriggerClientEvent("Notify",source,"negado","Alguem esta na <b>blacklist</b>.",5000)
				return
			end

			if vRP.request(source,"Voce deseja enviar o pedido de casamento para <b>"..nidentity.name.." "..nidentity.name2.." #"..nuser_id.."</b> ?","sim","nao") then
				if not exports["wnIdentidade"].checkNamoro(user_id,user_id,nuser_id) then
					TriggerClientEvent("Notify",source,"negado","Voce nao namora <b>essa pessoa</b>.",5000)
					TriggerClientEvent("Notify",otherPlayer,"negado","Tentaram pedir voce em casamento mas voces nao <b>namora ainda</b>.",5000)
					return
				end
				local identity = vRP.userIdentity(user_id)
				vRPC.createObjects(source,"amb@code_human_wander_eating_donut_fat@female@base","static","bagdad_alianca",49,28422,0.01,0,-0.01,0.0,0.0,0.0)
				TriggerClientEvent("wnInventoryC5Buttons",source,true)
				if vRP.request(otherPlayer,"Voce deseja aceitar o pedido de casamento de <b>"..identity.name.." "..identity.name2.." #"..user_id.."</b> ?","sim","nao") then
					Active[user_id] = os.time() + 10
					TriggerClientEvent("Progress",source,10000)
					TriggerClientEvent("wnInventoryC5Buttons",otherPlayer,true)
					repeat
						if os.time() >= parseInt(Active[user_id]) then
							Active[user_id] = nil
							vRPC.removeObjects(source,"one")
							TriggerClientEvent("wnInventoryC5Buttons",source,false)
							TriggerClientEvent("wnInventoryC5Buttons",otherPlayer,false)
							if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
								exports["wnIdentidade"].setCasado(user_id,user_id,nuser_id)
								TriggerClientEvent("Notify",source,"sucesso","Agora voce é casado (a) a seguinte pessoa: <b>"..nidentity.name.." "..nidentity.name2.." #"..nuser_id.."</b>.",5000)
								TriggerClientEvent("Notify",otherPlayer,"sucesso","Agora voce é casado (a) a seguinte pessoa: <b>"..identity.name.." "..identity.name2.." #"..user_id.."/<b>.",5000)
							end
						end
	
						Citizen.Wait(100)
					until Active[user_id] == nil
				else
					vRPC.removeObjects(source,"one")
					TriggerClientEvent("Notify",source,"amarelo","Essa pessoa recusou o seu <b>pedido de namoro</b>.",5000)
				end
			end
		end
    end,

	['bulbasaur'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bulbasaur",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['charmander'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","charmander",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['chikorita'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","chikorita",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Cinnamoroll'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Cinnamoroll",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['eevenplush'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","eevenplush",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['emolga'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","emolga",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Kitty_badtzmaru'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Kitty_badtzmaru",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Kitty_MyMelody'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Kitty_MyMelody",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['meowth'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","meowth",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_Corsola'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Corsola",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_Dragonita'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Dragonita",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_Dragonita'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Dratini",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_Lapras'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Lapras",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['Mia_Magikarp'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Magikarp",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_Mudkip'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Mudkip",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_Piplup'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Piplup",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['Mia_ShellosEast'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_ShellosEast",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['Mia_ShellosWest'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_ShellosWest",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['Mia_Totodile'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Totodile",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['Mia_Whiscash'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_Whiscash",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['pikachu'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","pikachu",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['Pikachu2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","PikachuFeliz",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['pochacco'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","pochacco",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['squirtle'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","squirtle",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['pompompurin'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","pompompurin",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['pokemonpsyduck'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","pokemonpsyduck",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,

	['bag_angel'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_angel",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['HelloKitty'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","HelloKitty",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['kittyBasquete'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","kittyBasquete",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittyGold'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittyGold",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittyKaiju'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittyKaiju",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittyKuromi'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittyKuromi",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittyLandKaiju'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittyLandKaiju",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittyLiberty'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittyLiberty",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittyMecha'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittyMecha",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittySeakaiju'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittySeakaiju",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['KittySpace'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","KittySpace",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['MyMelody'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","MyMelody",49,24817,-0.05,0.40,-0.016,-180.0,-90.0,0.0)
    end,
	
	['teddy'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","v_ilev_mr_rasberryclean",49,24817,-0.20,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['stitch'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_stitch",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['dog'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_dog",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['bunny'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_bunny",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['cat2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_cat",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['polvo'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_polvo",49,24817,-0.10,-0.3,-0.016,-180.0,-90.0,0.0)
    end,
	
	['polvo2'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_polvo2",49,24817,-0.10,-0.3,-0.016,-180.0,-90.0,0.0)
    end,
	
	['pony'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_pony",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['pig'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_pig",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['cow'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","bag_cow",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['poopietee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_arcade_claw_plush_04a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,

	['humpytee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_arcade_claw_plush_01a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['sakitee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_arcade_claw_plush_03a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['smokertee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_arcade_claw_plush_05a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['princesstee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_princess_robo_plush_07a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['grindytee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_arcade_claw_plush_06a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['wasabitee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_shiny_wasabi_plush_08a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['muffytee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_arcade_claw_plush_02a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,
	
	['mastertee'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","ch_prop_master_09a",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
    end,

	['husky'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_husky")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,

	['shepherd'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_shepherd")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,

	['retriever'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_retriever")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,

	['poodle'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_poodle")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,
	
	['pug'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_pug")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,
	
	['westy'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_westy")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,
	
	['cat'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		TriggerClientEvent("dynamic:animalSpawn",source,"a_c_cat_01")
		vRPC.playAnim(source,true,{"rcmnigel1c","hailing_whistle_waive_a"},false)
    end,
	
	['Mia_PocaoGreen'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 7
		vRPC.createObjects(source,"amb@world_human_aa_coffee@idle_a","idle_a","Mia_PocaoGreen",49,28422,0.01,0,-0.00,0.0,0.0,0.0)

		TriggerClientEvent("sounds:source",source,"curap",1.0)

		TriggerClientEvent("Progress",source,7000)
		TriggerClientEvent("wnInventoryC5Close",source)
		TriggerClientEvent("wnInventoryC5Buttons",source,true)
		local players = vRPC.nearestPlayers(source, 5)
		for k,v in pairs(players) do
			TriggerClientEvent("sounds:source",v[2],"curap",1.0)
		end
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					vRPC.updateHealth(source,50)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['Mia_caixapokemon'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		vRPC.stopActived(source)
		Active[user_id] = os.time() + 5
		TriggerClientEvent("Progress",source,5000)
		vRPC.createObjects(source,"impexp_int-0","mp_m_waremech_01_dual-0","Mia_caixapokemon",49,24817,-0.05,0.46,-0.016,-180.0,-90.0,0.0)
		TriggerClientEvent("wnInventoryC5Close",source)
		repeat
			if os.time() >= parseInt(Active[user_id]) then
				Active[user_id] = nil
				vRPC.removeObjects(source,"one")
				TriggerClientEvent("wnInventoryC5Buttons",source,false)

				if vRP.tryGetInventoryItem(user_id,totalName,1,true,Slot) then
					TriggerClientEvent('wnPresente3:Abrir',source)
				end
			end

			Citizen.Wait(100)
		until Active[user_id] == nil
    end,

	['identity'] = function(user_id, source, identity, Slot, Amount, totalName, nameItem, Active, Objects, Config_base)
		local otherPlayer = vRPC.nearestPlayer(source,5.0)
		if otherPlayer then
			local nuser_id = vRP.getUserId(otherPlayer)
			local nidentity = vRP.userIdentity(nuser_id)
			local identity = vRP.userIdentity(user_id)
			if vRP.request(source,"Voce deseja enviar a sua identidade para <b>"..nidentity.name.." "..nidentity.name2.." #"..nuser_id.."</b> ?","sim","nao") then
				if vRP.request(otherPlayer,"Voce deseja ver a identidade de <b>"..identity.name.." "..identity.name2.." #"..user_id.."</b> ?","sim","nao") then
					TriggerClientEvent("wnIdentidade:Open",otherPlayer,user_id)
				end
			end
		end
    end,
   
}

Config.weaponAmmos = {
	["WEAPON_PRATA_AMMO"] = {
		"WEAPON_NAVYREVOLVER",
	},
	["WEAPON_PISTOL_AMMO"] = {
		"WEAPON_PISTOL",
		"WEAPON_PISTOL_MK2",
		"WEAPON_PISTOL50",
		"WEAPON_REVOLVER",
		"WEAPON_COMBATPISTOL",
		"WEAPON_APPISTOL",
		"WEAPON_HEAVYPISTOL",
		"WEAPON_SNSPISTOL",
		"WEAPON_SNSPISTOL_MK2",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_STAFF"
	},
	["WEAPON_NAIL_AMMO"] = {
		"WEAPON_NAILGUN"
	},
	["WEAPON_SMG_AMMO"] = {
		"WEAPON_MICROSMG",
		"WEAPON_MINISMG",
		"WEAPON_SMG",
		"WEAPON_SMG_MK2",
		"WEAPON_ASSAULTSMG",
		"WEAPON_GUSENBERG",
		"WEAPON_MACHINEPISTOL"
	},
	["WEAPON_RIFLE_AMMO"] = {
		"WEAPON_COMPACTRIFLE",
		"WEAPON_CARBINERIFLE",
		"WEAPON_CARBINERIFLE_MK2",
		"WEAPON_BULLPUPRIFLE",
		"WEAPON_BULLPUPRIFLE_MK2",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_ASSAULTRIFLE",
		"WEAPON_ASSAULTRIFLE_MK2",
		"WEAPON_SPECIALCARBINE",
		"WEAPON_FNFAL",
		"WEAPON_M6IC",
		"WEAPON_PARAFAL",
		"WEAPON_M110KUR",
		"WEAPON_GALIL",
		"WEAPON_AKTACO",
		"WEAPON_aktamb",
		"WEAPON_SPECIALCARBINE_MK2"
	},
	["WEAPON_SHOTGUN_AMMO"] = {
		"WEAPON_PUMPSHOTGUN",
		"WEAPON_PUMPSHOTGUN_MK2",
		"WEAPON_SAWNOFFSHOTGUN"
	},
	["WEAPON_MUSKET_AMMO"] = {
		"WEAPON_SNIPERRIFLE",
		"WEAPON_MUSKET"
	},
	["WEAPON_PETROLCAN_AMMO"] = {
		"WEAPON_PETROLCAN"
	}
}

return Config