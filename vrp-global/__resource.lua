--###########################
--###|   Made by Jonas   |###
--###| Date: 12-08-2020  |###
--###| Github: dokjons   |###
--###|     Discord:      |###
--###| squiggles#0856    |###
--###########################

dependency 'vrp'

server_scripts {
    '@vrp/lib/utils.lua',
    'server.lua',
    '@mysql-async/lib/MySQL.lua'
}

client_scripts {
    'client.lua'
}