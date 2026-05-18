local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
tributeZones = L0_1
L0_1 = cfg
L0_1 = L0_1.tributePaymentInterval
L1_1 = 24
L0_1 = L1_1 / L0_1
L1_1 = cfg
L1_1 = L1_1.tributePaymentInterval
L1_1 = L1_1 * 60
L1_1 = L1_1 * 60
L1_1 = L1_1 * 1000
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "!*t"
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = os
  L2_2 = L2_2.date
  L3_2 = "*t"
  L4_2 = L0_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.isdst = false
  L3_2 = os
  L3_2 = L3_2.difftime
  L4_2 = os
  L4_2 = L4_2.time
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = os
  L5_2 = L5_2.time
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  return L3_2(L4_2, L5_2, L6_2)
end
L3_1 = L2_1
L3_1 = L3_1()
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "!*t"
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L2_2 = os
  L2_2 = L2_2.time
  L3_2 = {}
  L4_2 = L0_2.year
  L3_2.year = L4_2
  L4_2 = L0_2.month
  L3_2.month = L4_2
  L4_2 = L0_2.day
  L3_2.day = L4_2
  L3_2.hour = 0
  L3_2.min = 0
  L3_2.sec = 0
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  L2_2 = L2_2 + L3_2
  L3_2 = 1
  L4_2 = L0_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2 - 1
    L8_2 = L0_1
    L9_2 = 86400
    L8_2 = L9_2 / L8_2
    L7_2 = L7_2 * L8_2
    L8_2 = L2_2 + L7_2
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.receipt = false
    L11_2 = L8_2 * 1000
    L10_2.startTimestamp = L11_2
    L1_2[L9_2] = L10_2
  end
  return L1_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = os
    L2_2 = L2_2.time
    L2_2 = L2_2()
    L2_2 = L2_2 * 1000
  end
  L3_2 = #A0_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L7_2 = L7_2.startTimestamp
    if L2_2 >= L7_2 then
      return L6_2
    end
  end
  L3_2 = nil
  return L3_2
