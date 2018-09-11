print("")
print("=======================")
print("OnDuty Script")
print("Version 1.0")
print("By Code3Rp Dev Team")
print("Rewritten and updated from Kvetz OnDuty Script")
print("=======================")

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
