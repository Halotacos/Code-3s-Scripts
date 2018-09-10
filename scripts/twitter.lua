-- twitter By NEP 
--Based off of fuzzymannerz ooc mod (https://github.com/fuzzymannerz/ooc)


AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/twt" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^5TWITTER^7 | @^2".. name, {214, 214, 214}, string.sub(msg,5))
	end
end)

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
