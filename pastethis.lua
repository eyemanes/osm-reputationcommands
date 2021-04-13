-- For admins to add Reputation to anyone

QBCore.Commands.Add("addrep", "Add Reputation to a Player", {{name="id", help="ID of player"}, {name="type", help="dealer/crafting/atcrafting"}, {name="amount", help="Amount of Rep"}}, false, function(source, args)

        
        local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))

       if Player ~= nil then 
        if args[1] ~= nil and args[2] ~= nil and args[3] ~= nil then
            local x = tonumber(args[1])
            local y = args[2]
            local z = tonumber(args[3])

            if y == "dealer" then
                local newrep = Player.PlayerData.metadata["dealerrep"] + z
                Player.Functions.SetMetaData("dealerrep", newrep)
                TriggerClientEvent('chatMessage', Player, "SYSTEM", "error", "Added Rep")
            end
            if y == "crafting" then
                local newrep = Player.PlayerData.metadata["craftingrep"] + z
                Player.Functions.SetMetaData("craftingrep", newrep)
                TriggerClientEvent('chatMessage', Player, "SYSTEM", "error", "Added Rep")
            end
            if y == "atcrafting" then
                local newrep  = Player.PlayerData.metadata["attachmentcraftingrep"]  + z
                Player.Functions.SetMetaData("attachmentcraftingrep", newrep)
                TriggerClientEvent('chatMessage', Player, "SYSTEM", "error", "Added Rep")
            end
        else
            TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Not every argument has been entered.")
        end
      else 
       TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player not Online")
end
end, "admin") -- change allowed role here 

-- GIVE YOUR REPUTATION TO OTHER PLAYERS

QBCore.Commands.Add("giverep", "Add Reputation to a Player", {{name="id", help="ID of player"}, {name="type", help="dealer/crafting/atcrafting"}, {name="amount", help="Amount of Rep"}}, false, function(source, args)

        local Self = QBCore.Functions.GetPlayer(source)
        local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))

       if Player ~= nil and Self ~= nil then 
        if args[1] ~= nil and args[2] ~= nil and args[3] ~= nil then
            local x = tonumber(args[1])
            local y = args[2]
            local z = tonumber(args[3])

            if y == "dealer" and Self.PlayerData.metadata["dealerrep"] >= z then
                local selfrep = Self.PlayerData.metadata["dealerrep"] - z
              local newrep = Player.PlayerData.metadata["dealerrep"] + z
                Player.Functions.SetMetaData("dealerrep", newrep)
                Self.Functions.SetMetaData("dealerrep", selfrep)
                TriggerClientEvent('chatMessage', Player, "SYSTEM", "error", "You received some DEALER REP")
            end
            if y == "crafting" and Self.PlayerData.metadata["craftingrep"] >= z then
                local selfrep = Self.PlayerData.metadata["craftingrep"] - z
              local newrep = Player.PlayerData.metadata["craftingrep"] + z
                Player.Functions.SetMetaData("craftingrep", newrep)
                Self.Functions.SetMetaData("craftingrep", selfrep)
                TriggerClientEvent('chatMessage', Player, "SYSTEM", "error", "You received some CRAFTING REP")
            end
            if y == "atcrafting" and Self.PlayerData.metadata["attachmentcraftingrep"] >= z then
                local selfrep = Self.PlayerData.metadata["attachmentcraftingrep"] - z
              local newrep = Player.PlayerData.metadata["attachmentcraftingrep"] + z
                Player.Functions.SetMetaData("attachmentcraftingrep", newrep)
                Self.Functions.SetMetaData("attachmentcraftingrep", selfrep)
                TriggerClientEvent('chatMessage', Player, "SYSTEM", "error", "You received some ATTACHMENT CRAFTING REP")
            end
        else
            TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Not every argument has been entered.")
        end
      else 
       TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player not Online")
end
end)
