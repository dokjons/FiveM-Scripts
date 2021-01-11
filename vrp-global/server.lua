--###########################
--###|   Made by Jonas   |###
--###| Date: 12-08-2020  |###
--###| Github: dokjons   |###
--###|     Discord:      |###
--###| squiggles#0856    |###
--###########################

local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
local cfg = module("vrp-global", "cfg/config")

MySQL = module("vrp_mysql", "MySQL")


function getIdentity(source)
	local user_idd = vRP.getUserId({source})
    local result = MySQL.Sync.fetchAll("SELECT firstname, name FROM vrp_user_identities WHERE user_id = @user_id", {
			['@user_id'] = user_idd
    })
  if result ~= nil and result[1] ~= nil then
    local user = result[1]
  
  return {
    firstname = user['firstname'],
    lastname = user['name']
  }
  else
    return nil
    end
end


AddEventHandler('chatMessage', function(source, name, msg)
  local user_idd = vRP.getUserId({source})
  sm = splitString(msg, " ");
    if sm[1] == "/meall" then
      CancelEvent()
      TriggerClientEvent('chatMessage', -1, "^4[Global Handling] " .. getIdentity(source).firstname .. " ".. getIdentity(source).lastname .. "^4: " .. '^7' .. string.sub(msg,8))
	PerformHttpRequest('InsertYourDiscordWebhookHere', function(err, text, headers) end, 'POST', json.encode({username = "[Global Handling]", content = "```["..user_idd.."]" .. " "..getIdentity(source).firstname.." "..getIdentity(source).lastname.. ": " ..msg.."```"}), { ['Content-Type'] = 'application/json' })
    end
end)
