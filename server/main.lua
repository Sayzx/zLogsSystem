

DiscordWebHook = function(Name, Title, Description, Image, Webhook)
    if Image == nil then
        Image = zLogs.Image
    end
	local Content = {
	        {
	            ["color"] = 0,
	            ["title"] = Title,
	            ["description"] = Description,
                ["image"] = {
                    ["url"] = Image,
                },
		        ["footer"] = {
	            ["text"] = "zLogs",
	            ["icon_url"] = nil,
	            },
	        }
	    }
	PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = Name, embeds = Content}), { ['Content-Type'] = 'application/json' })
end

RegisterNetEvent('zLogs:SendToDiscord')
AddEventHandler('zLogs:SendToDiscord', function(Name, Title, Description, Image, Webhook)
    DiscordWebHook(Name, Title, Description, Image, Webhook)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    DiscordWebHook("zLogs", "📗 zLogs Started", "zLogs has been started on your server.", 'https://i.gifer.com/7RQq.gif', zLogs.WebHookAll)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    DiscordWebHook("zLogs", "📕 zLogs Stopped", "zLogs has been stopped on your server.", 'https://i.gifer.com/7RQq.gif', zLogs.WebHookAll)
end)

AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local source = source
    local name = GetPlayerName(source)
    if zLogs.Settings.steam == false then
        steam = "Disabled"
    else
        steam = GetPlayerIdentifier(source, 0)
    end
    if zLogs.Settings.license == false then
        license = "Disabled"
    else
        license = GetPlayerIdentifier(source, 1)
    end
    if zLogs.Settings.discord == false then
        discord = "Disabled"
    else
        discord = GetPlayerIdentifier(source, 4)
    end
    if zLogs.Settings.xbl == false then
        xbl = "Disabled"
    else
        xbl = GetPlayerIdentifier(source, 2)
    end
    if zLogs.Settings.liveid == false then
        liveid = "Disabled"
    else
        liveid = GetPlayerIdentifier(source, 3)
    end
    local ids = {
            
        ["steam"] = steam,
        ["license"] = license,
        ["discord"] = discord,
        ["xbl"] = xbl,
        ["liveid"] = liveid,
    }
    deferrals.defer()
    Wait(0)
    deferrals.update("Welcome to the server, " .. name .. "!")
    Wait(0)
    deferrals.update("Checking your identifiers...")
    Wait(0)
    
        deferrals.done()
        DiscordWebHook("zLogs", "🔑 Player Connecting", "**Name:** " .. name .. "\n**Steam:** " .. steam .. "\n**License:** " .. license .. "\n**Discord:** " .. discord .. "\n**Xbox Live:** " .. xbl .. "\n**Live ID:** " .. liveid, 'https://media0.giphy.com/media/EqGGGbjjFltjG/giphy.gif', zLogs.WebHookAll)
end)

AddEventHandler('playerDropped', function(reason)
    local source = source
    local name = GetPlayerName(source)
    if zLogs.Settings.steam == false then
        steam = "Disabled"
    else
        steam = GetPlayerIdentifier(source, 0)
    end
    if zLogs.Settings.license == false then
        license = "Disabled"
    else
        license = GetPlayerIdentifier(source, 1)
    end
    if zLogs.Settings.discord == false then
        discord = "Disabled"
    else
        discord = GetPlayerIdentifier(source, 4)
    end
    if zLogs.Settings.xbl == false then
        xbl = "Disabled"
    else
        xbl = GetPlayerIdentifier(source, 2)
    end
    if zLogs.Settings.liveid == false then
        liveid = "Disabled"
    else
        liveid = GetPlayerIdentifier(source, 3)
    end
    local ids = {
        ["steam"] = steam,
        ["license"] = license,
        ["discord"] = discord,
        ["xbl"] = xbl,
        ["liveid"] = liveid,
    }
    DiscordWebHook("zLogs", "🔑 Player Disconnect", "**Name:** " .. name .. "\n**Steam:** " .. steam .. "\n**License:** " .. license .. "\n**Discord:** " .. discord .. "\n**Xbox Live:** " .. xbl .. "\n**Live ID:** " .. liveid .. "\n**Reason:** " .. reason, 'https://media.tenor.com/hxjDbU2kmasAAAAM/discord.gif', zLogs.WebHookAll)
end)


AddEventHandler('chatMessage', function(source, name, message)
    local source = source
    local name = GetPlayerName(source)
    if zLogs.Settings.steam == false then
        steam = "Disabled"
    else
        steam = GetPlayerIdentifier(source, 0)
    end
    if zLogs.Settings.license == false then
        license = "Disabled"
    else
        license = GetPlayerIdentifier(source, 1)
    end
    if zLogs.Settings.discord == false then
        discord = "Disabled"
    else
        discord = GetPlayerIdentifier(source, 4)
    end
    if zLogs.Settings.xbl == false then
        xbl = "Disabled"
    else
        xbl = GetPlayerIdentifier(source, 2)
    end
    if zLogs.Settings.liveid == false then
        liveid = "Disabled"
    else
        liveid = GetPlayerIdentifier(source, 3)
    end
    local ids = {
        ["steam"] = steam,
        ["license"] = license,
        ["discord"] = discord,
        ["xbl"] = xbl,
        ["liveid"] = liveid,
    }
    DiscordWebHook("zLogs", "⛏ Chat Message", "**Name:** " .. name .. "\n**Steam:** " .. steam .. "\n**License:** " .. license .. "\n**Discord:** " .. discord .. "\n**Xbox Live:** " .. xbl .. "\n**Live ID:** " .. liveid .. "\n\n**Message:** " .. message, nil, zLogs.WebHookAll)
end)

AddEventHandler('playerSpawned', function(spawn)
    local source = source
    local name = GetPlayerName(source)
    if zLogs.Settings.steam == false then
        steam = "Disabled"
    else
        steam = GetPlayerIdentifier(source, 0)
    end
    if zLogs.Settings.license == false then
        license = "Disabled"
    else
        license = GetPlayerIdentifier(source, 1)
    end
    if zLogs.Settings.discord == false then
        discord = "Disabled"
    else
        discord = GetPlayerIdentifier(source, 4)
    end
    if zLogs.Settings.xbl == false then
        xbl = "Disabled"
    else
        xbl = GetPlayerIdentifier(source, 2)
    end
    if zLogs.Settings.liveid == false then
        liveid = "Disabled"
    else
        liveid = GetPlayerIdentifier(source, 3)
    end
    local ids = {
        ["steam"] = steam,
        ["license"] = license,
        ["discord"] = discord,
        ["xbl"] = xbl,
        ["liveid"] = liveid,
    }
    local position = GetEntityCoords(GetPlayerPed(source))
    DiscordWebHook("zLogs", "📍 Player Spawned", "**Name:** " .. name .. "\n**Steam:** " .. steam .. "\n**License:** " .. license .. "\n**Discord:** " .. discord .. "\n**Xbox Live:** " .. xbl .. "\n**Live ID:** " .. liveid .. "\n\n**Position:** " .. position, nil, zLogs.WebHookSpawn)
   
end)


AddEventHandler('onResourceStart' , function(resource)
    local ressource = resource
    DiscordWebHook("zLogs", "📱 Resource Started", "**Resource:** `" .. resource..'`', nil, zLogs.WebHookLogs)
end)