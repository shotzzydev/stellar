

fx_version "adamant"
game "gta5"

client_script {
	"script/lib/utils.lua",
	"script/client-side/*.lua",
}

server_scripts{ 
	"@vrp/lib/itemlist.lua",
	"@vrp/lib/vehicles.lua",
	"script/lib/utils.lua",
	"script/server-side/*.lua",
}

ui_page 'script/web-side/index.html'

files {
	'script/web-side/*',
	'script/web-side/**'
}              