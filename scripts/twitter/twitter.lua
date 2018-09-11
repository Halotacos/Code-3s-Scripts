print("")
print("=======================")
print("Twitter Script")
print("By Code3Rp Dev Team")
print("=======================")

--Code3RP Twitter script Rewritten with RegisterCommand
--Version 1.4

AddEventHandler('chatMessage', function(source, name, message)
      if string.sub(message, 1, string.len("/")) ~= "/" then
          local name = GetPlayerName(source)
		TriggerClientEvent("sendProximityMessage", -1, source, name, message)
      end
      CancelEvent()
  end)

  --for suggestion in chat 
  local twtChat = 'void'

  
  --Twitter Command 

  
  
  RegisterCommand('twt', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^0^5Twitter^0 | ^7@^2" .. GetPlayerName(source) .. "^0", {214, 214, 214}, table.concat(args, " "))
end, false)
TriggerEvent('chat:addSuggestion', '/' ..twtChat , 'Sends a Twitter message in chat.')

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end