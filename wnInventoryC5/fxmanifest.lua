-- Teste

fx_version "bodacious"
game "gta5"
ui_page "web-side/index.html"
client_scripts {
	"@PolyZone/client.lua",
	"@vrp/lib/utils.lua",
	"client-side/*",
	"config/config.lua",
}
server_scripts {
	"@vrp/lib/vehicles.lua",
	"@vrp/lib/itemlist.lua",
	"@vrp/lib/utils.lua",
	"server-side/*",
 	"config/config.lua",
}
files {
	"web-side/*",
	"web-side/**/*"
}              