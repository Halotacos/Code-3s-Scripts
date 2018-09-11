local ads = {
--  ad ('What you'll type in chat', 'CHAR_FLOYD', 'ImageName', 'Ad Title', 'Ad Subtitle'),
	ad('bank', 'CHAR_BANK_FLEECA', 'CHAR_BANK_FLEECA', 'Fleeca Bank'),
	ad('traffic', 'CHAR_FLOYD', 'WAZE', 'Waze Advisory', 'Notification'),
	ad('dealership', 'CHAR_CARSITE', 'CHAR_CARSITE', 'Legendary Motors'),
	ad('lsc', 'CHAR_LS_CUSTOMS', 'CHAR_LS_CUSTOMS', 'LS Customs'),
	ad('ammunation', 'CHAR_AMMUNATION', 'CHAR_AMMUNATION', 'Ammunation'),
	ad('taxi', 'CHAR_FLOYD', 'CAB', 'Taxi'),
	ad('uber', 'CHAR_FLOYD', 'UBER', 'Uber', 'Phone Notification'),
	ad('chp', 'CHAR_FLOYD', 'CHP', 'CHP Advisory', 'Phone Alert'),
	ad('store', 'CHAR_FLOYD', '247', '24/7 Shop'),
  	ad('twt', 'CHAR_FLOYD', 'ADMIN', 'Twitter', 'Update'),
	ad('onlyadmin', 'CHAR_FLOYD', 'ADMIN', 'Administration', nil, true)
}
local pic1 = 'CHAR_FLOYD'
local pic2 = 'ADMIN'
local 



local function findAdById(id)
	local output 
	for _, item in ipairs(ads) do 
		if item.id == id then output = item end 
	end 
	return output
end

--[[EVENT TO SHOW ALL ADS]]
RegisterNetEvent('Showtwt')
AddEventHandler('Showtwt', function()
	local index = 0
	local outstring = '^7'
	for _, item in ipairs(ads) do
		if item.hidden ~= true then
			index = index + 1
			if index == 1 then outstring = outstring..item.id else outstring = outstring..'/'..item.id end
		end
	end
	TriggerEvent('chatMessage', 'SYSTEM', {0,0,0}, 'Available ads: <'..outstring..'>')
end)

--[[EVENT TO DISPLAY AN AD TO THE PLAYER]]
RegisterNetEvent('DisplayAd')
AddEventHandler('DisplayAd',function(inputText)
	SetNotificationTextEntry('STRING');
	AddTextComponentString(inputText);
	SetNotificationMessage(pic1, pic2, true, 4, sender, subject);
	DrawNotification(false, true);
end)
