local L0_1, L1_1, L2_1
L0_1 = AddEventHandler
L1_1 = "rm_gangs:playerLoaded"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "rm_gangs:client:playerLoaded"
  L4_2 = A0_2
  L5_2 = {}
  L6_2 = gangs
  L5_2.gangs = L6_2
  L6_2 = wars
  L5_2.wars = L6_2
  L6_2 = tributeZones
  L5_2.tributeZones = L6_2
  L6_2 = turfWars
  L5_2.turfWars = L6_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
