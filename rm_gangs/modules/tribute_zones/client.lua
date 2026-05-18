local L0_1, L1_1, L2_1
L0_1 = {}
tributeZones = L0_1
L0_1 = AddEventHandler
L1_1 = "rm_gangs:client:playerLoaded"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = pairs
  L2_2 = A0_2.tributeZones
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tributeZones
    L8_2 = {}
    L8_2.name = L5_2
    L9_2 = L6_2.label
    L8_2.label = L9_2
    L9_2 = L6_2.territory
    L8_2.territory = L9_2
    L9_2 = L6_2.paymentAmount
    L8_2.paymentAmount = L9_2
    L9_2 = L6_2.captureTimerLabel
    L8_2.captureTimerLabel = L9_2
    L9_2 = L6_2.owner
    L8_2.owner = L9_2
    L9_2 = L6_2.captureDate
    L8_2.captureDate = L9_2
    L9_2 = L6_2.paymentResetTime
    L8_2.paymentResetTime = L9_2
    L9_2 = L6_2._captureEventData
    L8_2._captureEventData = L9_2
    L7_2[L5_2] = L8_2
    L7_2 = lib
    L7_2 = L7_2.requestModel
    L8_2 = L6_2.npc
    L8_2 = L8_2.model
    L7_2(L8_2)
    L7_2 = tributeZones
    L7_2 = L7_2[L5_2]
    L8_2 = CreatePed
    L9_2 = 0
    L10_2 = L6_2.npc
    L10_2 = L10_2.model
    L11_2 = L6_2.npc
    L11_2 = L11_2.coord
    L11_2 = L11_2.x
    L12_2 = L6_2.npc
    L12_2 = L12_2.coord
    L12_2 = L12_2.y
    L13_2 = L6_2.npc
    L13_2 = L13_2.coord
    L13_2 = L13_2.z
    L13_2 = L13_2 - 0.96
    L14_2 = L6_2.npc
    L14_2 = L14_2.coord
    L14_2 = L14_2.w
    L15_2 = false
    L16_2 = true
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2.npc = L8_2
    L7_2 = SetEntityInvincible
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.npc
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = FreezeEntityPosition
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.npc
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = SetBlockingOfNonTemporaryEvents
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.npc
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = SetEntityInvincible
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.npc
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = TaskStartScenarioInPlace
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.npc
    L9_2 = "WORLD_HUMAN_AA_COFFEE"
    L10_2 = 0
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetModelAsNoLongerNeeded
    L8_2 = L6_2.npc
    L8_2 = L8_2.model
    L7_2(L8_2)
    L7_2 = addLocalEntity
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.npc
    L9_2 = {}
    L10_2 = locale
    L11_2 = "collect_tribute"
    L10_2 = L10_2(L11_2)
    L9_2.label = L10_2
    L9_2.distance = 1.5
    L9_2.icon = "fa-solid fa-hand-holding-dollar"
    function L10_2()
      local L0_3, L1_3
      L0_3 = playerGang
      if L0_3 then
        L0_3 = tributeZones
        L1_3 = L5_2
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.owner
        L1_3 = playerGang
        L1_3 = L1_3.name
        if L0_3 == L1_3 then
          goto lbl_14
        end
      end
      L0_3 = false
      do return L0_3 end
      ::lbl_14::
      L0_3 = true
      return L0_3
    end
    L9_2.canInteract = L10_2
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerServerEvent
      L1_3 = "rm_gangs:server:getTributePayment"
      L2_3 = L5_2
      L0_3(L1_3, L2_3)
    end
    L9_2.onSelect = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.clone
    L8_2 = L6_2.territory
    L7_2 = L7_2(L8_2)
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = {}
      L0_3.type = "tributeZone"
      L1_3 = L5_2
      L0_3.name = L1_3
      currentZone = L0_3
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "locationInfo"
      L2_3 = currentZone
      L1_3.data = L2_3
      L0_3(L1_3)
      L0_3 = A0_2.gangs
      L1_3 = playerGang
      L1_3 = L1_3.name
      L0_3 = L0_3[L1_3]
      if L0_3 then
        L0_3 = tributeZones
        L1_3 = L5_2
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3._captureEventData
        if L0_3 then
          L0_3 = SendNUIMessage
          L1_3 = {}
          L1_3.action = "tributeEventScoreboard"
          L2_3 = tributeZones
          L3_3 = L5_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3._captureEventData
          L1_3.data = L2_3
          L0_3(L1_3)
        end
      end
    end
    L7_2.onEnter = L8_2
    function L8_2()
      local L0_3, L1_3
      currentZone = nil
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "locationInfo"
      L1_3.data = nil
      L0_3(L1_3)
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "tributeEventScoreboard"
      L1_3.data = nil
      L0_3(L1_3)
    end
    L7_2.onExit = L8_2
    L8_2 = cfg
    L8_2 = L8_2.debug
    if not L8_2 then
      L8_2 = L7_2.debug
    end
    L7_2.debug = L8_2
    L8_2 = tributeZones
    L8_2 = L8_2[L5_2]
    L9_2 = lib
    L9_2 = L9_2.zones
    L9_2 = L9_2.poly
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L8_2.zone = L9_2
  end
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "rm_gangs:client:playerUnloaded"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = tributeZones
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = tributeZones
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.npc
    L6_2(L7_2)
    L6_2 = L5_2.zone
    if L6_2 then
      L6_2 = L5_2.zone
      L7_2 = L6_2
      L6_2 = L6_2.remove
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  tributeZones = L0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:updateTribute"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.name
  if L1_2 then
    L1_2 = tributeZones
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L3_2.tributeZone = A0_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onTributeEventStarted"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.name
  if L1_2 then
    L1_2 = tributeZones
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = tributeZones
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L1_2.owner = nil
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.name
  L4_2.name = L5_2
  L4_2.owner = nil
  L3_2.tributeZone = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = A0_2.finishDate
  L1_2.finishDate = L2_2
  L2_2 = {}
  L1_2.points = L2_2
  L2_2 = A0_2.label
  L1_2.zoneLabel = L2_2
  L2_2 = tributeZones
  L3_2 = A0_2.name
  L2_2 = L2_2[L3_2]
  L2_2._captureEventData = L1_2
  L2_2 = gangs
  L3_2 = playerGang
  L3_2 = L3_2.name
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = currentZone
    if L2_2 then
      L2_2 = L2_2.type
    end
    if "tributeZone" == L2_2 then
      L2_2 = currentZone
      if L2_2 then
        L2_2 = L2_2.name
      end
      L3_2 = A0_2.name
      if L2_2 == L3_2 then
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "tributeEventScoreboard"
        L3_2.data = L1_2
        L2_2(L3_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:updateCaptureEvent"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = tributeZones
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = tributeZones
  L2_2 = L2_2[A0_2]
  L2_2._captureEventData = A1_2
  L2_2 = gangs
  L3_2 = playerGang
  L3_2 = L3_2.name
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = currentZone
    if L2_2 then
      L2_2 = L2_2.type
    end
    if "tributeZone" == L2_2 then
      L2_2 = currentZone
      if L2_2 then
        L2_2 = L2_2.name
      end
      if L2_2 == A0_2 then
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "tributeEventScoreboard"
        L3_2.data = A1_2
        L2_2(L3_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onTributeEventFinished"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.name
  if L1_2 then
    L1_2 = tributeZones
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = tributeZones
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.ownerName
  L1_2.owner = L2_2
  L1_2 = A0_2.ownerName
  if L1_2 then
    L1_2 = A0_2.captureDate
    if L1_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "update"
      L3_2 = {}
      L4_2 = {}
      L5_2 = A0_2.name
      L4_2.name = L5_2
      L5_2 = A0_2.ownerName
      L4_2.owner = L5_2
      L5_2 = A0_2.captureDate
      L4_2.captureDate = L5_2
      L3_2.tributeZone = L4_2
      L2_2.data = L3_2
      L1_2(L2_2)
    end
  end
  L1_2 = tributeZones
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L1_2._captureEventData = nil
  L1_2 = currentZone
  if L1_2 then
    L1_2 = L1_2.type
  end
  if "tributeZone" == L1_2 then
    L1_2 = currentZone
    if L1_2 then
      L1_2 = L1_2.name
    end
    L2_2 = A0_2.name
    if L1_2 == L2_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "tributeEventScoreboard"
      L2_2.data = nil
      L1_2(L2_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:openManuelTributeStartMenu"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = {}
    L8_2 = A0_2[L5_2]
    L8_2 = L8_2.name
    L7_2.value = L8_2
    L8_2 = A0_2[L5_2]
    L8_2 = L8_2.label
    L9_2 = " | "
    L10_2 = locale
    L11_2 = "ui.$"
    L10_2 = L10_2(L11_2)
    L11_2 = A0_2[L5_2]
    L11_2 = L11_2.paymentAmount
    L12_2 = " "
    L13_2 = A0_2[L5_2]
    L13_2 = L13_2.started
    if L13_2 then
      L13_2 = "| "
      L14_2 = locale
      L15_2 = "already_started"
      L14_2 = L14_2(L15_2)
      L13_2 = L13_2 .. L14_2
      if L13_2 then
        goto lbl_36
      end
    end
    L13_2 = ""
    ::lbl_36::
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L7_2.label = L8_2
    L1_2[L6_2] = L7_2
  end
  L2_2 = lib
  L2_2 = L2_2.inputDialog
  L3_2 = locale
  L4_2 = "choose_a_tribute_zone"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = {}
  L5_2.type = "select"
  L6_2 = locale
  L7_2 = "zones"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L6_2 = locale
  L7_2 = "tribute_manuel_warning"
  L6_2 = L6_2(L7_2)
  L5_2.description = L6_2
  L5_2.options = L1_2
  L5_2.clearable = true
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2[1]
    if L3_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "rm_gangs:server:manuelTributeStart"
      L5_2 = L2_2[1]
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "getCurrentTributeZone"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = currentZone
  if L0_2 then
    L0_2 = currentZone
    L0_2 = L0_2.type
    if "tributeZone" == L0_2 then
      L0_2 = tributeZones
      L1_2 = currentZone
      L1_2 = L1_2.name
      L0_2 = L0_2[L1_2]
      if L0_2 then
        L0_2 = currentZone
        L0_2 = L0_2.name
        L1_2 = tributeZones
        L1_2 = L1_2[L0_2]
        L2_2 = {}
        L2_2.name = L0_2
        L3_2 = L1_2.label
        L2_2.label = L3_2
        L3_2 = L1_2.paymentAmount
        L2_2.paymentAmount = L3_2
        L3_2 = L1_2.territory
        L2_2.territory = L3_2
        L3_2 = L1_2.owner
        L2_2.owner = L3_2
        L3_2 = L1_2.captureDate
        L2_2.captureDate = L3_2
        L3_2 = L1_2.captureTimerLabel
        L2_2.captureTimerLabel = L3_2
        L3_2 = L1_2.paymentResetTime
        L2_2.paymentResetTime = L3_2
        return L2_2
    end
  end
  else
    L0_2 = nil
    return L0_2
  end
end
L0_1(L1_1, L2_1)
