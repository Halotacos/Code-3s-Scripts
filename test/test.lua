AddEventHandler('onClientGameTypeStart', function()
            TriggerEvent('chat:addMessage', {
                args = { 'Test!~' }
            })
    end)

RegisterCommand('coords', function(source, args)
    local playerPed = PlayerPedId() -- get the local player ped
    local pos = GetEntityCoords(playerPed)
                      TriggerEvent('chat:addMessage', {
            args = { 'Coords are:' .. pos }
        })
