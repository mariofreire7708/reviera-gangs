local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gangs
  L2_2 = playerGang
  L2_2 = L2_2.name
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = {}
  L3_2 = "[%s] %s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A0_2.serverId
  L6_2 = A0_2.name
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.title = L3_2
  L3_2 = "[%s]%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A0_2.grade
  L6_2 = fwGangs
  L7_2 = playerGang
  L7_2 = L7_2.name
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.grades
  L7_2 = A0_2.grade
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.name
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.description = L3_2
  L2_2.icon = "fa-solid fa-user-large"
  L2_2.readOnly = true
  L3_2 = {}
  L4_2 = locale
  L5_2 = "change_grade"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.icon = "fa-solid fa-people-arrows"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = {}
    L1_3 = pairs
    L2_3 = fwGangs
    L3_3 = playerGang
    L3_3 = L3_3.name
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.grades
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = playerGang
      L7_3 = L7_3.gradelevel
      if L5_3 < L7_3 then
        L7_3 = #L0_3
        L7_3 = L7_3 + 1
        L8_3 = {}
        L9_3 = "[%s] %s"
        L10_3 = L9_3
        L9_3 = L9_3.format
        L11_3 = L5_3
        L12_3 = L6_3.name
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L8_3.label = L9_3
        L8_3.value = L5_3
        L0_3[L7_3] = L8_3
      end
    end
    L1_3 = table
    L1_3 = L1_3.sort
    L2_3 = L0_3
    function L3_3(A0_4, A1_4)
      local L2_4, L3_4
      L2_4 = A0_4.value
      L3_4 = A1_4.value
      L2_4 = L2_4 < L3_4
      return L2_4
    end
    L1_3(L2_3, L3_3)
    L1_3 = {}
    L2_3 = {}
    L2_3.type = "select"
    L3_3 = locale
    L4_3 = "new_grade"
    L3_3 = L3_3(L4_3)
    L2_3.label = L3_3
    L2_3.options = L0_3
    L2_3.required = true
    L3_3 = fwGangs
    L4_3 = playerGang
    L4_3 = L4_3.name
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.grades
    L4_3 = A0_2.grade
    L3_3 = L3_3[L4_3]
    if L3_3 then
      L3_3 = A0_2.grade
      if L3_3 then
        goto lbl_60
      end
    end
    L3_3 = 0
    ::lbl_60::
    L2_3.default = L3_3
    L1_3[1] = L2_3
    L2_3 = lib
    L2_3 = L2_3.inputDialog
    L3_3 = locale
    L4_3 = "recruit_new_member"
    L3_3 = L3_3(L4_3)
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    if not L2_3 then
      L3_3 = editMemberMenu
      L4_3 = A0_2
      L3_3(L4_3)
      return
    end
    L3_3 = L2_3[1]
    L4_3 = lib
    L4_3 = L4_3.callback
    L4_3 = L4_3.await
    L5_3 = "rm_gangs:server:changeMemberGrade"
    L6_3 = false
    L7_3 = A0_2.serverId
    L8_3 = L3_3
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    if L4_3 then
      L5_3 = notify
      L6_3 = locale
      L7_3 = "change_grade_successful"
      L8_3 = A0_2.name
      L9_3 = L3_3
      L10_3 = fwGangs
      L11_3 = playerGang
      L11_3 = L11_3.name
      L10_3 = L10_3[L11_3]
      L10_3 = L10_3.grades
      L10_3 = L10_3[L3_3]
      L10_3 = L10_3.name
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L5_3 = editMemberMenu
    L6_3 = A0_2
    L5_3(L6_3)
  end
  L3_2.onSelect = L4_2
  L4_2 = {}
  L5_2 = locale
  L6_2 = "kick"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.icon = "fa-solid fa-person-burst"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = lib
    L0_3 = L0_3.alertDialog
    L1_3 = {}
    L2_3 = locale
    L3_3 = "kick_confirm_header"
    L2_3 = L2_3(L3_3)
    L1_3.header = L2_3
    L2_3 = "[%s] %s"
    L3_3 = L2_3
    L2_3 = L2_3.format
    L4_3 = A0_2.serverId
    L5_3 = A0_2.name
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = [[
  
 ]]
    L4_3 = locale
    L5_3 = "kick_confirm_content"
    L6_3 = gangs
    L7_3 = playerGang
    L7_3 = L7_3.name
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.label
    L4_3 = L4_3(L5_3, L6_3)
    L2_3 = L2_3 .. L3_3 .. L4_3
    L1_3.content = L2_3
    L1_3.centered = true
    L1_3.cancel = true
    L0_3 = L0_3(L1_3)
    if not L0_3 or "cancel" == L0_3 then
      L1_3 = editMemberMenu
      L2_3 = A0_2
      L1_3(L2_3)
      return
    end
    L1_3 = lib
    L1_3 = L1_3.callback
    L1_3 = L1_3.await
    L2_3 = "rm_gangs:server:kickMember"
    L3_3 = false
    L4_3 = A0_2.serverId
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L2_3 = notify
      L3_3 = locale
      L4_3 = "kick_successful"
      L5_3 = A0_2.name
      L6_3 = gangs
      L7_3 = playerGang
      L7_3 = L7_3.name
      L6_3 = L6_3[L7_3]
      L6_3 = L6_3.label
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = "info"
      L2_3(L3_3, L4_3)
    end
    L2_3 = memberListMenu
    L2_3()
  end
  L4_2.onSelect = L5_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = lib
  L2_2 = L2_2.registerContext
  L3_2 = {}
  L3_2.id = "rm_gangs_management_edit_member"
  L4_2 = locale
  L5_2 = "edit_member"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.options = L1_2
  L3_2.menu = "rm_gangs_management_members"
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.showContext
  L3_2 = "rm_gangs_management_edit_member"
  L2_2(L3_2)
