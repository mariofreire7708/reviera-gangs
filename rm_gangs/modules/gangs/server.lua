local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
initialized = nil
L0_1 = {}
gangs = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = fwGangs
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = pairs
  L1_2 = cfg
  L1_2 = L1_2.gangs
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = fwGangs
    L6_2 = L6_2[L4_2]
    if L6_2 then
      L7_2 = gangs
      L7_2[L4_2] = L5_2
      L7_2 = gangs
      L7_2 = L7_2[L4_2]
      L8_2 = L6_2.label
      L7_2.label = L8_2
      L7_2 = MySQL
      L7_2 = L7_2.prepare
      L7_2 = L7_2.await
      L8_2 = "INSERT IGNORE INTO rm_gangs_main (name) VALUES (?)"
      L9_2 = {}
      L10_2 = L4_2
      L9_2[1] = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = L5_2.locations
      L7_2 = L7_2.stash
      if L7_2 then
        L7_2 = registerStash
        if L7_2 then
          L7_2 = registerStash
          L8_2 = L4_2
          L9_2 = L5_2.label
          L7_2(L8_2, L9_2)
        else
          L7_2 = gangs
          L7_2 = L7_2[L4_2]
          L7_2 = L7_2.locations
          L7_2.stash = nil
        end
      end
    else
      L7_2 = lib
      L7_2 = L7_2.print
      L7_2 = L7_2.info
      L8_2 = L4_2
      L9_2 = " not found, being passed."
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
  end
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "SELECT * FROM rm_gangs_main"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = gangs
    L6_2 = L0_2[L4_2]
    L6_2 = L6_2.name
    L5_2 = L5_2[L6_2]
    if L5_2 then
      L5_2 = gangs
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.name
      L5_2 = L5_2[L6_2]
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.logoURL
      L5_2.logoURL = L6_2
      L5_2 = gangs
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.name
      L5_2 = L5_2[L6_2]
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.loyalty
      L5_2.loyalty = L6_2
      L5_2 = gangs
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.name
      L5_2 = L5_2[L6_2]
      L5_2.money = 0
      L5_2 = L0_2[L4_2]
      L5_2 = L5_2.money
      if L5_2 then
        L5_2 = gangs
        L6_2 = L0_2[L4_2]
        L6_2 = L6_2.name
        L5_2 = L5_2[L6_2]
        L6_2 = L0_2[L4_2]
        L6_2 = L6_2.money
        L5_2.money = L6_2
      end
    else
      L5_2 = MySQL
      L5_2 = L5_2.prepare
      L6_2 = "DELETE FROM rm_gangs_main WHERE name = ?"
      L7_2 = {}
      L8_2 = L0_2[L4_2]
      L8_2 = L8_2.name
      L7_2[1] = L8_2
      L5_2(L6_2, L7_2)
    end
  end
  initialized = true
end
L0_1(L1_1)
L0_1 = RegisterServerEvent
L1_1 = "rm_gangs:server:updateLogoURL"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = getPlayerGang
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.isboss
  if L3_2 then
    L3_2 = gangs
    L4_2 = L2_2.name
    L3_2 = L3_2[L4_2]
    L3_2.logoURL = A0_2
    L3_2 = MySQL
    L3_2 = L3_2.prepare
    L3_2 = L3_2.await
    L4_2 = "UPDATE rm_gangs_main SET logoURL = ? WHERE name = ?"
    L5_2 = {}
    L6_2 = A0_2
    L7_2 = L2_2.name
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2(L4_2, L5_2)
    L3_2 = TriggerClientEvent
    L4_2 = "rm_gangs:client:updateLogoURL"
    L5_2 = -1
    L6_2 = {}
    L7_2 = L2_2.name
    L6_2.gangName = L7_2
    L6_2.url = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.money
  L3_2 = gangs
  L3_2 = L3_2[A0_2]
  L3_2.money = A1_2
  L3_2 = MySQL
  L3_2 = L3_2.prepare
  L4_2 = "UPDATE rm_gangs_main SET money = ? WHERE name = ?"
  L5_2 = {}
  L6_2 = gangs
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.money
  L7_2 = A0_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L3_2.oldAmount = L2_2
  L4_2 = gangs
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.money
  L3_2.newAmount = L4_2
  L3_2.gangName = A0_2
  L4_2 = TriggerEvent
  L5_2 = "rm_gangs:server:onGangMoneySet"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = TriggerClientEvent
  L5_2 = "rm_gangs:client:onGangMoneySet"
  L6_2 = -1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = true
  return L4_2
