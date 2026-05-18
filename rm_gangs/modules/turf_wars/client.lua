local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:startTurfWar"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = playerGang
  if not L0_2 then
    return
  end
  L0_2 = currentZone
  if L0_2 then
    L0_2 = currentZone
    L0_2 = L0_2.type
    if "gang" == L0_2 then
      goto lbl_20
    end
  end
  L0_2 = notify
  L1_2 = locale
  L2_2 = "need_to_be_in_enemy_territory"
  L1_2 = L1_2(L2_2)
  L2_2 = "error"
  do return L0_2(L1_2, L2_2) end
  goto lbl_39
  ::lbl_20::
  L0_2 = currentZone
  L0_2 = L0_2.name
  L1_2 = playerGang
  L1_2 = L1_2.name
  if L0_2 == L1_2 then
    L0_2 = notify
    L1_2 = locale
    L2_2 = "cannot_start_turf_again_own_group"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    return L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerServerEvent
    L1_2 = "rm_gangs:server:startTurfWar"
    L2_2 = currentZone
    L2_2 = L2_2.name
    L0_2(L1_2, L2_2)
  end
  ::lbl_39::
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onTurfWarStarted"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.id
  L4_2.id = L5_2
  L5_2 = A0_2.initiatorName
  L4_2.initiator = L5_2
  L5_2 = A0_2.targetName
  L4_2.target = L5_2
  L4_2.initiatorPersonCount = 0
  L4_2.targetPersonCount = 0
  L5_2 = A0_2.declareDate
  L4_2.declareDate = L5_2
  L5_2 = A0_2.startDate
  L4_2.startDate = L5_2
  L5_2 = A0_2.finishDate
  L4_2.finishDate = L5_2
  L3_2.turfWar = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
  L1_2 = gangs
  L2_2 = A0_2.targetName
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.id
  L1_2._turfWarId = L2_2
  L1_2 = currentZone
  if L1_2 then
    L1_2 = L1_2.type
  end
  if "gang" == L1_2 then
    L1_2 = currentZone
    if L1_2 then
      L1_2 = L1_2.name
    end
    L2_2 = A0_2.targetName
    if L1_2 == L2_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "turfEventScoreboard"
      L3_2 = A0_2.id
      L2_2.data = L3_2
      L1_2(L2_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:updateTurfWar"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "update"
  L4_2 = {}
  L4_2.turfWar = A1_2
  L3_2.data = L4_2
  L2_2(L3_2)
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  L3_2 = A1_2.id
  L2_2._turfWarId = L3_2
  L2_2 = currentZone
  if L2_2 then
    L2_2 = L2_2.type
  end
  if "gang" == L2_2 then
    L2_2 = currentZone
    if L2_2 then
      L2_2 = L2_2.name
    end
    if L2_2 == A0_2 then
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "turfEventScoreboard"
      L4_2 = A1_2.id
      L3_2.data = L4_2
      L2_2(L3_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onTurfWarFinished"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.id
  L4_2.id = L5_2
  L5_2 = A0_2.initiatorName
  L4_2.initiator = L5_2
  L5_2 = A0_2.targetName
  L4_2.target = L5_2
  L5_2 = A0_2.initiatorPersonCount
  L4_2.initiatorPersonCount = L5_2
  L5_2 = A0_2.targetPersonCount
  L4_2.targetPersonCount = L5_2
  L5_2 = A0_2.successful
  L4_2.successful = L5_2
  L5_2 = A0_2.declareDate
  L4_2.declareDate = L5_2
  L5_2 = A0_2.startDate
  L4_2.startDate = L5_2
  L5_2 = A0_2.finishDate
  L4_2.finishDate = L5_2
  L3_2.turfWar = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.initiatorName
  L4_2.gangName = L5_2
  L5_2 = A0_2.initiatorNewLoyalty
  L4_2.newPoint = L5_2
  L3_2.loyalty = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.targetName
  L4_2.gangName = L5_2
  L5_2 = A0_2.targetNewLoyalty
  L4_2.newPoint = L5_2
  L3_2.loyalty = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
  L1_2 = gangs
  L2_2 = A0_2.targetName
  L1_2 = L1_2[L2_2]
  L1_2._turfWarId = nil
  L1_2 = currentZone
  if L1_2 then
    L1_2 = L1_2.type
  end
  if "gang" == L1_2 then
    L1_2 = currentZone
    if L1_2 then
      L1_2 = L1_2.name
    end
    L2_2 = A0_2.targetName
    if L1_2 == L2_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "turfEventScoreboard"
      L2_2.data = nil
      L1_2(L2_2)
    end
  end
end
L0_1(L1_1, L2_1)
