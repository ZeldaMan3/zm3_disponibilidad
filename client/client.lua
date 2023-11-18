ESX = exports['es_extended']:getSharedObject()

local policiasDisponibles = 0

RegisterNetEvent('mostrarNotificacion')
AddEventHandler('mostrarNotificacion', function(text, personal)
    if personal then
        SetNotificationTextEntry('STRING')
        AddTextComponentString(text)
        DrawNotification(false, false)
    else
        lib.notify({
            title = 'Policias Disponibles: ' .. policiasDisponibles,
            description = 'SAPD ha anunciado su disponibilidad más reciente.',
            duration = 3000,

            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
                ['.description'] = {
                    color = '#909296'
                }
            },
            icon = 'people-group',
            iconColor = '#ffffff'
        })
    end
end)

RegisterCommand('disponible', function()

    lib.notify({
        title = 'Te has puesto DISPONIBLE',
        description = 'Para dejar de estar disponible, escribe /ocupado',
        duration = 3000,

        style = {
            backgroundColor = '#141517',
            color = '#C1C2C5',
            ['.description'] = {
                color = '#909296'
            }
        },
        icon = 'check',
        iconColor = '#23cc28'
    })
    TriggerServerEvent('aumentarPoliciasDisponibles', true)

end, false)

RegisterCommand('ocupado', function()
    lib.notify({
        title = 'Has dejado de estar disponible, pasas a OCUPADO',
        description = 'Para dejar de estar ocupado, escribe /disponible',
        duration = 3000,

        style = {
            backgroundColor = '#141517',
            color = '#C1C2C5',
            ['.description'] = {
                color = '#909296'
            }
        },
        icon = 'ban',
        iconColor = '#ff0000'
    })
    TriggerServerEvent('disminuirPoliciasDisponibles', true)
end, false)

RegisterCommand('mostrardispo', function()
    TriggerServerEvent('mostrarPoliciasDisponibles')
end, false)

RegisterNetEvent('actualizarPoliciasDisponibles')
AddEventHandler('actualizarPoliciasDisponibles', function(cantidad)
    policiasDisponibles = cantidad
end)
