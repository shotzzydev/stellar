-- Teste

fx_version 'adamant'
game 'gta5'

client_script {
	"script/lib/utils.lua",
	"config/config.lua",
	"script/client-side/*.lua",
}

server_scripts{ 
	"@vrp/lib/itemlist.lua",
	"script/lib/utils.lua",
	"script/server-side/*.lua",
	"config/*.lua",
}

ui_page 'script/web-side/index.html'
              
files {
	'script/web-side/*',
	'script/web-side/**'
}