end
setGangMoney = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.money
  L3_2 = gangs
  L3_2 = L3_2[A0_2]
  L4_2 = L3_2.money
  L4_2 = L4_2 + A1_2
  L3_2.money = L4_2
  L3_2 = MySQL
  L3_2 = L3_2.prepare
  L4_2 = "UPDATE rm_gangs_main SET money = ? WHERE name = ?"
  L5_2 = {}
  L6_2 = gangs
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.money
  L7_2 = A0_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L3_2.oldAmount = L2_2
  L4_2 = gangs
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.money
  L3_2.newAmount = L4_2
  L3_2.gangName = A0_2
  L4_2 = TriggerEvent
  L5_2 = "rm_gangs:server:onGangMoneyAdded"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = TriggerClientEvent
  L5_2 = "rm_gangs:client:onGangMoneyAdded"
  L6_2 = -1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = true
  return L4_2
end
addMoneyToGang = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.money
  if A1_2 <= L2_2 then
    L2_2 = gangs
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.money
    L3_2 = gangs
    L3_2 = L3_2[A0_2]
    L4_2 = L3_2.money
    L4_2 = L4_2 - A1_2
    L3_2.money = L4_2
    L3_2 = MySQL
    L3_2 = L3_2.prepare
    L4_2 = "UPDATE rm_gangs_main SET money = ? WHERE name = ?"
    L5_2 = {}
    L6_2 = gangs
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.money
    L7_2 = A0_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L3_2.oldAmount = L2_2
    L4_2 = gangs
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.money
    L3_2.newAmount = L4_2
    L3_2.gangName = A0_2
    L4_2 = TriggerEvent
    L5_2 = "rm_gangs:server:onGangMoneyRemoved"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = TriggerClientEvent
    L5_2 = "rm_gangs:client:onGangMoneyRemoved"
    L6_2 = -1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = true
    return L4_2
  else
    L2_2 = false
    return L2_2
  end
end
removeMoneyFromGang = L0_1
L0_1 = cfg
L0_1 = L0_1.commands
L0_1 = L0_1.gang
if L0_1 then
  L0_1 = lib
  L0_1 = L0_1.addCommand
  L1_1 = cfg
  L1_1 = L1_1.commands
  L1_1 = L1_1.gang
  L2_1 = {}
  L3_1 = locale
  L4_1 = "commands.gang.help"
  L3_1 = L3_1(L4_1)
  L2_1.help = L3_1
  function L3_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    L3_2 = getPlayerGang
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = notify
    L5_2 = A0_2
    L6_2 = "%s - [%s]%s."
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L3_2.label
    L9_2 = L3_2.grade
    L9_2 = L9_2.level
    L10_2 = L3_2.grade
    L10_2 = L10_2.name
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = "info"
    L4_2(L5_2, L6_2, L7_2)
  end
  L0_1(L1_1, L2_1, L3_1)
end
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = cfg
    L5_2 = L5_2.adminList
    L6_2 = A0_2[L4_2]
    L5_2 = L5_2[L6_2]
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L1_1 = cfg
L1_1 = L1_1.commands
L1_1 = L1_1.addgangmoney
if L1_1 then
  L1_1 = lib
  L1_1 = L1_1.addCommand
  L2_1 = cfg
  L2_1 = L2_1.commands
  L2_1 = L2_1.addgangmoney
  L3_1 = {}
  L4_1 = locale
  L5_1 = "commands.addgangmoney.help"
  L4_1 = L4_1(L5_1)
  L3_1.help = L4_1
  L4_1 = {}
  L5_1 = {}
  L5_1.name = "gang"
  L6_1 = locale
  L7_1 = "commands.addgangmoney.params.gang"
  L6_1 = L6_1(L7_1)
  L5_1.help = L6_1
  L5_1.type = "string"
  L6_1 = {}
  L6_1.name = "amount"
  L7_1 = locale
  L8_1 = "commands.addgangmoney.params.amount"
  L7_1 = L7_1(L8_1)
  L6_1.help = L7_1
  L6_1.type = "number"
  L4_1[1] = L5_1
  L4_1[2] = L6_1
  L3_1.params = L4_1
  function L4_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L3_2 = GetPlayerIdentifiers
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = IsPlayerAceAllowed
    L5_2 = A0_2
    L6_2 = "command"
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = L0_1
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        goto lbl_36
      end
    end
    L4_2 = addMoneyToGang
    L5_2 = A1_2.gang
    L6_2 = A1_2.amount
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = notify
      L5_2 = A0_2
      L6_2 = locale
      L7_2 = "addgangmoney_result"
      L8_2 = locale
      L9_2 = "ui.$"
      L8_2 = L8_2(L9_2)
      L9_2 = A1_2.amount
      L10_2 = gangs
      L11_2 = A1_2.gang
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.label
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = "info"
      L4_2(L5_2, L6_2, L7_2)
    end
    ::lbl_36::
  end
  L1_1(L2_1, L3_1, L4_1)
