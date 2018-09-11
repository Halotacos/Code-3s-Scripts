print("")
print("=======================")
print("OnDuty Script")
print("Version 1.0")
print("By Code3Rp Dev Team")
print("Rewritten and updated from Kvetz OnDuty Script")
print("=======================")

AddEventHandler('chatMessage', function(source, name, message)
      if string.sub(message, 1, string.len("/")) ~= "/" then
          local name = GetPlayerName(source)
		TriggerClientEvent("sendProximityMessage", -1, source, name, message)
      end
      CancelEvent()
  end)

--LSPD
 RegisterCommand('onduty-lspd', function(source, args, user)
	TriggerClientEvent("yt:lsdpLoadout", source)
end, false)
  --Sheriff
  RegisterCommand('onduty-sheriff', function(source, args, user)
	TriggerClientEvent("yt:sheriffLoadout", source)
end, false)
--SAHW
  RegisterCommand('onduty-sahw', function(source, args, user)
	TriggerClientEvent("yt:hwLoadout", source)
end, false)
--BAIL
  RegisterCommand('onduty-bail', function(source, args, user)
	TriggerClientEvent("yt:bailLoadout", source)
end, false)

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
