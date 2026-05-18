local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
wars = L0_1
L0_1 = {}
L1_1 = MySQL
L1_1 = L1_1.ready
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "DELETE FROM rm_gangs_wars WHERE declareDate < (NOW() - INTERVAL 1 MONTH)"
  L0_2(L1_2)
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "SELECT * FROM rm_gangs_wars"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = wars
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = wars
    L7_2 = L0_2[L4_2]
    L6_2[L5_2] = L7_2
    L6_2 = wars
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.acceptRejectDate
    if 0 == L6_2 then
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L6_2.acceptRejectDate = nil
    end
    L6_2 = wars
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.accepted
    if L6_2 then
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.accepted
      if 1 == L6_2 then
        L6_2 = wars
        L6_2 = L6_2[L5_2]
        L6_2.accepted = true
      else
        L6_2 = wars
        L6_2 = L6_2[L5_2]
        L6_2.accepted = false
      end
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.surrendered
      if 0 == L6_2 then
        L6_2 = wars
        L6_2 = L6_2[L5_2]
        L6_2.surrendered = nil
      end
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.finishDate
      if 0 == L6_2 then
        L6_2 = wars
        L6_2 = L6_2[L5_2]
        L6_2.finishDate = nil
      end
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.finishDate
      if not L6_2 then
        L6_2 = L0_2[L4_2]
        L7_2 = L6_2.initiator
        L6_2 = L0_1
        L6_2 = L6_2[L7_2]
        if not L6_2 then
          L6_2 = L0_2[L4_2]
          L7_2 = L6_2.initiator
          L6_2 = L0_1
          L8_2 = {}
          L6_2[L7_2] = L8_2
        end
        L6_2 = L0_2[L4_2]
        L7_2 = L6_2.target
        L6_2 = L0_1
        L6_2 = L6_2[L7_2]
        if not L6_2 then
          L6_2 = L0_2[L4_2]
          L7_2 = L6_2.target
          L6_2 = L0_1
          L8_2 = {}
          L6_2[L7_2] = L8_2
        end
        L6_2 = L0_2[L4_2]
        L7_2 = L6_2.initiator
        L6_2 = L0_1
        L6_2 = L6_2[L7_2]
        L7_2 = L0_2[L4_2]
        L7_2 = L7_2.target
        L6_2[L7_2] = L5_2
        L6_2 = L0_2[L4_2]
        L7_2 = L6_2.target
        L6_2 = L0_1
        L6_2 = L6_2[L7_2]
        L7_2 = L0_2[L4_2]
        L7_2 = L7_2.initiator
        L6_2[L7_2] = L5_2
      end
    else
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.cancelled
      if L6_2 then
        L6_2 = wars
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.cancelled
        if 1 == L6_2 then
          L6_2 = wars
          L6_2 = L6_2[L5_2]
          L6_2.cancelled = true
        end
      end
    end
  end
