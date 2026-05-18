local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
turfWars = L0_1
L0_1 = nil
L1_1 = MySQL
L1_1 = L1_1.ready
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "DELETE FROM rm_gangs_turf_wars WHERE finishDate < (NOW() - INTERVAL 1 MONTH)"
  L0_2(L1_2)
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L0_2 = L0_2 * 1000
  L1_2 = MySQL
  L1_2 = L1_2.query
  L1_2 = L1_2.await
  L2_2 = "SELECT * FROM rm_gangs_turf_wars"
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = turfWars
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.successful
    if L7_2 then
      L7_2 = turfWars
      L8_2 = L1_2[L5_2]
      L7_2[L6_2] = L8_2
      L7_2 = turfWars
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.successful
      if 1 == L7_2 then
        L7_2 = turfWars
        L7_2 = L7_2[L6_2]
        L7_2.successful = true
      else
        L7_2 = turfWars
        L7_2 = L7_2[L6_2]
        L7_2.successful = false
      end
    else
      L7_2 = MySQL
      L7_2 = L7_2.query
      L8_2 = "DELETE FROM rm_gangs_turf_wars WHERE id = ?"
      L9_2 = {}
      L10_2 = L1_2[L5_2]
      L10_2 = L10_2.id
      L9_2[1] = L10_2
      L7_2(L8_2, L9_2)
    end
  end
