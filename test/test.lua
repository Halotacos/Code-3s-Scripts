AddEventHandler('onClientGameTypeStart', function()
            TriggerEvent('chat:addMessage', {
                args = { 'Test!~' }
            })
    end)