end
editMemberMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = gangs
  L1_2 = playerGang
  L1_2 = L1_2.name
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "rm_gangs:server:getMembers"
  L1_2 = L1_2(L2_2)
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.grade
    L3_3 = A1_3.grade
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = #L0_2
    L7_2 = L7_2 + 1
    L8_2 = {}
    L9_2 = "[%s] %s"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = L6_2.serverId
    L12_2 = L6_2.name
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.title = L9_2
    L9_2 = "[%s]%s"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = L6_2.grade
    L12_2 = fwGangs
    L13_2 = playerGang
    L13_2 = L13_2.name
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.grades
    L13_2 = L6_2.grade
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.name
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.description = L9_2
    L8_2.icon = "fa-solid fa-user-pen"
    L9_2 = L6_2.serverId
    L10_2 = cache
    L10_2 = L10_2.serverId
    L9_2 = L9_2 == L10_2
    L8_2.disabled = L9_2
    function L9_2()
      local L0_3, L1_3
      L0_3 = editMemberMenu
      L1_3 = L6_2
      L0_3(L1_3)
    end
    L8_2.onSelect = L9_2
    L0_2[L7_2] = L8_2
  end
  L2_2 = lib
  L2_2 = L2_2.registerContext
  L3_2 = {}
  L3_2.id = "rm_gangs_management_member_list"
  L4_2 = locale
  L5_2 = "online_members"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.options = L0_2
  L3_2.menu = "rm_gangs_management_members"
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.showContext
  L3_2 = "rm_gangs_management_member_list"
  L2_2(L3_2)