end
L1_1(L2_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:startTurfWar"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = source
  L2_2 = L0_1
  if L2_2 then
    L2_2 = notify
    L3_2 = L1_2
    L4_2 = locale
    L5_2 = "cannot_create_turf_when_ongoing"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = gangs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = getOnlineGangMembers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = cfg
  L3_2 = L3_2.turfWarRequiredTargetMemberCount
  L4_2 = #L2_2
  if L3_2 > L4_2 then
    L3_2 = notify
    L4_2 = L1_2
    L5_2 = locale
    L6_2 = "cannot_create_turf_not_enough_target_member"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = getPlayerGang
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = gangs
  L5_2 = L3_2
  if L5_2 then
    L5_2 = L5_2.name
  end
  L4_2 = L4_2[L5_2]
  if not L4_2 then
    return
  end
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L4_2 = L4_2 * 1000
  L5_2 = cfg
  L5_2 = L5_2.turfWarStartDelay
  L5_2 = L5_2 * 60
  L5_2 = L5_2 * 1000
  L5_2 = L4_2 + L5_2
  L6_2 = cfg
  L6_2 = L6_2.turfWarDuration
  L6_2 = L6_2 * 60
  L6_2 = L6_2 * 1000
  L6_2 = L5_2 + L6_2
  L7_2 = turfWars
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L8_2 = turfWars
  L9_2 = {}
  L10_2 = L3_2.name
  L9_2.initiator = L10_2
  L9_2.target = A0_2
  L9_2.initiatorPersonCount = 0
  L9_2.targetPersonCount = 0
  L9_2.declareDate = L4_2
  L9_2.startDate = L5_2
  L9_2.finishDate = L6_2
  L8_2[L7_2] = L9_2
  L8_2 = turfWars
  L8_2 = L8_2[L7_2]
  L9_2 = MySQL
  L9_2 = L9_2.insert
  L9_2 = L9_2.await
  L10_2 = "INSERT INTO rm_gangs_turf_wars (initiator, target, declareDate, startDate, finishDate) VALUES (?, ?, FROM_UNIXTIME(?), FROM_UNIXTIME(?), FROM_UNIXTIME(?))"
  L11_2 = {}
  L12_2 = turfWars
  L12_2 = L12_2[L7_2]
  L12_2 = L12_2.initiator
  L13_2 = turfWars
  L13_2 = L13_2[L7_2]
  L13_2 = L13_2.target
  L14_2 = turfWars
  L14_2 = L14_2[L7_2]
  L14_2 = L14_2.declareDate
  L14_2 = L14_2 / 1000
  L15_2 = turfWars
  L15_2 = L15_2[L7_2]
  L15_2 = L15_2.startDate
  L15_2 = L15_2 / 1000
  L16_2 = turfWars
  L16_2 = L16_2[L7_2]
  L16_2 = L16_2.finishDate
  L16_2 = L16_2 / 1000
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.id = L9_2
  L8_2 = {}
  L8_2.idx = L7_2
  L0_1 = L8_2
  L8_2 = gangs
  L8_2 = L8_2[A0_2]
  L9_2 = turfWars
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.id
  L8_2._turfWarId = L9_2
  L8_2 = {}
  L9_2 = turfWars
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.id
  L8_2.id = L9_2
  L9_2 = L3_2.name
  L8_2.initiatorName = L9_2
  L9_2 = L3_2.label
  L8_2.initiatorLabel = L9_2
  L8_2.targetName = A0_2
  L9_2 = gangs
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.label
  L8_2.targetLabel = L9_2
  L9_2 = turfWars
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.declareDate
  L8_2.declareDate = L9_2
  L9_2 = turfWars
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.startDate
  L8_2.startDate = L9_2
  L9_2 = turfWars
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.finishDate
  L8_2.finishDate = L9_2
  L9_2 = TriggerEvent
  L10_2 = "rm_gangs:server:onTurfWarStarted"
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = TriggerClientEvent
  L10_2 = "rm_gangs:client:onTurfWarStarted"
  L11_2 = -1
  L12_2 = L8_2
  L9_2(L10_2, L11_2, L12_2)
  while true do
    L9_2 = os
    L9_2 = L9_2.time
    L9_2 = L9_2()
    L9_2 = L9_2 * 1000
    L10_2 = turfWars
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.startDate
    if not (L9_2 < L10_2) then
      break
    end
    L9_2 = Wait
    L10_2 = 10000
    L9_2(L10_2)
  end
  L9_2 = turfWars
  L9_2 = L9_2[L7_2]
  L9_2.started = true
  L9_2 = lib
  L9_2 = L9_2.table
  L9_2 = L9_2.deepclone
  L10_2 = gangs
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2.territory
  L9_2 = L9_2(L10_2)
  L10_2 = lib
  L10_2 = L10_2.zones
  L10_2 = L10_2.poly
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L0_1.zone = L10_2
  while true do
    L10_2 = os
    L10_2 = L10_2.time
    L10_2 = L10_2()
    L10_2 = L10_2 * 1000
    L11_2 = turfWars
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.finishDate
    if not (L10_2 < L11_2) then
      break
    end
    L10_2 = turfWars
    L10_2 = L10_2[L7_2]
    L10_2.initiatorPersonCount = 0
    L10_2 = turfWars
    L10_2 = L10_2[L7_2]
    L10_2.targetPersonCount = 0
    L10_2 = getOnlineGangMembers
    L10_2 = L10_2()
    L11_2 = 1
    L12_2 = #L10_2
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = L10_2[L14_2]
      L16_2 = isPlayerAlive
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L16_2 = getPlayerGang
        L17_2 = L15_2
        L16_2 = L16_2(L17_2)
        L17_2 = L16_2.name
        if L17_2 == A0_2 then
          L17_2 = GetPlayerPed
          L18_2 = L15_2
          L17_2 = L17_2(L18_2)
          L18_2 = GetEntityCoords
          L19_2 = L17_2
          L18_2 = L18_2(L19_2)
          L19_2 = L0_1.zone
          L20_2 = L19_2
          L19_2 = L19_2.contains
          L21_2 = L18_2
          L19_2 = L19_2(L20_2, L21_2)
          if L19_2 then
            L19_2 = turfWars
            L19_2 = L19_2[L7_2]
            L20_2 = L19_2.targetPersonCount
            L20_2 = L20_2 + 1
            L19_2.targetPersonCount = L20_2
          end
        else
          L17_2 = L16_2.name
          L18_2 = L3_2.name
          if L17_2 == L18_2 then
            L17_2 = GetPlayerPed
            L18_2 = L15_2
            L17_2 = L17_2(L18_2)
            L18_2 = GetEntityCoords
            L19_2 = L17_2
            L18_2 = L18_2(L19_2)
            L19_2 = L0_1.zone
            L20_2 = L19_2
            L19_2 = L19_2.contains
            L21_2 = L18_2
            L19_2 = L19_2(L20_2, L21_2)
            if L19_2 then
              L19_2 = turfWars
              L19_2 = L19_2[L7_2]
              L20_2 = L19_2.initiatorPersonCount
              L20_2 = L20_2 + 1
              L19_2.initiatorPersonCount = L20_2
            end
          end
        end
      end
    end
    L11_2 = TriggerClientEvent
    L12_2 = "rm_gangs:client:updateTurfWar"
    L13_2 = -1
    L14_2 = A0_2
    L15_2 = turfWars
    L15_2 = L15_2[L7_2]
    L11_2(L12_2, L13_2, L14_2, L15_2)
    L11_2 = Wait
    L12_2 = 10000
    L11_2(L12_2)
  end
  L10_2 = turfWars
  L10_2 = L10_2[L7_2]
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.targetPersonCount
  L12_2 = turfWars
  L12_2 = L12_2[L7_2]
  L12_2 = L12_2.initiatorPersonCount
  L11_2 = L11_2 < L12_2
  L10_2.successful = L11_2
  L10_2 = turfWars
  L10_2 = L10_2[L7_2]
  L10_2 = L10_2.successful
  if L10_2 then
    L10_2 = gangs
    L11_2 = L3_2.name
    L10_2 = L10_2[L11_2]
    L11_2 = L10_2.loyalty
    L12_2 = cfg
    L12_2 = L12_2.turfWarLoyalty
    L11_2 = L11_2 + L12_2
    L10_2.loyalty = L11_2
    L10_2 = gangs
    L10_2 = L10_2[A0_2]
    L11_2 = L10_2.loyalty
    L12_2 = cfg
    L12_2 = L12_2.turfWarLoyalty
    L11_2 = L11_2 - L12_2
    L10_2.loyalty = L11_2
  else
    L10_2 = gangs
    L11_2 = L3_2.name
    L10_2 = L10_2[L11_2]
    L11_2 = L10_2.loyalty
    L12_2 = cfg
    L12_2 = L12_2.turfWarLoyalty
    L11_2 = L11_2 - L12_2
    L10_2.loyalty = L11_2
    L10_2 = gangs
    L10_2 = L10_2[A0_2]
    L11_2 = L10_2.loyalty
    L12_2 = cfg
    L12_2 = L12_2.turfWarLoyalty
    L11_2 = L11_2 + L12_2
    L10_2.loyalty = L11_2
  end
  L10_2 = MySQL
  L10_2 = L10_2.update
  L11_2 = "UPDATE rm_gangs_turf_wars SET successful = ?, initiatorPersonCount = ?, targetPersonCount = ? WHERE id = ?"
  L12_2 = {}
  L13_2 = turfWars
  L13_2 = L13_2[L7_2]
  L13_2 = L13_2.successful
  if L13_2 then
    L13_2 = 1
    if L13_2 then
      goto lbl_345
    end
  end
  L13_2 = 0
  ::lbl_345::
  L14_2 = turfWars
  L14_2 = L14_2[L7_2]
  L14_2 = L14_2.initiatorPersonCount
  L15_2 = turfWars
  L15_2 = L15_2[L7_2]
  L15_2 = L15_2.targetPersonCount
  L16_2 = turfWars
  L16_2 = L16_2[L7_2]
  L16_2 = L16_2.id
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L10_2(L11_2, L12_2)
  L10_2 = MySQL
  L10_2 = L10_2.update
  L11_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
  L12_2 = {}
  L13_2 = gangs
  L14_2 = L3_2.name
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.loyalty
  L14_2 = L3_2.name
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L10_2(L11_2, L12_2)
  L10_2 = MySQL
  L10_2 = L10_2.update
  L11_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
  L12_2 = {}
  L13_2 = gangs
  L13_2 = L13_2[A0_2]
  L13_2 = L13_2.loyalty
  L14_2 = A0_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L10_2(L11_2, L12_2)
  L10_2 = {}
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.id
  L10_2.id = L11_2
  L11_2 = L3_2.name
  L10_2.initiatorName = L11_2
  L11_2 = L3_2.label
  L10_2.initiatorLabel = L11_2
  L11_2 = gangs
  L12_2 = L3_2.name
  L11_2 = L11_2[L12_2]
  L11_2 = L11_2.loyalty
  L10_2.initiatorNewLoyalty = L11_2
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.initiatorPersonCount
  L10_2.initiatorPersonCount = L11_2
  L10_2.targetName = A0_2
  L11_2 = gangs
  L11_2 = L11_2[A0_2]
  L11_2 = L11_2.label
  L10_2.targetLabel = L11_2
  L11_2 = gangs
  L11_2 = L11_2[A0_2]
  L11_2 = L11_2.loyalty
  L10_2.targetNewLoyalty = L11_2
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.targetPersonCount
  L10_2.targetPersonCount = L11_2
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.successful
  L10_2.successful = L11_2
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.declareDate
  L10_2.declareDate = L11_2
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.startDate
  L10_2.startDate = L11_2
  L11_2 = turfWars
  L11_2 = L11_2[L7_2]
  L11_2 = L11_2.finishDate
  L10_2.finishDate = L11_2
  L11_2 = TriggerEvent
  L12_2 = "rm_gangs:server:onTurfWarFinished"
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = TriggerClientEvent
  L12_2 = "rm_gangs:client:onTurfWarFinished"
  L13_2 = -1
  L14_2 = L10_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = L0_1.zone
  L12_2 = L11_2
  L11_2 = L11_2.remove
  L11_2(L12_2)
  L11_2 = nil
  L0_1 = L11_2
  L11_2 = gangs
  L11_2 = L11_2[A0_2]
  L11_2._turfWarId = nil
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:onPlayerDead"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L0_1.idx
    L2_2 = L0_1.zone
    L3_2 = turfWars
    L3_2 = L3_2[L1_2]
    L3_2.initiatorPersonCount = 0
    L3_2 = turfWars
    L3_2 = L3_2[L1_2]
    L3_2.targetPersonCount = 0
    L3_2 = getOnlineGangMembers
    L3_2 = L3_2()
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L9_2 = isPlayerAlive
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = getPlayerGang
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2.name
        L11_2 = turfWars
        L11_2 = L11_2[L1_2]
        L11_2 = L11_2.target
        if L10_2 == L11_2 then
          L10_2 = GetPlayerPed
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L11_2 = GetEntityCoords
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L13_2 = L2_2
          L12_2 = L2_2.contains
          L14_2 = L11_2
          L12_2 = L12_2(L13_2, L14_2)
          if L12_2 then
            L12_2 = turfWars
            L12_2 = L12_2[L1_2]
            L13_2 = L12_2.targetPersonCount
            L13_2 = L13_2 + 1
            L12_2.targetPersonCount = L13_2
          end
        else
          L10_2 = L9_2.name
          L11_2 = turfWars
          L11_2 = L11_2[L1_2]
          L11_2 = L11_2.initiator
          if L10_2 == L11_2 then
            L10_2 = GetPlayerPed
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            L11_2 = GetEntityCoords
            L12_2 = L10_2
            L11_2 = L11_2(L12_2)
            L13_2 = L2_2
            L12_2 = L2_2.contains
            L14_2 = L11_2
            L12_2 = L12_2(L13_2, L14_2)
            if L12_2 then
              L12_2 = turfWars
              L12_2 = L12_2[L1_2]
              L13_2 = L12_2.initiatorPersonCount
              L13_2 = L13_2 + 1
              L12_2.initiatorPersonCount = L13_2
            end
          end
        end
      end
    end
    L4_2 = TriggerClientEvent
    L5_2 = "rm_gangs:client:updateTurfWar"
    L6_2 = -1
    L7_2 = turfWars
    L7_2 = L7_2[L1_2]
    L7_2 = L7_2.target
    L8_2 = turfWars
    L8_2 = L8_2[L1_2]
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L1_1(L2_1, L3_1)