end
L1_1(L2_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:onPlayerDead"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = getPlayerGang
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = getPlayerGang
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2
  if L4_2 then
    L4_2 = L4_2.name
  end
  if L4_2 then
    L4_2 = L3_2
    if L4_2 then
      L4_2 = L4_2.name
    end
    if L4_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L5_2 = L2_2.name
  L4_2 = L0_1
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L5_2 = L2_2.name
    L4_2 = L0_1
    L4_2 = L4_2[L5_2]
    L5_2 = L3_2.name
    L4_2 = L4_2[L5_2]
  end
  if not L4_2 then
    return
  end
  L5_2 = wars
  L5_2 = L5_2[L4_2]
  if not L5_2 then
    L6_2 = lib
    L6_2 = L6_2.print
    L6_2 = L6_2.warn
    L7_2 = "war index %s does not exist wars table"
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = L4_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2, L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    return
  end
  L6_2 = L5_2.initiator
  L7_2 = L3_2.name
  if L6_2 == L7_2 then
    L6_2 = L5_2.initiatorScore
    L6_2 = L6_2 + 1
    L5_2.initiatorScore = L6_2
  else
    L6_2 = L5_2.target
    L7_2 = L3_2.name
    if L6_2 == L7_2 then
      L6_2 = L5_2.targetScore
      L6_2 = L6_2 + 1
      L5_2.targetScore = L6_2
    end
  end
  L6_2 = L5_2.initiatorScore
  L7_2 = L5_2.killGoal
  if not (L6_2 >= L7_2) then
    L6_2 = L5_2.targetScore
    L7_2 = L5_2.killGoal
    if not (L6_2 >= L7_2) then
      goto lbl_239
    end
  end
  L6_2 = os
  L6_2 = L6_2.time
  L6_2 = L6_2()
  L6_2 = L6_2 * 1000
  L5_2.finishDate = L6_2
  L8_2 = L5_2.initiator
  L7_2 = L0_1
  L7_2 = L7_2[L8_2]
  L8_2 = L5_2.target
  L7_2[L8_2] = nil
  L8_2 = L5_2.target
  L7_2 = L0_1
  L7_2 = L7_2[L8_2]
  L8_2 = L5_2.initiator
  L7_2[L8_2] = nil
  L7_2 = cfg
  L7_2 = L7_2.warLoyaltyPerKill
  L8_2 = L5_2.killGoal
  L7_2 = L7_2 * L8_2
  L8_2 = nil
  L9_2 = L5_2.initiatorScore
  L10_2 = L5_2.targetScore
  if L9_2 > L10_2 then
    L8_2 = "initiator"
    L9_2 = addMoneyToGang
    L10_2 = L5_2.initiator
    L11_2 = L5_2.wager
    L11_2 = L11_2 * 2
    L9_2(L10_2, L11_2)
    L9_2 = gangs
    L10_2 = L5_2.initiator
    L9_2 = L9_2[L10_2]
    L10_2 = L9_2.loyalty
    L10_2 = L10_2 + L7_2
    L9_2.loyalty = L10_2
    L9_2 = gangs
    L10_2 = L5_2.target
    L9_2 = L9_2[L10_2]
    L10_2 = L9_2.loyalty
    L10_2 = L10_2 - L7_2
    L9_2.loyalty = L10_2
  else
    L9_2 = L5_2.targetScore
    L10_2 = L5_2.initiatorScore
    if L9_2 >= L10_2 then
      L8_2 = "target"
      L9_2 = addMoneyToGang
      L10_2 = L5_2.target
      L11_2 = L5_2.wager
      L11_2 = L11_2 * 2
      L9_2(L10_2, L11_2)
      L9_2 = gangs
      L10_2 = L5_2.initiator
      L9_2 = L9_2[L10_2]
      L10_2 = L9_2.loyalty
      L10_2 = L10_2 - L7_2
      L9_2.loyalty = L10_2
      L9_2 = gangs
      L10_2 = L5_2.target
      L9_2 = L9_2[L10_2]
      L10_2 = L9_2.loyalty
      L10_2 = L10_2 + L7_2
      L9_2.loyalty = L10_2
    end
  end
  L9_2 = MySQL
  L9_2 = L9_2.prepare
  L10_2 = "UPDATE rm_gangs_wars SET initiatorScore = ?, targetScore = ?, finishDate = FROM_UNIXTIME(?) WHERE id = ?"
  L11_2 = {}
  L12_2 = L5_2.initiatorScore
  L13_2 = L5_2.targetScore
  L14_2 = L6_2 / 1000
  L15_2 = L5_2.id
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L9_2(L10_2, L11_2)
  L9_2 = MySQL
  L9_2 = L9_2.prepare
  L10_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
  L11_2 = {}
  L12_2 = gangs
  L13_2 = L5_2.initiator
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.loyalty
  L13_2 = L5_2.initiator
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L9_2(L10_2, L11_2)
  L9_2 = MySQL
  L9_2 = L9_2.prepare
  L10_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
  L11_2 = {}
  L12_2 = gangs
  L13_2 = L5_2.target
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.loyalty
  L13_2 = L5_2.target
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = L5_2.id
  L9_2.id = L10_2
  L10_2 = L5_2.initiator
  L9_2.initiatorName = L10_2
  L10_2 = gangs
  L11_2 = L5_2.initiator
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.label
  L9_2.initiatorLabel = L10_2
  L10_2 = L5_2.initiatorIdentifier
  L9_2.initiatorIdentifier = L10_2
  L10_2 = L5_2.initiatorScore
  L9_2.initiatorScore = L10_2
  L10_2 = gangs
  L11_2 = L5_2.initiator
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.loyalty
  L9_2.initiatorNewLoyalty = L10_2
  L10_2 = L5_2.target
  L9_2.targetName = L10_2
  L10_2 = gangs
  L11_2 = L5_2.target
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.label
  L9_2.targetLabel = L10_2
  L10_2 = L5_2.targetIdentifier
  L9_2.targetIdentifier = L10_2
  L10_2 = L5_2.targetScore
  L9_2.targetScore = L10_2
  L10_2 = gangs
  L11_2 = L5_2.target
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.loyalty
  L9_2.targetNewLoyalty = L10_2
  L10_2 = L5_2.killGoal
  L9_2.killGoal = L10_2
  L10_2 = L5_2.wager
  L9_2.wager = L10_2
  L10_2 = L5_2.declareDate
  L9_2.declareDate = L10_2
  L10_2 = L5_2.acceptRejectDate
  L9_2.acceptRejectDate = L10_2
  L10_2 = L5_2.accepted
  L9_2.accepted = L10_2
  L10_2 = L5_2.finishDate
  L9_2.finishDate = L10_2
  L10_2 = TriggerEvent
  L11_2 = "rm_gangs:server:onWarFinished"
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = TriggerClientEvent
  L11_2 = "rm_gangs:client:onWarFinished"
  L12_2 = -1
  L13_2 = L9_2
  L10_2(L11_2, L12_2, L13_2)
  goto lbl_283
  ::lbl_239::
  L6_2 = MySQL
  L6_2 = L6_2.prepare
  L7_2 = "UPDATE rm_gangs_wars SET initiatorScore = ?, targetScore = ? WHERE id = ?"
  L8_2 = {}
  L9_2 = L5_2.initiatorScore
  L10_2 = L5_2.targetScore
  L11_2 = L5_2.id
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L6_2(L7_2, L8_2)
  L6_2 = {}
  L7_2 = L5_2.initiator
  L6_2.initiator = L7_2
  L7_2 = L5_2.target
  L6_2.target = L7_2
  L7_2 = L5_2.initiatorScore
  L6_2.initiatorScore = L7_2
  L7_2 = L5_2.targetScore
  L6_2.targetScore = L7_2
  L7_2 = L5_2.initiator
  L8_2 = L3_2.name
  if L7_2 == L8_2 then
    L7_2 = "initiator"
    if L7_2 then
      goto lbl_267
    end
  end
  L7_2 = "target"
  ::lbl_267::
  L6_2.highlightedSide = L7_2
  L7_2 = TriggerClientEvent
  L8_2 = "rm_gangs:client:warFeed"
  L9_2 = L1_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = TriggerClientEvent
  L8_2 = "rm_gangs:client:warFeed"
  L9_2 = A0_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = TriggerClientEvent
  L8_2 = "rm_gangs:client:updateWar"
  L9_2 = -1
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  ::lbl_283::
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:surrenderInWar"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = source
  L2_2 = getPlayerGang
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  if L3_2 then
    L3_2 = L3_2.name
  end
  if not L3_2 then
    return
  end
  L3_2 = wars
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = wars
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.id
    L8_2 = A0_2.id
    if L7_2 == L8_2 then
      L7_2 = wars
      L7_2 = L7_2[L6_2]
      L8_2 = os
      L8_2 = L8_2.time
      L8_2 = L8_2()
      L8_2 = L8_2 * 1000
      L7_2.finishDate = L8_2
      L9_2 = cfg
      L9_2 = L9_2.warLoyaltyPerKill
      L10_2 = L7_2.killGoal
      L9_2 = L9_2 * L10_2
      L10_2 = nil
      L11_2 = L7_2.initiator
      L12_2 = L2_2.name
      if L11_2 == L12_2 then
        L10_2 = 1
        L11_2 = addMoneyToGang
        L12_2 = L7_2.target
        L13_2 = L7_2.wager
        L13_2 = L13_2 * 2
        L11_2(L12_2, L13_2)
        L11_2 = gangs
        L12_2 = L7_2.initiator
        L11_2 = L11_2[L12_2]
        L12_2 = L11_2.loyalty
        L12_2 = L12_2 - L9_2
        L11_2.loyalty = L12_2
        L11_2 = gangs
        L12_2 = L7_2.target
        L11_2 = L11_2[L12_2]
        L12_2 = L11_2.loyalty
        L12_2 = L12_2 + L9_2
        L11_2.loyalty = L12_2
      else
        L11_2 = L7_2.target
        L12_2 = L2_2.name
        if L11_2 == L12_2 then
          L10_2 = 2
          L11_2 = addMoneyToGang
          L12_2 = L7_2.initiator
          L13_2 = L7_2.wager
          L13_2 = L13_2 * 2
          L11_2(L12_2, L13_2)
          L11_2 = gangs
          L12_2 = L7_2.initiator
          L11_2 = L11_2[L12_2]
          L12_2 = L11_2.loyalty
          L12_2 = L12_2 + L9_2
          L11_2.loyalty = L12_2
          L11_2 = gangs
          L12_2 = L7_2.target
          L11_2 = L11_2[L12_2]
          L12_2 = L11_2.loyalty
          L12_2 = L12_2 - L9_2
          L11_2.loyalty = L12_2
        else
          break
        end
      end
      L12_2 = L7_2.initiator
      L11_2 = L0_1
      L11_2 = L11_2[L12_2]
      L12_2 = L7_2.target
      L11_2[L12_2] = nil
      L12_2 = L7_2.target
      L11_2 = L0_1
      L11_2 = L11_2[L12_2]
      L12_2 = L7_2.initiator
      L11_2[L12_2] = nil
      L11_2 = MySQL
      L11_2 = L11_2.prepare
      L12_2 = "UPDATE rm_gangs_wars SET initiatorScore = ?, targetScore = ?, surrendered = ?, finishDate = FROM_UNIXTIME(?) WHERE id = ?"
      L13_2 = {}
      L14_2 = L7_2.initiatorScore
      L15_2 = L7_2.targetScore
      L16_2 = L10_2
      L17_2 = L8_2 / 1000
      L18_2 = L7_2.id
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L13_2[5] = L18_2
      L11_2(L12_2, L13_2)
      L11_2 = MySQL
      L11_2 = L11_2.prepare
      L12_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
      L13_2 = {}
      L14_2 = gangs
      L15_2 = L7_2.initiator
      L14_2 = L14_2[L15_2]
      L14_2 = L14_2.loyalty
      L15_2 = L7_2.initiator
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L11_2(L12_2, L13_2)
      L11_2 = MySQL
      L11_2 = L11_2.prepare
      L12_2 = "UPDATE rm_gangs_main SET loyalty = ? WHERE name = ?"
      L13_2 = {}
      L14_2 = gangs
      L15_2 = L7_2.target
      L14_2 = L14_2[L15_2]
      L14_2 = L14_2.loyalty
      L15_2 = L7_2.target
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L11_2(L12_2, L13_2)
      L11_2 = {}
      L12_2 = L7_2.id
      L11_2.id = L12_2
      L12_2 = L7_2.initiator
      L11_2.initiatorName = L12_2
      L12_2 = gangs
      L13_2 = L7_2.initiator
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.label
      L11_2.initiatorLabel = L12_2
      L12_2 = L7_2.initiatorIdentifier
      L11_2.initiatorIdentifier = L12_2
      L12_2 = L7_2.initiatorScore
      L11_2.initiatorScore = L12_2
      L12_2 = gangs
      L13_2 = L7_2.initiator
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.loyalty
      L11_2.initiatorNewLoyalty = L12_2
      L12_2 = L7_2.target
      L11_2.targetName = L12_2
      L12_2 = gangs
      L13_2 = L7_2.target
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.label
      L11_2.targetLabel = L12_2
      L12_2 = L7_2.targetIdentifier
      L11_2.targetIdentifier = L12_2
      L12_2 = L7_2.targetScore
      L11_2.targetScore = L12_2
      L12_2 = gangs
      L13_2 = L7_2.target
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.loyalty
      L11_2.targetNewLoyalty = L12_2
      L12_2 = L7_2.killGoal
      L11_2.killGoal = L12_2
      L12_2 = L7_2.wager
      L11_2.wager = L12_2
      L12_2 = L7_2.declareDate
      L11_2.declareDate = L12_2
      L12_2 = L7_2.acceptRejectDate
      L11_2.acceptRejectDate = L12_2
      L12_2 = L7_2.accepted
      L11_2.accepted = L12_2
      L11_2.surrendered = L10_2
      L12_2 = L7_2.finishDate
      L11_2.finishDate = L12_2
      L12_2 = TriggerEvent
      L13_2 = "rm_gangs:server:onWarFinished"
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
      L12_2 = TriggerClientEvent
      L13_2 = "rm_gangs:client:onWarFinished"
      L14_2 = -1
      L15_2 = L11_2
      L12_2(L13_2, L14_2, L15_2)
      break
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:declareWar"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = getPlayerGang
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = gangs
  L4_2 = L2_2.name
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = gangs
    L4_2 = A0_2.target
    L3_2 = L3_2[L4_2]
    if L3_2 then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L4_2 = L2_2.name
  L3_2 = L0_1
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L4_2 = L2_2.name
    L3_2 = L0_1
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2.target
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = notify
      L4_2 = L1_2
      L5_2 = locale
      L6_2 = "alreay_at_war"
      L5_2 = L5_2(L6_2)
      L6_2 = "error"
      return L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = removeMoneyFromGang
  L4_2 = L2_2.name
  L5_2 = A0_2.wager
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = getPlayerIdentifier
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
    L4_2 = L4_2 * 1000
    L5_2 = wars
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = wars
    L7_2 = {}
    L8_2 = L2_2.name
    L7_2.initiator = L8_2
    L8_2 = A0_2.target
    L7_2.target = L8_2
    L7_2.initiatorIdentifier = L3_2
    L7_2.initiatorScore = 0
    L7_2.targetScore = 0
    L8_2 = A0_2.killGoal
    L7_2.killGoal = L8_2
    L8_2 = A0_2.wager
    L7_2.wager = L8_2
    L7_2.declareDate = L4_2
    L6_2[L5_2] = L7_2
    L6_2 = wars
    L6_2 = L6_2[L5_2]
    L7_2 = MySQL
    L7_2 = L7_2.insert
    L7_2 = L7_2.await
    L8_2 = "INSERT INTO rm_gangs_wars (initiator, target, initiatorIdentifier, killGoal, wager, declareDate) VALUES (?, ?, ?, ?, ?, FROM_UNIXTIME(?))"
    L9_2 = {}
    L10_2 = L2_2.name
    L11_2 = A0_2.target
    L12_2 = L3_2
    L13_2 = A0_2.killGoal
    L14_2 = A0_2.wager
    L15_2 = L4_2 / 1000
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L9_2[5] = L14_2
    L9_2[6] = L15_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.id = L7_2
    L6_2 = TriggerClientEvent
    L7_2 = "rm_gangs:client:declareWar"
    L8_2 = -1
    L9_2 = wars
    L9_2 = L9_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  else
    L3_2 = notify
    L4_2 = L1_2
    L5_2 = locale
    L6_2 = "gang_doesnt_afford_wager"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:replyToWarRequest"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = wars
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = wars
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.id
    L7_2 = A0_2.id
    if L6_2 == L7_2 then
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2.answer
      if L7_2 then
        L7_2 = removeMoneyFromGang
        L8_2 = L6_2.target
        L9_2 = L6_2.wager
        L7_2 = L7_2(L8_2, L9_2)
        if not L7_2 then
          L7_2 = notify
          L8_2 = L1_2
          L9_2 = locale
          L10_2 = "gang_doesnt_afford_wager"
          L9_2 = L9_2(L10_2)
          L10_2 = "error"
          return L7_2(L8_2, L9_2, L10_2)
        end
        L8_2 = L6_2.initiator
        L7_2 = L0_1
        L7_2 = L7_2[L8_2]
        if not L7_2 then
          L8_2 = L6_2.initiator
          L7_2 = L0_1
          L9_2 = {}
          L7_2[L8_2] = L9_2
        end
        L8_2 = L6_2.target
        L7_2 = L0_1
        L7_2 = L7_2[L8_2]
        if not L7_2 then
          L8_2 = L6_2.target
          L7_2 = L0_1
          L9_2 = {}
          L7_2[L8_2] = L9_2
        end
        L8_2 = L6_2.initiator
        L7_2 = L0_1
        L7_2 = L7_2[L8_2]
        L8_2 = L6_2.target
        L9_2 = L6_2.id
        L7_2[L8_2] = L9_2
        L8_2 = L6_2.target
        L7_2 = L0_1
        L7_2 = L7_2[L8_2]
        L8_2 = L6_2.initiator
        L9_2 = L6_2.id
        L7_2[L8_2] = L9_2
      else
        L8_2 = L6_2.initiator
        L7_2 = L0_1
        L7_2 = L7_2[L8_2]
        L8_2 = L6_2.target
        L7_2[L8_2] = nil
        L8_2 = L6_2.target
        L7_2 = L0_1
        L7_2 = L7_2[L8_2]
        L8_2 = L6_2.initiator
        L7_2[L8_2] = nil
        L7_2 = addMoneyToGang
        L8_2 = L6_2.initiator
        L9_2 = L6_2.wager
        L7_2(L8_2, L9_2)
      end
      L7_2 = getPlayerIdentifier
      L8_2 = L1_2
      L7_2 = L7_2(L8_2)
      L8_2 = os
      L8_2 = L8_2.time
      L8_2 = L8_2()
      L8_2 = L8_2 * 1000
      L6_2.acceptRejectDate = L8_2
      L9_2 = A0_2.answer
      L6_2.accepted = L9_2
      L6_2.initiatorScore = 0
      L6_2.targetScore = 0
      L6_2.targetIdentifier = L7_2
      L9_2 = MySQL
      L9_2 = L9_2.prepare
      L10_2 = "UPDATE rm_gangs_wars SET accepted = ?, targetIdentifier = ?, acceptRejectDate = FROM_UNIXTIME(?) WHERE id = ?"
      L11_2 = {}
      L12_2 = A0_2.answer
      if true == L12_2 then
        L12_2 = 1
        if L12_2 then
          goto lbl_105
        end
      end
      L12_2 = 0
      ::lbl_105::
      L13_2 = L7_2
      L14_2 = L8_2 / 1000
      L15_2 = L6_2.id
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L9_2(L10_2, L11_2)
      L9_2 = {}
      L10_2 = L6_2.id
      L9_2.id = L10_2
      L10_2 = L6_2.initiator
      L9_2.initiatorName = L10_2
      L10_2 = gangs
      L11_2 = L6_2.initiator
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.label
      L9_2.initiatorLabel = L10_2
      L10_2 = L6_2.initiatorIdentifier
      L9_2.initiatorIdentifier = L10_2
      L9_2.initiatorScore = 0
      L10_2 = L6_2.target
      L9_2.targetName = L10_2
      L10_2 = gangs
      L11_2 = L6_2.target
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.label
      L9_2.targetLabel = L10_2
      L10_2 = L6_2.targetIdentifier
      L9_2.targetIdentifier = L10_2
      L9_2.targetScore = 0
      L10_2 = L6_2.killGoal
      L9_2.killGoal = L10_2
      L10_2 = L6_2.wager
      L9_2.wager = L10_2
      L10_2 = L6_2.accepted
      L9_2.accepted = L10_2
      L10_2 = L6_2.declareDate
      L9_2.declareDate = L10_2
      L10_2 = L6_2.acceptRejectDate
      L9_2.acceptRejectDate = L10_2
      L10_2 = TriggerEvent
      L11_2 = "rm_gangs:server:onWarReplied"
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
      L10_2 = TriggerClientEvent
      L11_2 = "rm_gangs:client:onWarReplied"
      L12_2 = -1
      L13_2 = L9_2
      L10_2(L11_2, L12_2, L13_2)
      break
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rm_gangs:server:cancelWarRequest"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = wars
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = wars
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.id
    L7_2 = A0_2.id
    if L6_2 == L7_2 then
      L6_2 = wars
      L6_2 = L6_2[L5_2]
      L7_2 = addMoneyToGang
      L8_2 = L6_2.initiator
      L9_2 = L6_2.wager
      L7_2(L8_2, L9_2)
      L7_2 = os
      L7_2 = L7_2.time
      L7_2 = L7_2()
      L7_2 = L7_2 * 1000
      L6_2.acceptRejectDate = L7_2
      L6_2.cancelled = true
      L8_2 = MySQL
      L8_2 = L8_2.prepare
      L9_2 = "UPDATE rm_gangs_wars SET cancelled = ?, acceptRejectDate = FROM_UNIXTIME(?) WHERE id = ?"
      L10_2 = {}
      L11_2 = 1
      L12_2 = L7_2 / 1000
      L13_2 = L6_2.id
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L10_2[3] = L13_2
      L8_2(L9_2, L10_2)
      L8_2 = {}
      L9_2 = L6_2.id
      L8_2.id = L9_2
      L9_2 = L6_2.initiator
      L8_2.initiatorName = L9_2
      L9_2 = gangs
      L10_2 = L6_2.initiator
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.label
      L8_2.initiatorLabel = L9_2
      L9_2 = L6_2.initiatorIdentifier
      L8_2.initiatorIdentifier = L9_2
      L9_2 = L6_2.target
      L8_2.targetName = L9_2
      L9_2 = gangs
      L10_2 = L6_2.target
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.label
      L8_2.targetLabel = L9_2
      L9_2 = L6_2.killGoal
      L8_2.killGoal = L9_2
      L9_2 = L6_2.wager
      L8_2.wager = L9_2
      L9_2 = L6_2.declareDate
      L8_2.declareDate = L9_2
      L9_2 = L6_2.acceptRejectDate
      L8_2.acceptRejectDate = L9_2
      L9_2 = L6_2.cancelled
      L8_2.cancelled = L9_2
      L9_2 = TriggerEvent
      L10_2 = "rm_gangs:server:onWarRequestCancelled"
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L9_2 = TriggerClientEvent
      L10_2 = "rm_gangs:client:onWarRequestCancelled"
      L11_2 = -1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
      break
    end
  end
end
L1_1(L2_1, L3_1)