end
L1_1 = cfg
L1_1 = L1_1.commands
L1_1 = L1_1.setgangmoney
if L1_1 then
  L1_1 = lib
  L1_1 = L1_1.addCommand
  L2_1 = cfg
  L2_1 = L2_1.commands
  L2_1 = L2_1.setgangmoney
  L3_1 = {}
  L4_1 = locale
  L5_1 = "commands.setgangmoney.help"
  L4_1 = L4_1(L5_1)
  L3_1.help = L4_1
  L4_1 = {}
  L5_1 = {}
  L5_1.name = "gang"
  L6_1 = locale
  L7_1 = "commands.setgangmoney.params.gang"
  L6_1 = L6_1(L7_1)
  L5_1.help = L6_1
  L5_1.type = "string"
  L6_1 = {}
  L6_1.name = "amount"
  L7_1 = locale
  L8_1 = "commands.setgangmoney.params.amount"
  L7_1 = L7_1(L8_1)
  L6_1.help = L7_1
  L6_1.type = "number"
  L4_1[1] = L5_1
  L4_1[2] = L6_1
  L3_1.params = L4_1
  function L4_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    L3_2 = GetPlayerIdentifiers
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = IsPlayerAceAllowed
    L5_2 = A0_2
    L6_2 = "command"
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = L0_1
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        goto lbl_36
      end
    end
    L4_2 = setGangMoney
    L5_2 = A1_2.gang
    L6_2 = A1_2.amount
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = notify
      L5_2 = A0_2
      L6_2 = locale
      L7_2 = "setgangmoney_result"
      L8_2 = gangs
      L9_2 = A1_2.gang
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.label
      L9_2 = locale
      L10_2 = "ui.$"
      L9_2 = L9_2(L10_2)
      L10_2 = A1_2.amount
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = "info"
      L4_2(L5_2, L6_2, L7_2)
    end
    ::lbl_36::
  end
  L1_1(L2_1, L3_1, L4_1)
end
L1_1 = exports
L2_1 = "getGangs"
function L3_1()
  local L0_2, L1_2
  while true do
    L0_2 = initialized
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 10
    L0_2(L1_2)
  end
  L0_2 = gangs
  return L0_2
end
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "addLoyalty"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.error
    L3_2 = "no gang named "
    L4_2 = A0_2
    L5_2 = " was found!"
    L3_2 = L3_2 .. L4_2 .. L5_2
    return L2_2(L3_2)
  end
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2.loyalty
  L3_2 = L3_2 + A1_2
  L2_2.loyalty = L3_2
  L2_2 = MySQL
  L2_2 = L2_2.update
  L3_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
  L4_2 = {}
  L5_2 = gangs
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.loyalty
  L6_2 = A0_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
  L2_2 = TriggerClientEvent
  L3_2 = "rm_gangs:client:updateLoyalty"
  L4_2 = -1
  L5_2 = {}
  L5_2.gangName = A0_2
  L6_2 = gangs
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.loyalty
  L5_2.newPoint = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "removeLoyalty"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.error
    L3_2 = "no gang named "
    L4_2 = A0_2
    L5_2 = " was found!"
    L3_2 = L3_2 .. L4_2 .. L5_2
    return L2_2(L3_2)
  end
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2.loyalty
  L3_2 = L3_2 - A1_2
  L2_2.loyalty = L3_2
  L2_2 = MySQL
  L2_2 = L2_2.update
  L3_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
  L4_2 = {}
  L5_2 = gangs
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.loyalty
  L6_2 = A0_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
  L2_2 = TriggerClientEvent
  L3_2 = "rm_gangs:client:updateLoyalty"
  L4_2 = -1
  L5_2 = {}
  L5_2.gangName = A0_2
  L6_2 = gangs
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.loyalty
  L5_2.newPoint = L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
