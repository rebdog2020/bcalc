
RegisterCommand("bcalc", function(source, args, rawCommand)
    openCalc();
end, false) --[[this command is not restricted, everyone can use this.]]

RegisterNUICallback('closeBCalc', function(data, cb)
    SendNUIMessage({
        type = 'close'
    })
    SetNuiFocus(false, false);
    -- and so does callback response data
    cb("Ok")
end)


function openCalc()
    SetNuiFocus(true, true);
    SendNUIMessage({
        type = 'open'
    })
end

function closeCalc()
    SetNuiFocus(false, false);
    SendNUIMessage({
        type = 'close'
    })
end