end
memberListMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gangs
  L1_2 = playerGang
  L1_2 = L1_2.name
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = locale
  L3_2 = "recruit_new_member"
  L2_2 = L2_2(L3_2)
  L1_2.title = L2_2
  L1_2.icon = "fa-solid fa-person-walking-arrow-right"
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L0_3 = {}
    L1_3 = lib
    L1_3 = L1_3.getNearbyPlayers
    L2_3 = GetEntityCoords
    L3_3 = cache
    L3_3 = L3_3.ped
    L2_3 = L2_3(L3_3)
    L3_3 = 5.0
    L4_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = #L1_3
    if L2_3 > 0 then
      L2_3 = 1
      L3_3 = #L1_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = {}
        L7_3 = GetPlayerServerId
        L8_3 = L1_3[L5_3]
        L8_3 = L8_3.id
        L7_3 = L7_3(L8_3)
        L6_3.serverId = L7_3
        L1_3[L5_3] = L6_3
      end
      L2_3 = lib
      L2_3 = L2_3.callback
      L2_3 = L2_3.await
      L3_3 = "rm_gangs:server:getPlayerNames"
      L4_3 = false
      L5_3 = L1_3
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = {}
      L4_3 = 1
      L5_3 = #L2_3
      L6_3 = 1
      for L7_3 = L4_3, L5_3, L6_3 do
        L8_3 = #L3_3
        L8_3 = L8_3 + 1
        L9_3 = {}
        L10_3 = "[%s] %s"
        L11_3 = L10_3
        L10_3 = L10_3.format
        L12_3 = L2_3[L7_3]
        L12_3 = L12_3.serverId
        L13_3 = L2_3[L7_3]
        L13_3 = L13_3.name
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        L9_3.label = L10_3
        L10_3 = L2_3[L7_3]
        L10_3 = L10_3.serverId
        L9_3.value = L10_3
        L3_3[L8_3] = L9_3
      end
      L4_3 = #L0_3
      L4_3 = L4_3 + 1
      L5_3 = {}
      L5_3.type = "multi-select"
      L6_3 = locale
      L7_3 = "nearby_people"
      L6_3 = L6_3(L7_3)
      L5_3.label = L6_3
      L6_3 = locale
      L7_3 = "nearby_people_desc"
      L6_3 = L6_3(L7_3)
      L5_3.description = L6_3
      L5_3.options = L3_3
      L5_3.clearable = true
      L0_3[L4_3] = L5_3
    end
    L2_3 = #L0_3
    L2_3 = L2_3 + 1
    L3_3 = {}
    L3_3.type = "number"
    L4_3 = locale
    L5_3 = "serverid"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L4_3 = locale
    L5_3 = "serverid_want_to_recruit_desc"
    L4_3 = L4_3(L5_3)
    L3_3.description = L4_3
    L3_3.min = 1
    L0_3[L2_3] = L3_3
    L2_3 = {}
    L3_3 = pairs
    L4_3 = fwGangs
    L5_3 = playerGang
    L5_3 = L5_3.name
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.grades
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = playerGang
      L9_3 = L9_3.gradelevel
      if L7_3 < L9_3 then
        L9_3 = #L2_3
        L9_3 = L9_3 + 1
        L10_3 = {}
        L11_3 = "[%s] %s"
        L12_3 = L11_3
        L11_3 = L11_3.format
        L13_3 = L7_3
        L14_3 = L8_3.name
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L10_3.label = L11_3
        L10_3.value = L7_3
        L2_3[L9_3] = L10_3
      end
    end
    L3_3 = table
    L3_3 = L3_3.sort
    L4_3 = L2_3
    function L5_3(A0_4, A1_4)
      local L2_4, L3_4
      L2_4 = A0_4.value
      L3_4 = A1_4.value
      L2_4 = L2_4 < L3_4
      return L2_4
    end
    L3_3(L4_3, L5_3)
    L3_3 = #L0_3
    L3_3 = L3_3 + 1
    L4_3 = {}
    L4_3.type = "select"
    L5_3 = locale
    L6_3 = "grade"
    L5_3 = L5_3(L6_3)
    L4_3.label = L5_3
    L5_3 = locale
    L6_3 = "grade_desc"
    L5_3 = L5_3(L6_3)
    L4_3.description = L5_3
    L4_3.options = L2_3
    L4_3.required = true
    L4_3.default = 0
    L0_3[L3_3] = L4_3
    L3_3 = lib
    L3_3 = L3_3.inputDialog
    L4_3 = locale
    L5_3 = "recruit_new_member"
    L4_3 = L4_3(L5_3)
    L5_3 = L0_3
    L3_3 = L3_3(L4_3, L5_3)
    if not L3_3 then
      L4_3 = openMembersMenu
      L4_3()
      return
    end
    L4_3 = {}
    L5_3 = 0
    L6_3 = type
    L7_3 = L3_3[1]
    L6_3 = L6_3(L7_3)
    if "table" == L6_3 then
      L6_3 = L3_3[1]
      L6_3 = #L6_3
      if L6_3 > 0 then
        L4_3 = L3_3[1]
      else
        L6_3 = type
        L7_3 = L3_3[2]
        L6_3 = L6_3(L7_3)
        if "number" == L6_3 then
          L6_3 = L3_3[2]
          L4_3[1] = L6_3
        end
      end
      L5_3 = L3_3[3]
    else
      L6_3 = type
      L7_3 = L3_3[1]
      L6_3 = L6_3(L7_3)
      if "nil" == L6_3 then
        L6_3 = type
        L7_3 = L3_3[2]
        L6_3 = L6_3(L7_3)
        if "number" == L6_3 then
          L6_3 = L3_3[2]
          L4_3[1] = L6_3
          L5_3 = L3_3[3]
      end
      else
        L6_3 = type
        L7_3 = L3_3[1]
        L6_3 = L6_3(L7_3)
        if "number" == L6_3 then
          L6_3 = L3_3[1]
          L4_3[1] = L6_3
          L5_3 = L3_3[2]
        end
      end
    end
    L6_3 = lib
    L6_3 = L6_3.callback
    L6_3 = L6_3.await
    L7_3 = "rm_gangs:server:recruitNewMembers"
    L8_3 = false
    L9_3 = L4_3
    L10_3 = L5_3
    L6_3, L7_3, L8_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
    if L6_3 then
      L9_3 = 1
      L10_3 = #L7_3
      L11_3 = 1
      for L12_3 = L9_3, L10_3, L11_3 do
        L13_3 = notify
        L14_3 = locale
        L15_3 = "recruit_successful"
        L16_3 = L7_3[L12_3]
        L16_3 = L16_3.serverId
        L17_3 = L7_3[L12_3]
        L17_3 = L17_3.name
        L18_3 = gangs
        L19_3 = playerGang
        L19_3 = L19_3.name
        L18_3 = L18_3[L19_3]
        L18_3 = L18_3.label
        L19_3 = L8_3
        L20_3 = fwGangs
        L21_3 = playerGang
        L21_3 = L21_3.name
        L20_3 = L20_3[L21_3]
        L20_3 = L20_3.grades
        L20_3 = L20_3[L8_3]
        L20_3 = L20_3.name
        L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        L15_3 = "info"
        L13_3(L14_3, L15_3)
      end
    end
  end
  L1_2.onSelect = L2_2
  L2_2 = {}
  L3_2 = locale
  L4_2 = "online_members"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L2_2.icon = "fa-solid fa-people-group"
  function L3_2()
    local L0_3, L1_3
    L0_3 = memberListMenu
    L0_3()
  end
  L2_2.onSelect = L3_2
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = lib
  L1_2 = L1_2.registerContext
  L2_2 = {}
  L2_2.id = "rm_gangs_management_members"
  L3_2 = locale
  L4_2 = "member_management"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L2_2.options = L0_2
  L2_2.menu = "rm_gangs_management_main"
  L1_2(L2_2)
  L1_2 = lib
  L1_2 = L1_2.showContext
  L2_2 = "rm_gangs_management_members"
  L1_2(L2_2)
