local L0_1, L1_1, L2_1
L0_1 = RegisterNUICallback
L1_1 = "declareWar"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rm_gangs:server:declareWar"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "replyToWarRequest"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rm_gangs:server:replyToWarRequest"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "cancelWarRequest"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rm_gangs:server:cancelWarRequest"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "surrenderInWar"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rm_gangs:server:surrenderInWar"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:declareWar"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L3_2.war = A0_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onWarReplied"
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
  L5_2 = A0_2.initiatorIdentifier
  L4_2.initiatorIdentifier = L5_2
  L5_2 = A0_2.targetName
  L4_2.target = L5_2
  L5_2 = A0_2.targetIdentifier
  L4_2.targetIdentifier = L5_2
  L4_2.initiatorScore = 0
  L4_2.targetScore = 0
  L5_2 = A0_2.killGoal
  L4_2.killGoal = L5_2
  L5_2 = A0_2.wager
  L4_2.wager = L5_2
  L5_2 = A0_2.declareDate
  L4_2.declareDate = L5_2
  L5_2 = A0_2.acceptRejectDate
  L4_2.acceptRejectDate = L5_2
  L5_2 = A0_2.accepted
  L4_2.accepted = L5_2
  L3_2.war = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onWarRequestCancelled"
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
  L5_2 = A0_2.initiatorIdentifier
  L4_2.initiatorIdentifier = L5_2
  L5_2 = A0_2.targetName
  L4_2.target = L5_2
  L4_2.initiatorScore = 0
  L4_2.targetScore = 0
  L5_2 = A0_2.killGoal
  L4_2.killGoal = L5_2
  L5_2 = A0_2.wager
  L4_2.wager = L5_2
  L5_2 = A0_2.declareDate
  L4_2.declareDate = L5_2
  L5_2 = A0_2.acceptRejectDate
  L4_2.acceptRejectDate = L5_2
  L5_2 = A0_2.cancelled
  L4_2.cancelled = L5_2
  L3_2.war = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:updateWar"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L3_2.war = A0_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:onWarFinished"
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
  L5_2 = A0_2.initiatorIdentifier
  L4_2.initiatorIdentifier = L5_2
  L5_2 = A0_2.initiatorScore
  L4_2.initiatorScore = L5_2
  L5_2 = A0_2.targetName
  L4_2.target = L5_2
  L5_2 = A0_2.targetIdentifier
  L4_2.targetIdentifier = L5_2
  L5_2 = A0_2.targetScore
  L4_2.targetScore = L5_2
  L5_2 = A0_2.killGoal
  L4_2.killGoal = L5_2
  L5_2 = A0_2.wager
  L4_2.wager = L5_2
  L5_2 = A0_2.declareDate
  L4_2.declareDate = L5_2
  L5_2 = A0_2.acceptRejectDate
  L4_2.acceptRejectDate = L5_2
  L5_2 = A0_2.accepted
  L4_2.accepted = L5_2
  L5_2 = A0_2.surrendered
  L4_2.surrendered = L5_2
  L5_2 = A0_2.finishDate
  L4_2.finishDate = L5_2
  L3_2.war = L4_2
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
  L1_2 = A0_2.surrendered
  if not L1_2 then
    L1_2 = A0_2.finishDate
    if not L1_2 then
      goto lbl_126
    end
  end
  L1_2 = A0_2.initiatorName
  L2_2 = playerGang
  L2_2 = L2_2.name
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.targetName
    L2_2 = playerGang
    L2_2 = L2_2.name
    if L1_2 ~= L2_2 then
      goto lbl_126
    end
  end
  L1_2 = nil
  L2_2 = A0_2.surrendered
  if 1 == L2_2 then
    L1_2 = "target"
  else
    L2_2 = A0_2.surrendered
    if 2 == L2_2 then
      L1_2 = "initiator"
    else
      L2_2 = A0_2.initiatorScore
      L3_2 = A0_2.targetScore
      if L2_2 > L3_2 then
        L1_2 = "initiator"
      else
        L2_2 = A0_2.targetScore
        L3_2 = A0_2.initiatorScore
        if L2_2 >= L3_2 then
          L1_2 = "target"
        end
      end
    end
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "warFeed"
  L4_2 = {}
  L5_2 = A0_2.initiatorName
  L4_2.initiator = L5_2
  L5_2 = A0_2.targetName
  L4_2.target = L5_2
  L5_2 = A0_2.initiatorScore
  L4_2.initiatorScore = L5_2
  L5_2 = A0_2.targetScore
  L4_2.targetScore = L5_2
  L4_2.finished = true
  L4_2.highlightedSide = L1_2
  L3_2.data = L4_2
  L2_2(L3_2)
  ::lbl_126::
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rm_gangs:client:warFeed"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "warFeed"
  L2_2.data = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
