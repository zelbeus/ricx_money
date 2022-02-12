data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

--[[INVENTORY CONFIG
["money50"] =
{
    label = "Money Clip $50",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_100.png",
    type = "item_standard",

},
["money5"] =
{
    label = "Money Clip $5",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_100.png",
    type = "item_standard",

},
["money10"] =
{
    label = "Money Clip $10",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_100.png",
    type = "item_standard",

},
["money20"] =
{
    label = "Money Clip $20",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_100.png",
    type = "item_standard",

},
["money100"] =
{
    label = "Money Clip $100",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_200.png",
    type = "item_standard",

},
["money200"] =
{
    label = "Money Clip $200",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_200.png",
    type = "item_standard",

},
["money500"] =
{
    label = "Money Clip $500",
    description = "Use it to get the amount",
    weight = 0.001,
    canBeDropped = true,
    canBeUsed = true,
    requireLvl = 0,
    limit = 1000,
    imgsrc = "items/money_500.png",
    type = "item_standard",

},
]]
RegisterServerEvent("ricx_transfer")
AddEventHandler("ricx_transfer", function(_value)
    local _source = source
    local value = tonumber(_value)
    local itemData
    local ItemInfo
    if value == 10 then
        itemData = data.getItem(_source, "money10")
        ItemInfo = data.getItemData("money10")
    elseif value == 20 then
        itemData = data.getItem(_source, "money20")
        ItemInfo = data.getItemData("money20")
    elseif value == 50 then
        itemData = data.getItem(_source, "money50")
        ItemInfo = data.getItemData("money50")
    elseif value == 100 then
        itemData = data.getItem(_source, "money100")
        ItemInfo = data.getItemData("money100")
    elseif value == 200 then
        itemData = data.getItem(_source, "money200")
        ItemInfo = data.getItemData("money200")
    elseif value == 500 then
        itemData = data.getItem(_source, "money400")
        ItemInfo = data.getItemData("money400")
    elseif value == 5 then
        itemData = data.getItem(_source, "money5")
        ItemInfo = data.getItemData("money5")
    end
    local label = ItemInfo.label 
    local img = ItemInfo.imgsrc
    local requireLvl = ItemInfo.requireLvl
    local userMoney
    TriggerClientEvent("pNotify:SetQueueMax", -1, "right", 5)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
        userMoney = user.getMoney()
            if userMoney >= value then
                itemData.AddItem(1)
                user.removeMoney(value)
                local itemDatanew = data.getItem(_source, itemname)
                local count2 = itemDatanew.ItemAmount
            else
                print("Not Enough money")
            end
    end)
end)
---MONEY CLIPS
RegisterServerEvent("RegisterUsableItem:money5")
AddEventHandler("RegisterUsableItem:money5", function()
	local _source = source
    local ItemData = data.getItem(_source, 'money5')
    local ItemInfo = data.getItemData('money5')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(5)
        local newmoney = user.getMoney()
	end)
end)
RegisterServerEvent("RegisterUsableItem:money10")
AddEventHandler("RegisterUsableItem:money10", function()
	local _source = source
    local ItemData = data.getItem(_source, 'money10')
    local ItemInfo = data.getItemData('money10')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(10)
        local newmoney = user.getMoney()
	end)
end)
RegisterServerEvent("RegisterUsableItem:money20")
AddEventHandler("RegisterUsableItem:money20", function(source)
	local _source = source
    local ItemData = data.getItem(_source, 'money20')
    local ItemInfo = data.getItemData('money20')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(20)
        local newmoney = user.getMoney()
	end)
end)
RegisterServerEvent("RegisterUsableItem:money50")
AddEventHandler("RegisterUsableItem:money50", function()
	local _source = source
    local ItemData = data.getItem(_source, 'money50')
    local ItemInfo = data.getItemData('money50')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(50)
        local newmoney = user.getMoney()
	end)
end)
RegisterServerEvent("RegisterUsableItem:money100")
AddEventHandler("RegisterUsableItem:money100", function()
	local _source = source
    local ItemData = data.getItem(_source, 'money100')
    local ItemInfo = data.getItemData('money100')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(100)
        local newmoney = user.getMoney()
	end)
end)
RegisterServerEvent("RegisterUsableItem:money200")
AddEventHandler("RegisterUsableItem:money200", function()
	local _source = source
    local ItemData = data.getItem(_source, 'money200')
    local ItemInfo = data.getItemData('money200')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(200)
        local newmoney = user.getMoney()
	end)
end)
RegisterServerEvent("RegisterUsableItem:money500")
AddEventHandler("RegisterUsableItem:money500", function()
	local _source = source
    local ItemData = data.getItem(_source, 'money500')
    local ItemInfo = data.getItemData('money500')
	ItemData.RemoveItem(1)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local money = user.getMoney()
        user.addMoney(500)
        local newmoney = user.getMoney()
	end)
end)
