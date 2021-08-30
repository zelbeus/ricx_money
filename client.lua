MenuData = {}
TriggerEvent("redemrp_menu_base:getData",function(call)
    MenuData = call
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(4)
        if IsControlPressed(0,Config.ControlKey) then
            TriggerEvent("ricx_money")
        end
    end
end)

RegisterNetEvent("ricx_money")
AddEventHandler("ricx_money", function()
    MenuData.CloseAll()
    local elements = {
        {label = "5 dollars", value = 'money5d' , desc = "5 dollars note"},
        {label = "10 dollars", value = 'money10d' , desc = "10 dollars note"},
        {label = "20 dollars", value = 'money20d' , desc = "20 dollars note"},
        {label = "50 dollars", value = 'money50d' , desc = "50 dollars note"},
        {label = "100 dollars", value = 'money100d' , desc = "100 dollars note"},
        {label = "200 dollars", value = 'money200d' , desc = "200 dollars note"},
        {label = "500 dollars", value = 'money500d' , desc = "500 dollars note"},

    }

    MenuData.Open('default', GetCurrentResourceName(), 'money_menu',{
        title    = 'Get Money Clip',
        subtext    = 'Bank Notes',
        align    = 'top-left',
        elements = elements,
    },
    function(data, menu)
        if(data.current.value == 'money10d') then
            TriggerServerEvent('ricx_transfer',10)
        elseif(data.current.value == 'money20d') then
            TriggerServerEvent('ricx_transfer',20)
        elseif(data.current.value == 'money50d') then
            TriggerServerEvent('ricx_transfer',50)
        elseif(data.current.value == 'money100d') then
            TriggerServerEvent('ricx_transfer',100)
        elseif(data.current.value == 'money200d') then
            TriggerServerEvent('ricx_transfer',200)
        elseif(data.current.value == 'money500d') then
            TriggerServerEvent('ricx_transfer',500)
        elseif(data.current.value == 'money5d') then
            TriggerServerEvent('ricx_transfer',5)
        end
    end,
    function(data, menu)
        menu.close()
    end)
end)
