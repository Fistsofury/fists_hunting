fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"

description 'Fistsofury : Hunting Script'

client_scripts {
	'client/client.lua',
}

shared_scripts {
    'config.lua',
}

server_scripts {
	'server/server.lua',
}

lua54 'yes'