end
openMembersMenu = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  if "deposit" == A0_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "rm_gangs:server:getMoney"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 or L1_2
    if not L2_2 then
      L1_2 = 0
    end
  elseif "withdraw" == A0_2 then
    L2_2 = gangs
    L3_2 = playerGang
    L3_2 = L3_2.name
    L2_2 = L2_2[L3_2]
    L1_2 = L2_2.money
  end
  L2_2 = lib
  L2_2 = L2_2.inputDialog
  L3_2 = locale
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = {}
  L5_2.type = "number"
  L6_2 = locale
  L7_2 = "amount"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.required = true
  L5_2.default = 0
  L5_2.min = 0
  L5_2.max = L1_2
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2[1]
    if L3_2 then
      goto lbl_46
    end
  end
  do return end
  ::lbl_46::
  L3_2 = L2_2[1]
  return L3_2
end
getAmount = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = gangs
  L1_2 = playerGang
  L1_2 = L1_2.name
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = locale
  L3_2 = "management_balance"
  L4_2 = locale
  L5_2 = "ui.$"
  L4_2 = L4_2(L5_2)
  L5_2 = gangs
  L6_2 = playerGang
  L6_2 = L6_2.name
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.money
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.title = L2_2
  L1_2.icon = "fa-solid fa-sack-dollar"
  L1_2.readOnly = true
  L2_2 = {}
  L3_2 = locale
  L4_2 = "deposit"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L2_2.icon = "fa-solid fa-money-bill-transfer"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = getAmount
    L1_3 = "deposit"
    L0_3 = L0_3(L1_3)
    if L0_3 and L0_3 > 0 then
      L1_3 = lib
      L1_3 = L1_3.callback
      L1_3 = L1_3.await
      L2_3 = "rm_gangs:server:deposit"
      L3_3 = false
      L4_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L2_3 = notify
        L3_3 = locale
        L4_3 = "deposit_successful"
        L5_3 = locale
        L6_3 = "ui.$"
        L5_3 = L5_3(L6_3)
        L6_3 = L0_3
        L7_3 = gangs
        L8_3 = playerGang
        L8_3 = L8_3.name
        L7_3 = L7_3[L8_3]
        L7_3 = L7_3.label
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L2_3 = Wait
        L3_3 = 100
        L2_3(L3_3)
      else
        L2_3 = notify
        L3_3 = locale
        L4_3 = "deposit_failed"
        L5_3 = gangs
        L6_3 = playerGang
        L6_3 = L6_3.name
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.label
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    end
    L1_3 = openMoneyMenu
    L1_3()
  end
  L2_2.onSelect = L3_2
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = playerGang
  L1_2 = L1_2.isboss
  if L1_2 then
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L2_2 = {}
    L3_2 = locale
    L4_2 = "withdraw"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L2_2.icon = "fa-solid fa-money-bill-transfer"
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L0_3 = getAmount
      L1_3 = "withdraw"
      L0_3 = L0_3(L1_3)
      if L0_3 and L0_3 > 0 then
        L1_3 = lib
        L1_3 = L1_3.callback
        L1_3 = L1_3.await
        L2_3 = "rm_gangs:server:withdraw"
        L3_3 = false
        L4_3 = L0_3
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        if L1_3 then
          L2_3 = notify
          L3_3 = locale
          L4_3 = "withdraw_successful"
          L5_3 = locale
          L6_3 = "ui.$"
          L5_3 = L5_3(L6_3)
          L6_3 = L0_3
          L7_3 = gangs
          L8_3 = playerGang
          L8_3 = L8_3.name
          L7_3 = L7_3[L8_3]
          L7_3 = L7_3.label
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          L2_3 = Wait
          L3_3 = 100
          L2_3(L3_3)
        else
          L2_3 = notify
          L3_3 = locale
          L4_3 = "withdraw_failed"
          L5_3 = gangs
          L6_3 = playerGang
          L6_3 = L6_3.name
          L5_3 = L5_3[L6_3]
          L5_3 = L5_3.label
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3)
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        end
      end
      L1_3 = openMoneyMenu
      L1_3()
    end
    L2_2.onSelect = L3_2
    L0_2[L1_2] = L2_2
  end
  L1_2 = lib
  L1_2 = L1_2.registerContext
  L2_2 = {}
  L2_2.id = "rm_gangs_management_money"
  L3_2 = locale
  L4_2 = "money_management"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L2_2.options = L0_2
  L2_2.menu = "rm_gangs_management_main"
  L1_2(L2_2)
  L1_2 = lib
  L1_2 = L1_2.showContext
  L2_2 = "rm_gangs_management_money"
  L1_2(L2_2)
