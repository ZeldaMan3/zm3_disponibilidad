ESX = exports['es_extended']:getSharedObject()

local policiasDisponibles = 0
local policiasMarcados = {}

RegisterServerEvent('aumentarPoliciasDisponibles')
AddEventHandler('aumentarPoliciasDisponibles', function(personal)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' and not policiasMarcados[source] then
        policiasDisponibles = policiasDisponibles + 1
        policiasMarcados[source] = true
        TriggerClientEvent('actualizarPoliciasDisponibles', -1, policiasDisponibles, personal)
    end
end)

RegisterServerEvent('disminuirPoliciasDisponibles')
AddEventHandler('disminuirPoliciasDisponibles', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' and policiasDisponibles > 0 then
        policiasDisponibles = policiasDisponibles - 1
        policiasMarcados[source] = false
        TriggerClientEvent('actualizarPoliciasDisponibles', -1, policiasDisponibles, false)
    end
end)

RegisterServerEvent('mostrarPoliciasDisponibles')
AddEventHandler('mostrarPoliciasDisponibles', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' then
        local message = 'Policias Disponibles: ' .. policiasDisponibles
        TriggerClientEvent('mostrarNotificacion', -1, message, false)
    end
end)
