local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
initialized = nil
nuiOpened = L3_1
playerData = L2_1
playerGang = L1_1
currentZone = L0_1
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:playerLoaded"
L0_1(L1_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:playerUnloaded"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rm_gangs:client:playerLoaded"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A1_2.gang
  playerGang = L2_2
  L2_2 = A1_2.player
  playerData = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2.gangs
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = #L2_2
    L10_2 = L10_2 + 1
    L11_2 = {}
    L11_2.name = L8_2
    L12_2 = L9_2.label
    L11_2.label = L12_2
    L12_2 = L9_2.logoURL
    L11_2.logoURL = L12_2
    L12_2 = L9_2.color
    L11_2.color = L12_2
    L12_2 = L9_2.money
    L11_2.money = L12_2
    L12_2 = L9_2.territory
    L11_2.territory = L12_2
    L12_2 = L9_2.loyalty
    if not L12_2 then
      L12_2 = 0
    end
    L11_2.loyalty = L12_2
    L2_2[L10_2] = L11_2
  end
  L4_2 = pairs
  L5_2 = A0_2.tributeZones
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = #L3_2
    L10_2 = L10_2 + 1
    L11_2 = {}
    L11_2.name = L8_2
    L12_2 = L9_2.label
    L11_2.label = L12_2
    L12_2 = L9_2.territory
    L11_2.territory = L12_2
    L12_2 = L9_2.captureTimerLabel
    L11_2.captureTimerLabel = L12_2
    L12_2 = L9_2.paymentAmount
    L11_2.paymentAmount = L12_2
    L12_2 = L9_2.owner
    L11_2.owner = L12_2
    L12_2 = L9_2.captureDate
    L11_2.captureDate = L12_2
    L12_2 = L9_2.paymentResetTime
    L11_2.paymentResetTime = L12_2
    L3_2[L10_2] = L11_2
  end
  L4_2 = lib
  L4_2 = L4_2.getLocales
  L4_2 = L4_2()
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L13_2 = L10_2
    L12_2 = L10_2.find
    L14_2 = "ui."
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L13_2 = L10_2
      L12_2 = L10_2.gsub
      L14_2 = "ui%."
      L15_2 = ""
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L5_2[L12_2] = L11_2
    end
  end
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.action = "setup"
  L8_2 = {}
  L9_2 = {}
  L10_2 = cfg
  L10_2 = L10_2.tributePaymentInterval
  L9_2.tributePaymentInterval = L10_2
  L10_2 = cfg
  L10_2 = L10_2.turfWarLoyalty
  L9_2.turfWarLoyalty = L10_2
  L10_2 = cfg
  L10_2 = L10_2.warLoyaltyPerKill
  L9_2.warLoyaltyPerKill = L10_2
  L10_2 = cfg
  L10_2 = L10_2.showEventNotificationsToEveryone
  L9_2.showEventNotificationsToEveryone = L10_2
  L10_2 = cfg
  L10_2 = L10_2.locationInfoTimer
  L9_2.locationInfoTimer = L10_2
  L10_2 = cfg
  L10_2 = L10_2.warMinWager
  L9_2.warMinWager = L10_2
  L10_2 = cfg
  L10_2 = L10_2.warMaxWager
  L9_2.warMaxWager = L10_2
  L10_2 = cfg
  L10_2 = L10_2.warMinKillGoal
  L9_2.warMinKillGoal = L10_2
  L10_2 = cfg
  L10_2 = L10_2.warMaxKillGoal
  L9_2.warMaxKillGoal = L10_2
  L10_2 = cfg
  L10_2 = L10_2.locationInfoPosition
  L9_2.locationInfoPosition = L10_2
  L10_2 = cfg
  L10_2 = L10_2.notificationPosition
  L9_2.notificationPosition = L10_2
  L10_2 = cfg
  L10_2 = L10_2.notificationPositionWhenInterfaceOpened
  L9_2.notificationPositionWhenInterfaceOpened = L10_2
  L10_2 = cfg
  L10_2 = L10_2.tributeScoreboardPosition
  L9_2.tributeScoreboardPosition = L10_2
  L10_2 = cfg
  L10_2 = L10_2.turfScoreboardPosition
  L9_2.turfScoreboardPosition = L10_2
  L10_2 = cfg
  L10_2 = L10_2.warFeedPosition
  L9_2.warFeedPosition = L10_2
  L8_2.cfg = L9_2
  L8_2.locales = L5_2
  L8_2.gangs = L2_2
  L8_2.tributeZones = L3_2
  L9_2 = A0_2.wars
  L8_2.wars = L9_2
  L9_2 = A0_2.turfWars
  L8_2.turfWars = L9_2
  L7_2.data = L8_2
  L6_2(L7_2)
  initialized = true
  L6_2 = lib
  L6_2 = L6_2.print
  L6_2 = L6_2.info
  L7_2 = "initialized"
  L6_2(L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "rm_gangs:client:playerUnloaded"
function L2_1()
  local L0_2, L1_2
  initialized = nil
  playerGang = nil
  playerData = nil
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "unload"
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "setOnGPS"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SetNewWaypoint
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:openInterface"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = initialized
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 10
    L0_2(L1_2)
  end
  L0_2 = GetEntityCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "open"
  L3_2 = {}
  L4_2 = {}
  L5_2 = playerData
  L5_2 = L5_2.name
  L4_2.name = L5_2
  L5_2 = playerData
  L5_2 = L5_2.citizenId
  L4_2.citizenId = L5_2
  L5_2 = cache
  L5_2 = L5_2.serverId
  L4_2.serverId = L5_2
  L5_2 = vec2
  L6_2 = L0_2.x
  L7_2 = L0_2.y
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.coord = L5_2
  L5_2 = playerGang
  L4_2.gang = L5_2
  L3_2.player = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
  nuiOpened = true
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "nuiClosed"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  nuiOpened = false
end
L0_1(L1_1, L2_1)
L0_1 = false
L1_1 = cfg
L1_1 = L1_1.deathCooldown
if not L1_1 then
  L1_1 = 30
end
L1_1 = L1_1 * 1000
L2_1 = AddEventHandler
L3_1 = "gameEventTriggered"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if "CEventNetworkEntityDamage" ~= A0_2 then
    return
  end
  L2_2 = A1_2[1]
  L3_2 = A1_2[2]
  L4_2 = A1_2[4]
  L5_2 = IsPedAPlayer
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = NetworkGetPlayerIndexFromPed
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L6_2 = cache
    L6_2 = L6_2.playerId
    if L5_2 == L6_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L5_2 = L0_1
  if L5_2 then
    return
  end
  if L4_2 then
    L5_2 = IsPedDeadOrDying
    L6_2 = L2_2
    L7_2 = true
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = Wait
      L6_2 = 500
      L5_2(L6_2)
      L5_2 = TriggerServerEvent
      L6_2 = "rm_gangs:server:onPlayerDead"
      L7_2 = GetPlayerServerId
      L8_2 = NetworkGetPlayerIndexFromPed
      L9_2 = L3_2
      L8_2, L9_2 = L8_2(L9_2)
      L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = true
      L0_1 = L5_2
      L5_2 = SetTimeout
      L6_2 = L1_1
      function L7_2()
        local L0_3, L1_3
        L0_3 = nil
        L0_1 = L0_3
      end
      L5_2(L6_2, L7_2)
    end
  end
end
L2_1(L3_1, L4_1)
