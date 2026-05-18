local L0_1, L1_1, L2_1
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:getPlayerNames"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = getPlayerName
    L8_2 = A1_2[L5_2]
    L8_2 = L8_2.serverId
    L7_2 = L7_2(L8_2)
    L6_2.name = L7_2
  end
  return A1_2
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:getMembers"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = getPlayerGang
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = gangs
  L3_2 = L1_2.name
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = getOnlineGangMembers
  L3_2 = L1_2.name
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = getPlayerGang
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.name
    L9_2 = L1_2.name
    if L8_2 == L9_2 then
      L8_2 = {}
      L9_2 = L2_2[L6_2]
      L8_2.serverId = L9_2
      L9_2 = getPlayerName
      L10_2 = L2_2[L6_2]
      L9_2 = L9_2(L10_2)
      L8_2.name = L9_2
      L9_2 = L7_2.grade
      L9_2 = L9_2.level
      L8_2.grade = L9_2
      L2_2[L6_2] = L8_2
    else
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:changeMemberGrade"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = getPlayerGang
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = gangs
  L5_2 = L3_2.name
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L4_2 = L3_2.isboss
    if L4_2 then
      L4_2 = fwGangs
      L5_2 = L3_2.name
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.grades
      L4_2 = L4_2[A2_2]
      if L4_2 then
        goto lbl_21
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_21::
  L4_2 = setPlayerGang
  L5_2 = A1_2
  L6_2 = L3_2.name
  L7_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:recruitNewMembers"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = getPlayerGang
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = gangs
  L5_2 = L3_2.name
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L4_2 = L3_2.isboss
    if L4_2 then
      goto lbl_14
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_14::
  L4_2 = fwGangs
  L5_2 = L3_2.name
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.grades
  L4_2 = L4_2[A2_2]
  if not L4_2 then
    A2_2 = 0
  end
  L4_2 = #A1_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = setPlayerGang
    L9_2 = A1_2[L7_2]
    L10_2 = L3_2.name
    L11_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = {}
      L9_2 = A1_2[L7_2]
      L8_2.serverId = L9_2
      L9_2 = getPlayerName
      L10_2 = A1_2[L7_2]
      L9_2 = L9_2(L10_2)
      L8_2.name = L9_2
      A1_2[L7_2] = L8_2
    end
  end
  L4_2 = true
  L5_2 = A1_2
  L6_2 = A2_2
  return L4_2, L5_2, L6_2
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:kickMember"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = getPlayerGang
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = gangs
  L4_2 = L2_2.name
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = L2_2.isboss
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_14::
  L3_2 = setPlayerGang
  L4_2 = A1_2
  return L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:getMoney"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = getMoney
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:withdraw"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = getPlayerGang
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = gangs
  L4_2 = L2_2.name
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = L2_2.isboss
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_14::
  L3_2 = removeMoneyFromGang
  L4_2 = L2_2.name
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = addMoney
    L4_2 = A0_2
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  else
    L3_2 = false
    return L3_2
  end
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "rm_gangs:server:deposit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = getPlayerGang
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = gangs
  L4_2 = L2_2.name
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = removeMoney
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = addMoneyToGang
    L4_2 = L2_2.name
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  else
    L3_2 = false
    return L3_2
  end
end
L0_1(L1_1, L2_1)
