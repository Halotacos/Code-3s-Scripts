print("")
print("=======================")
print("Twitter Script")
print("By Code3Rp Dev Team")
print("=======================")

--Code3RP Twitter script Rewritten with RegisterCommand
--Version 1.4
  --for suggestion in chat 
  local twtChat = 'twt'
  --Twitter Command 
  RegisterCommand('twt', function(source, args, user)
	--TriggerClientEvent('chatMessage', -1, "^0^5Twitter^0 | ^7@^2" .. GetPlayerName(source) .. "^0", {214, 214, 214}, table.concat(args, " "))
TriggerEvent("SyncAd")
	end, false)
TriggerEvent('chat:addSuggestion', '/' ..twtChat , 'Sends a Twitter message in chat.')

RegisterServerEvent("SyncAd")
AddEventHandler('SyncAd', function(inputText)
	TriggerClientEvent('DisplayAd', -1, inputText)
end)