end
openMoneyMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = gangs
  L1_2 = playerGang
  L1_2 = L1_2.name
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = locale
  L3_2 = "money_management"
  L2_2 = L2_2(L3_2)
  L1_2.title = L2_2
  L2_2 = playerGang
  L2_2 = L2_2.isboss
  if L2_2 then
    L2_2 = "%s & %s"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = locale
    L5_2 = "deposit"
    L4_2 = L4_2(L5_2)
    L5_2 = locale
    L6_2 = "withdraw"
    L5_2, L6_2 = L5_2(L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      goto lbl_34
    end
  end
  L2_2 = locale
  L3_2 = "deposit"
  L2_2 = L2_2(L3_2)
  ::lbl_34::
  L1_2.description = L2_2
  L1_2.icon = "fa-solid fa-sack-dollar"
  function L2_2()
    local L0_3, L1_3
    L0_3 = openMoneyMenu
    L0_3()
  end
  L1_2.onSelect = L2_2
  L0_2[1] = L1_2
  L1_2 = playerGang
  L1_2 = L1_2.isboss
  if L1_2 then
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L2_2 = {}
    L3_2 = locale
    L4_2 = "member_management"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L3_2 = locale
    L4_2 = "member_management_desc"
    L3_2 = L3_2(L4_2)
    L2_2.description = L3_2
    L2_2.icon = "fa-solid fa-list"
    function L3_2()
      local L0_3, L1_3
      L0_3 = openMembersMenu
      L0_3()
    end
    L2_2.onSelect = L3_2
    L0_2[L1_2] = L2_2
  end
  L1_2 = lib
  L1_2 = L1_2.registerContext
  L2_2 = {}
  L2_2.id = "rm_gangs_management_main"
  L3_2 = locale
  L4_2 = "management_main_title"
  L5_2 = gangs
  L6_2 = playerGang
  L6_2 = L6_2.name
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.label
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.title = L3_2
  L2_2.options = L0_2
  L1_2(L2_2)
  L1_2 = lib
  L1_2 = L1_2.showContext
  L2_2 = "rm_gangs_management_main"
  L1_2(L2_2)
end
openManagementMenu = L0_1