end
getIntervalIndex = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = {}
  L2_2 = locale
  L3_2 = "sun"
  L2_2 = L2_2(L3_2)
  L3_2 = locale
  L4_2 = "mon"
  L3_2 = L3_2(L4_2)
  L4_2 = locale
  L5_2 = "tue"
  L4_2 = L4_2(L5_2)
  L5_2 = locale
  L6_2 = "wed"
  L5_2 = L5_2(L6_2)
  L6_2 = locale
  L7_2 = "thu"
  L6_2 = L6_2(L7_2)
  L7_2 = locale
  L8_2 = "fri"
  L7_2 = L7_2(L8_2)
  L8_2 = locale
  L9_2 = "sat"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  L1_2[13] = L14_2
  L1_2[14] = L15_2
  L1_2[15] = L16_2
  L1_2[16] = L17_2
  L1_2[17] = L18_2
  L1_2[18] = L19_2
  L1_2[19] = L20_2
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2.gmatch
  L5_2 = "%S+"
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L7_2
    L8_2 = L7_2.match
    L10_2 = "(%d+)-(%d+)/(%d+)"
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    if L8_2 and L9_2 and L10_2 then
      L11_2 = tonumber
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L12_2 = tonumber
      L13_2 = L9_2
      L12_2 = L12_2(L13_2)
      L13_2 = tonumber
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = L2_2
        L17_2 = L14_2 % 7
        L17_2 = L17_2 + 1
        L17_2 = L1_2[L17_2]
        L15_2(L16_2, L17_2)
      end
    else
      L12_2 = L7_2
      L11_2 = L7_2.match
      L13_2 = "/"
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L12_2 = L7_2
        L11_2 = L7_2.match
        L13_2 = ".*/(%d+)"
        L11_2, L12_2 = L11_2(L12_2, L13_2)
        L13_2 = 0
        L14_2 = 6
        L15_2 = tonumber
        L16_2 = L12_2
        L15_2 = L15_2(L16_2)
        for L16_2 = L13_2, L14_2, L15_2 do
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = L2_2
          L19_2 = L16_2 % 7
          L19_2 = L19_2 + 1
          L19_2 = L1_2[L19_2]
          L17_2(L18_2, L19_2)
        end
      else
        L12_2 = L7_2
        L11_2 = L7_2.match
        L13_2 = "%d+-%d+"
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          L12_2 = L7_2
          L11_2 = L7_2.match
          L13_2 = "(%d+)-(%d+)/(%d+)"
          L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
          if L11_2 and L13_2 then
            L14_2 = tonumber
            L15_2 = L11_2
            L14_2 = L14_2(L15_2)
            L15_2 = 6
            L16_2 = tonumber
            L17_2 = L13_2
            L16_2 = L16_2(L17_2)
            for L17_2 = L14_2, L15_2, L16_2 do
              L18_2 = table
              L18_2 = L18_2.insert
              L19_2 = L2_2
              L20_2 = L17_2 % 7
              L20_2 = L20_2 + 1
              L20_2 = L1_2[L20_2]
              L18_2(L19_2, L20_2)
            end
          end
        else
          L11_2 = tonumber
          L12_2 = L7_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            L11_2 = tonumber
            L12_2 = L7_2
            L11_2 = L11_2(L12_2)
            L12_2 = table
            L12_2 = L12_2.insert
            L13_2 = L2_2
            L14_2 = L11_2 % 7
            L14_2 = L14_2 + 1
            L14_2 = L1_2[L14_2]
            L12_2(L13_2, L14_2)
          else
            L11_2 = 1
            while true do
              L12_2 = L1_2[L11_2]
              if not L12_2 then
                break
              end
              L12_2 = L1_2[L11_2]
              L13_2 = L12_2
              L12_2 = L12_2.lower
              L12_2 = L12_2(L13_2)
              L13_2 = L12_2
              L12_2 = L12_2.sub
              L14_2 = 1
              L15_2 = #L7_2
              L12_2 = L12_2(L13_2, L14_2, L15_2)
              L14_2 = L7_2
              L13_2 = L7_2.lower
              L13_2 = L13_2(L14_2)
              if L12_2 == L13_2 then
                L12_2 = table
                L12_2 = L12_2.insert
                L13_2 = L2_2
                L14_2 = L1_2[L11_2]
                L12_2(L13_2, L14_2)
              end
              L11_2 = L11_2 + 1
            end
          end
        end
      end
    end
  end
  return L2_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.gmatch
  L4_2 = "%S+"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L1_2[L7_2] = L6_2
  end
  L2_2 = L1_2[1]
  L3_2 = L1_2[2]
  L4_2 = nil
  if "*" == L3_2 then
    L5_2 = locale
    L6_2 = "every_hour"
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = tonumber
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = tonumber
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L7_2 = cfg
    L7_2 = L7_2.clockFormat
    if "24" == L7_2 then
      L7_2 = string
      L7_2 = L7_2.format
      L8_2 = "%02d"
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = ":"
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "%02d"
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L7_2 .. L8_2 .. L9_2
      L4_2 = L7_2
    elseif L5_2 < 12 then
      L7_2 = string
      L7_2 = L7_2.format
      L8_2 = "%02d"
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = ":"
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "%02d"
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = " AM"
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
      L4_2 = L7_2
    elseif 12 == L5_2 then
      L4_2 = "12:00 PM"
    else
      L7_2 = string
      L7_2 = L7_2.format
      L8_2 = "%02d"
      L9_2 = L5_2 - 12
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = ":"
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "%02d"
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = " PM"
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
      L4_2 = L7_2
    end
  end
  L5_2 = L1_2[5]
  L6_2 = nil
  if "*" == L5_2 then
    L7_2 = locale
    L8_2 = "every_day"
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  else
    L7_2 = L5_1
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.concat
    L9_2 = L7_2
    L10_2 = ", "
    L8_2 = L8_2(L9_2, L10_2)
    L6_2 = L8_2
  end
  L7_2 = locale
  L8_2 = "on_day_at_hour"
  L9_2 = L6_2
  L10_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  return L7_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = tributeZones
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2._captureEventData
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.warn
    L2_2 = locale
    L3_2 = "ongoing_tribute_war"
    L4_2 = tributeZones
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.label
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2)
    return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L1_2 = tributeZones
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.owner
  L2_2 = tributeZones
  L2_2 = L2_2[A0_2]
  L2_2.owner = nil
  L2_2 = tributeZones
  L2_2 = L2_2[A0_2]
  L3_2 = {}
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L4_2 = L4_2 * 1000
  L5_2 = tributeZones
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.captureDuration
  L5_2 = L5_2 * 60
  L5_2 = L5_2 * 1000
  L4_2 = L4_2 + L5_2
  L3_2.finishDate = L4_2
  L4_2 = {}
  L3_2.points = L4_2
  L4_2 = tributeZones
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.label
  L3_2.zoneLabel = L4_2
  L2_2._captureEventData = L3_2
  L2_2 = {}
  L2_2.name = A0_2
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.label
  L2_2.label = L3_2
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2._captureEventData
  L3_2 = L3_2.finishDate
  L2_2.finishDate = L3_2
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.paymentAmount
  L2_2.paymentAmount = L3_2
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.captureDuration
  L2_2.captureDuration = L3_2
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.npc
  L3_2 = L3_2.coord
  L2_2.coords = L3_2
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.territory
  L2_2.territory = L3_2
  L2_2.oldOwnerName = L1_2
  L3_2 = gangs
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L3_2 = L3_2.label
  end
  if not L3_2 then
    L3_2 = nil
  end
  L2_2.oldOwnerLabel = L3_2
  L3_2 = TriggerEvent
  L4_2 = "rm_gangs:server:onTributeEventStarted"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "rm_gangs:client:onTributeEventStarted"
  L5_2 = -1
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = lib
  L3_2 = L3_2.table
  L3_2 = L3_2.deepclone
  L4_2 = tributeZones
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.territory
  L3_2 = L3_2(L4_2)
  L4_2 = lib
  L4_2 = L4_2.zones
  L4_2 = L4_2.poly
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  while true do
    L5_2 = tributeZones
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2._captureEventData
    if not L5_2 then
      break
    end
    L5_2 = os
    L5_2 = L5_2.time
    L5_2 = L5_2()
    L5_2 = L5_2 * 1000
    L6_2 = tributeZones
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2._captureEventData
    L6_2 = L6_2.finishDate
    if not (L5_2 < L6_2) then
      break
    end
    L5_2 = getOnlineGangMembers
    L5_2 = L5_2()
    L6_2 = 1
    L7_2 = #L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L5_2[L9_2]
      L11_2 = isPlayerAlive
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = getPlayerGang
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = GetPlayerPed
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L13_2 = GetEntityCoords
        L14_2 = L12_2
        L13_2 = L13_2(L14_2)
        L15_2 = L4_2
        L14_2 = L4_2.contains
        L16_2 = L13_2
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L14_2 = tributeZones
          L14_2 = L14_2[A0_2]
          L14_2 = L14_2._captureEventData
          L14_2 = L14_2.points
          L15_2 = L11_2.name
          L14_2 = L14_2[L15_2]
          if not L14_2 then
            L14_2 = tributeZones
            L14_2 = L14_2[A0_2]
            L14_2 = L14_2._captureEventData
            L14_2 = L14_2.points
            L15_2 = L11_2.name
            L14_2[L15_2] = 0
          end
          L14_2 = tributeZones
          L14_2 = L14_2[A0_2]
          L14_2 = L14_2._captureEventData
          L14_2 = L14_2.points
          L15_2 = L11_2.name
          L16_2 = L14_2[L15_2]
          L16_2 = L16_2 + 10
          L14_2[L15_2] = L16_2
        end
      end
    end
    L6_2 = TriggerClientEvent
    L7_2 = "rm_gangs:client:updateCaptureEvent"
    L8_2 = -1
    L9_2 = A0_2
    L10_2 = tributeZones
    L10_2 = L10_2[A0_2]
    L10_2 = L10_2._captureEventData
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Wait
    L7_2 = 10000
    L6_2(L7_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.remove
  L5_2(L6_2)
  L5_2 = nil
  L6_2 = tributeZones
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2._captureEventData
  if L6_2 then
    L6_2 = pairs
    L7_2 = tributeZones
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2._captureEventData
    L7_2 = L7_2.points
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      if L11_2 > 0 then
        if not L5_2 then
          L5_2 = L10_2
        else
          L12_2 = tributeZones
          L12_2 = L12_2[A0_2]
          L12_2 = L12_2._captureEventData
          L12_2 = L12_2.points
          L12_2 = L12_2[L5_2]
          L13_2 = tributeZones
          L13_2 = L13_2[A0_2]
          L13_2 = L13_2._captureEventData
          L13_2 = L13_2.points
          L13_2 = L13_2[L10_2]
          if L12_2 < L13_2 then
            L5_2 = L10_2
          end
        end
      end
    end
    L6_2 = tributeZones
    L6_2 = L6_2[A0_2]
    L6_2._captureEventData = nil
    if L5_2 then
      L6_2 = os
      L6_2 = L6_2.time
      L6_2 = L6_2()
      L6_2 = L6_2 * 1000
      L7_2 = tributeZones
      L7_2 = L7_2[A0_2]
      L7_2.owner = L5_2
      L7_2 = tributeZones
      L7_2 = L7_2[A0_2]
      L7_2.captureDate = L6_2
      L7_2 = tributeZones
      L7_2 = L7_2[A0_2]
      L7_2.lastReceiptDate = nil
      L7_2 = MySQL
      L7_2 = L7_2.prepare
      L7_2 = L7_2.await
      L8_2 = "UPDATE rm_gangs_tribute_zones SET lastReceiptDate = NULL, owner = ?, captureDate = FROM_UNIXTIME(?) WHERE name = ?"
      L9_2 = {}
      L10_2 = L5_2
      L11_2 = L6_2 / 1000
      L12_2 = A0_2
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L9_2[3] = L12_2
      L7_2(L8_2, L9_2)
      L7_2 = 1
      L8_2 = tributeZones
      L8_2 = L8_2[A0_2]
      L8_2 = L8_2.paymentIntervals
      L8_2 = #L8_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = tributeZones
        L11_2 = L11_2[A0_2]
        L11_2 = L11_2.paymentIntervals
        L11_2 = L11_2[L10_2]
        L11_2.receipt = false
      end
    end
  else
    L5_2 = L1_2
  end
  L6_2 = {}
  L6_2.name = A0_2
  L7_2 = tributeZones
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.label
  L6_2.label = L7_2
  L7_2 = tributeZones
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.paymentAmount
  L6_2.paymentAmount = L7_2
  L7_2 = tributeZones
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.captureDuration
  L6_2.captureDuration = L7_2
  L7_2 = tributeZones
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.npc
  L7_2 = L7_2.coord
  L6_2.coords = L7_2
  L7_2 = tributeZones
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.territory
  L6_2.territory = L7_2
  L6_2.ownerName = L5_2
  L7_2 = gangs
  L7_2 = L7_2[L5_2]
  if L7_2 then
    L7_2 = L7_2.label
  end
  if not L7_2 then
    L7_2 = nil
  end
  L6_2.ownerLabel = L7_2
  L7_2 = tributeZones
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.captureDate
  if not L7_2 then
    L7_2 = nil
  end
  L6_2.captureDate = L7_2
  L6_2.oldOwnerName = L1_2
  L7_2 = gangs
  L7_2 = L7_2[L1_2]
  if L7_2 then
    L7_2 = L7_2.label
  end
  if not L7_2 then
    L7_2 = nil
  end
  L6_2.oldOwnerLabel = L7_2
  L7_2 = TriggerEvent
  L8_2 = "rm_gangs:server:onTributeEventFinished"
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = TriggerClientEvent
  L8_2 = "rm_gangs:client:onTributeEventFinished"
  L9_2 = -1
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
function L8_1(A0_2)
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
L9_1 = cfg
L9_1 = L9_1.commands
L9_1 = L9_1.starttribute
if L9_1 then
  L9_1 = lib
  L9_1 = L9_1.addCommand
  L10_1 = cfg
  L10_1 = L10_1.commands
  L10_1 = L10_1.starttribute
  L11_1 = {}
  L12_1 = locale
  L13_1 = "commands.starttribute.help"
  L12_1 = L12_1(L13_1)
  L11_1.help = L12_1
  function L12_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L3_2 = GetPlayerIdentifiers
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = cfg
    L4_2 = L4_2.disableStartTributePermissionCheck
    if not L4_2 then
      L4_2 = IsPlayerAceAllowed
      L5_2 = A0_2
      L6_2 = "command"
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L4_2 = L8_1
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          goto lbl_53
        end
      end
    end
    L4_2 = {}
    L5_2 = pairs
    L6_2 = tributeZones
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = #L4_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L13_2 = L10_2.name
      L12_2.name = L13_2
      L13_2 = L10_2.label
      L12_2.label = L13_2
      L13_2 = L10_2._captureEventData
      if L13_2 then
        L13_2 = true
        if L13_2 then
          goto lbl_41
        end
      end
      L13_2 = false
      ::lbl_41::
      L12_2.started = L13_2
      L13_2 = L10_2.paymentAmount
      L12_2.paymentAmount = L13_2
      L4_2[L11_2] = L12_2
    end
    L5_2 = TriggerClientEvent
    L6_2 = "rm_gangs:client:openManuelTributeStartMenu"
    L7_2 = A0_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    ::lbl_53::
  end
  L9_1(L10_1, L11_1, L12_1)
end
L9_1 = RegisterNetEvent
L10_1 = "rm_gangs:server:manuelTributeStart"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = GetPlayerIdentifiers
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = cfg
  L3_2 = L3_2.disableStartTributePermissionCheck
  if not L3_2 then
    L3_2 = IsPlayerAceAllowed
    L4_2 = L1_2
    L5_2 = "command.starttribute"
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = L8_1
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        goto lbl_23
      end
    end
  end
  L3_2 = L7_1
  L4_2 = A0_2
  L3_2(L4_2)
  ::lbl_23::
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "cancelTributeEvent"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tributeZones
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2._captureEventData
  if L1_2 then
    L1_2 = tributeZones
    L1_2 = L1_2[A0_2]
    L1_2._captureEventData = nil
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.info
    L2_2 = locale
    L3_2 = "cancel_tribute_war"
    L4_2 = tributeZones
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.label
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = MySQL
L9_1 = L9_1.ready
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 1
  L1_2 = cfg
  L1_2 = L1_2.tributeZones
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = cfg
    L4_2 = L4_2.tributeZones
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.name
    L5_2 = MySQL
    L5_2 = L5_2.prepare
    L5_2 = L5_2.await
    L6_2 = "INSERT IGNORE INTO rm_gangs_tribute_zones (name) VALUES (?)"
    L7_2 = {}
    L8_2 = L4_2
    L7_2[1] = L8_2
    L5_2(L6_2, L7_2)
    L5_2 = tributeZones
    L6_2 = cfg
    L6_2 = L6_2.tributeZones
    L6_2 = L6_2[L3_2]
    L5_2[L4_2] = L6_2
    L5_2 = tributeZones
    L5_2 = L5_2[L4_2]
    L6_2 = L4_1
    L6_2 = L6_2()
    L5_2.paymentIntervals = L6_2
    L5_2 = tributeZones
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.resetCronExpression
    if L5_2 then
      L5_2 = tributeZones
      L5_2 = L5_2[L4_2]
      L6_2 = L6_1
      L7_2 = tributeZones
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.resetCronExpression
      L6_2 = L6_2(L7_2)
      L5_2.captureTimerLabel = L6_2
      L5_2 = lib
      L5_2 = L5_2.cron
      L5_2 = L5_2.new
      L6_2 = tributeZones
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.resetCronExpression
      function L7_2()
        local L0_3, L1_3
        L0_3 = L7_1
        L1_3 = L4_2
        L0_3(L1_3)
      end
      L8_2 = {}
      L8_2.maxDelay = 30
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "SELECT * FROM rm_gangs_tribute_zones"
  L0_2 = L0_2(L1_2)
  while true do
    L1_2 = initialized
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L5_2 = L5_2.name
    L6_2 = tributeZones
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = L0_2[L4_2]
      L6_2 = L6_2.owner
      if L6_2 then
        L7_2 = gangs
        L7_2 = L7_2[L6_2]
        if L7_2 then
          L7_2 = tributeZones
          L7_2 = L7_2[L5_2]
          L7_2.owner = L6_2
          L7_2 = tributeZones
          L7_2 = L7_2[L5_2]
          L8_2 = L0_2[L4_2]
          L8_2 = L8_2.captureDate
          L7_2.captureDate = L8_2
          L7_2 = L0_2[L4_2]
          L7_2 = L7_2.lastReceiptDate
          if 0 == L7_2 then
            L7_2 = tributeZones
            L7_2 = L7_2[L5_2]
            L7_2.lastReceiptDate = nil
          else
            L7_2 = L0_2[L4_2]
            L7_2 = L7_2.lastReceiptDate
            if L7_2 then
              L7_2 = getIntervalIndex
              L8_2 = tributeZones
              L8_2 = L8_2[L5_2]
              L8_2 = L8_2.paymentIntervals
              L9_2 = L0_2[L4_2]
              L9_2 = L9_2.lastReceiptDate
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                L8_2 = tributeZones
                L8_2 = L8_2[L5_2]
                L8_2 = L8_2.paymentIntervals
                L8_2 = L8_2[L7_2]
                L8_2.receipt = true
                L8_2 = tributeZones
                L8_2 = L8_2[L5_2]
                L9_2 = tributeZones
                L9_2 = L9_2[L5_2]
                L9_2 = L9_2.paymentIntervals
                L9_2 = L9_2[L7_2]
                L9_2 = L9_2.startTimestamp
                L10_2 = L1_1
                L9_2 = L9_2 + L10_2
                L8_2.paymentResetTime = L9_2
              end
              L8_2 = tributeZones
              L8_2 = L8_2[L5_2]
              L9_2 = L0_2[L4_2]
              L9_2 = L9_2.lastReceiptDate
              L8_2.lastReceiptDate = L9_2
            end
          end
        else
          L7_2 = tributeZones
          L7_2 = L7_2[L5_2]
          L7_2.owner = nil
          L7_2 = MySQL
          L7_2 = L7_2.prepare
          L8_2 = "UPDATE rm_gangs_tribute_zones SET owner = NULL, lastReceiptDate = NULL WHERE name = ?"
          L9_2 = {}
          L10_2 = L5_2
          L9_2[1] = L10_2
          L7_2(L8_2, L9_2)
        end
      end
    else
      L6_2 = MySQL
      L6_2 = L6_2.prepare
      L7_2 = "DELETE FROM rm_gangs_tribute_zones WHERE name = ?"
      L8_2 = {}
      L9_2 = L5_2
      L8_2[1] = L9_2
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = lib
  L1_2 = L1_2.cron
  L1_2 = L1_2.new
  L2_2 = "0 0 * * *"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 1
    L1_3 = cfg
    L1_3 = L1_3.tributeZones
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = cfg
      L4_3 = L4_3.tributeZones
      L4_3 = L4_3[L3_3]
      L4_3 = L4_3.name
      L5_3 = tributeZones
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.paymentIntervals
      if L5_3 then
        L5_3 = tributeZones
        L5_3 = L5_3[L4_3]
        L6_3 = L4_1
        L6_3 = L6_3()
        L5_3.paymentIntervals = L6_3
      end
    end
  end
  L4_2 = {}
  L4_2.maxDelay = 30
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1)
L9_1 = RegisterNetEvent
L10_1 = "rm_gangs:server:getTributePayment"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = tributeZones
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = getIntervalIndex
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.paymentIntervals
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.paymentIntervals
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.receipt
  if L3_2 then
    L3_2 = notify
    L4_2 = L1_2
    L5_2 = locale
    L6_2 = "tribute_already_taken"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = addMoneyToGang
  L4_2 = tributeZones
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.owner
  L5_2 = tributeZones
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.paymentAmount
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = notify
    L4_2 = L1_2
    L5_2 = locale
    L6_2 = "tribute_was_added_to_gang_money"
    L5_2 = L5_2(L6_2)
    L6_2 = "info"
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = notify
    L4_2 = L1_2
    L5_2 = locale
    L6_2 = "add_gang_money_failed"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.paymentIntervals
  L3_2 = L3_2[L2_2]
  L3_2.receipt = true
  L3_2 = tributeZones
  L3_2 = L3_2[A0_2]
  L4_2 = tributeZones
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.paymentIntervals
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.startTimestamp
  L5_2 = L1_1
  L4_2 = L4_2 + L5_2
  L3_2.paymentResetTime = L4_2
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = MySQL
  L4_2 = L4_2.prepare
  L4_2 = L4_2.await
  L5_2 = "UPDATE rm_gangs_tribute_zones SET lastReceiptDate = FROM_UNIXTIME(?) WHERE name = ?"
  L6_2 = {}
  L7_2 = L3_2
  L8_2 = A0_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L4_2(L5_2, L6_2)
  L4_2 = tributeZones
  L4_2 = L4_2[A0_2]
  L5_2 = L3_2 * 1000
  L4_2.lastReceiptDate = L5_2
  L4_2 = TriggerClientEvent
  L5_2 = "rm_gangs:client:updateTribute"
  L6_2 = -1
  L7_2 = {}
  L7_2.name = A0_2
  L8_2 = tributeZones
  L8_2 = L8_2[A0_2]
  L8_2 = L8_2.paymentResetTime
  L7_2.paymentResetTime = L8_2
  L4_2(L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "getGangTributeZones"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L1_2 = {}
    L2_2 = pairs
    L3_2 = tributeZones
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.owner
      if L8_2 == A0_2 then
        L8_2 = #L1_2
        L8_2 = L8_2 + 1
        L9_2 = {}
        L9_2.name = L6_2
        L10_2 = L7_2.label
        L9_2.label = L10_2
        L10_2 = L7_2.paymentAmount
        L9_2.paymentAmount = L10_2
        L10_2 = L7_2.territory
        L9_2.territory = L10_2
        L10_2 = L7_2.owner
        L9_2.owner = L10_2
        L10_2 = L7_2.captureDate
        L9_2.captureDate = L10_2
        L1_2[L8_2] = L9_2
      end
    end
    return L1_2
  else
    return
  end
end
L9_1(L10_1, L11_1)
