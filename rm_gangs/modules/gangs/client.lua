local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
gangs = L0_1
L0_1 = {}
L1_1 = nil
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = L0_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      L5_2 = L4_2
      L4_2 = L4_2.remove
      L4_2(L5_2)
    end
  end
  L0_2 = removeGarage
  if L0_2 then
    L0_2 = pcall
    function L1_2()
      local L0_3, L1_3
      L0_3 = removeGarage
      L1_3 = L1_1
      L0_3(L1_3)
    end
    L0_2(L1_2)
  end
  L0_2 = nil
  L1_1 = L0_2
end
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if "garage" == L7_2 then
      L9_2 = registerGarage
      if L9_2 then
        L9_2 = pcall
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = registerGarage
          L1_3 = {}
          L1_3.garageType = "group"
          L1_3.vehicleType = "land"
          L2_3 = A2_2
          L3_3 = " Garage"
          L2_3 = L2_3 .. L3_3
          L1_3.label = L2_3
          L2_3 = L8_2
          L1_3.coord = L2_3
          L2_3 = A1_2
          L1_3.gang = L2_3
          L0_3 = L0_3(L1_3)
          L1_1 = L0_3
        end
        L9_2(L10_2)
      end
      L9_2 = openGarage
      if L9_2 then
        L9_2 = false
        L10_2 = L0_1
        L10_2 = #L10_2
        L11_2 = L10_2 + 1
        L10_2 = L0_1
        L12_2 = lib
        L12_2 = L12_2.points
        L12_2 = L12_2.new
        L13_2 = {}
        L14_2 = L8_2.xyz
        L13_2.coords = L14_2
        L13_2.distance = 30
        function L14_2()
          local L0_3, L1_3
          L0_3 = false
          L9_2 = L0_3
          L0_3 = lib
          L0_3 = L0_3.hideTextUI
          L0_3()
        end
        L13_2.onExit = L14_2
        function L14_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
          L1_3 = A0_3.currentDistance
          if L1_3 < 1 then
            L1_3 = L9_2
            if not L1_3 then
              L1_3 = true
              L9_2 = L1_3
              L1_3 = lib
              L1_3 = L1_3.showTextUI
              L2_3 = "[E] - "
              L3_3 = locale
              L4_3 = L7_2
              L3_3 = L3_3(L4_3)
              L2_3 = L2_3 .. L3_3
              if not L2_3 then
                L2_3 = L7_2
                L3_3 = L2_3
                L2_3 = L2_3.gsub
                L4_3 = "^%l"
                L5_3 = string
                L5_3 = L5_3.upper
                L2_3 = L2_3(L3_3, L4_3, L5_3)
              end
              L1_3(L2_3)
            else
              L1_3 = IsControlJustReleased
              L2_3 = 0
              L3_3 = 38
              L1_3 = L1_3(L2_3, L3_3)
              if L1_3 then
                L1_3 = lib
                L1_3 = L1_3.hideTextUI
                L1_3()
                L1_3 = pcall
                function L2_3()
                  local L0_4, L1_4, L2_4, L3_4
                  L0_4 = openGarage
                  L1_4 = {}
                  L1_4.garageType = "group"
                  L1_4.vehicleType = "land"
                  L2_4 = A2_2
                  L3_4 = " Garage"
                  L2_4 = L2_4 .. L3_4
                  L1_4.label = L2_4
                  L2_4 = L8_2
                  L1_4.coord = L2_4
                  L2_4 = A1_2
                  L1_4.gang = L2_4
                  L2_4 = cache
                  L2_4 = L2_4.vehicle
                  L1_4.vehicle = L2_4
                  L2_4 = L1_1
                  L1_4.garageHandle = L2_4
                  L0_4(L1_4)
                end
                L1_3(L2_3)
              end
            end
          else
            L1_3 = L9_2
            if L1_3 then
              L1_3 = lib
              L1_3 = L1_3.hideTextUI
              L1_3()
              L1_3 = false
              L9_2 = L1_3
            else
              L1_3 = DrawMarker
              L2_3 = 2
              L3_3 = A0_3.coords
              L3_3 = L3_3.x
              L4_3 = A0_3.coords
              L4_3 = L4_3.y
              L5_3 = A0_3.coords
              L5_3 = L5_3.z
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = 0
              L11_3 = 0.0
              L12_3 = 0.2
              L13_3 = 0.2
              L14_3 = 0.2
              L15_3 = 255
              L16_3 = 255
              L17_3 = 255
              L18_3 = 255
              L19_3 = false
              L20_3 = true
              L21_3 = 2
              L22_3 = false
              L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
            end
          end
        end
        L13_2.nearby = L14_2
        L12_2 = L12_2(L13_2)
        L10_2[L11_2] = L12_2
      end
    else
      L9_2 = false
      L10_2 = L0_1
      L10_2 = #L10_2
      L11_2 = L10_2 + 1
      L10_2 = L0_1
      L12_2 = lib
      L12_2 = L12_2.points
      L12_2 = L12_2.new
      L13_2 = {}
      L14_2 = L8_2.xyz
      L13_2.coords = L14_2
      L13_2.distance = 3
      L13_2.type = L7_2
      function L14_2()
        local L0_3, L1_3
        L0_3 = false
        L9_2 = L0_3
        L0_3 = lib
        L0_3 = L0_3.hideTextUI
        L0_3()
      end
      L13_2.onExit = L14_2
      function L14_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
        L1_3 = A0_3.currentDistance
        if L1_3 < 1 then
          L1_3 = L9_2
          if not L1_3 then
            L1_3 = true
            L9_2 = L1_3
            L1_3 = lib
            L1_3 = L1_3.showTextUI
            L2_3 = "[E] - "
            L3_3 = locale
            L4_3 = L7_2
            L3_3 = L3_3(L4_3)
            L2_3 = L2_3 .. L3_3
            if not L2_3 then
              L2_3 = L7_2
              L3_3 = L2_3
              L2_3 = L2_3.gsub
              L4_3 = "^%l"
              L5_3 = string
              L5_3 = L5_3.upper
              L2_3 = L2_3(L3_3, L4_3, L5_3)
            end
            L1_3(L2_3)
          else
            L1_3 = IsControlJustReleased
            L2_3 = 0
            L3_3 = 38
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L1_3 = lib
              L1_3 = L1_3.hideTextUI
              L1_3()
              L1_3 = L7_2
              if "management" == L1_3 then
                L1_3 = openManagementMenu
                if L1_3 then
                  L1_3 = openManagementMenu
                  L2_3 = A1_2
                  L1_3(L2_3)
              end
              else
                L1_3 = L7_2
                if "clothing" == L1_3 then
                  L1_3 = cfg
                  L1_3 = L1_3.openClothing
                  if L1_3 then
                    L1_3 = cfg
                    L1_3 = L1_3.openClothing
                    L2_3 = A1_2
                    L1_3(L2_3)
                end
                else
                  L1_3 = L7_2
                  if "stash" == L1_3 then
                    L1_3 = openStash
                    if L1_3 then
                      L1_3 = openStash
                      L2_3 = A1_2
                      L1_3(L2_3)
                    end
                  end
                end
              end
            end
          end
        else
          L1_3 = L9_2
          if L1_3 then
            L1_3 = lib
            L1_3 = L1_3.hideTextUI
            L1_3()
            L1_3 = false
            L9_2 = L1_3
          else
            L1_3 = DrawMarker
            L2_3 = 2
            L3_3 = A0_3.coords
            L3_3 = L3_3.x
            L4_3 = A0_3.coords
            L4_3 = L4_3.y
            L5_3 = A0_3.coords
            L5_3 = L5_3.z
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0
            L11_3 = 0.0
            L12_3 = 0.2
            L13_3 = 0.2
            L14_3 = 0.2
            L15_3 = 255
            L16_3 = 255
            L17_3 = 255
            L18_3 = 255
            L19_3 = false
            L20_3 = true
            L21_3 = 2
            L22_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
          end
        end
      end
      L13_2.nearby = L14_2
      L12_2 = L12_2(L13_2)
      L10_2[L11_2] = L12_2
    end
  end
end
L4_1 = AddEventHandler
L5_1 = "rm_gangs:client:playerLoaded"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = pairs
  L3_2 = A0_2.gangs
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = gangs
    L9_2 = {}
    L9_2.name = L6_2
    L10_2 = L7_2.label
    L9_2.label = L10_2
    L10_2 = L7_2.money
    L9_2.money = L10_2
    L10_2 = L7_2.territory
    L9_2.territory = L10_2
    L10_2 = L7_2.locations
    L9_2.locations = L10_2
    L10_2 = L7_2.color
    L9_2.color = L10_2
    L10_2 = L7_2.logoURL
    L9_2.logoURL = L10_2
    L10_2 = L7_2.loyalty
    if not L10_2 then
      L10_2 = 0
    end
    L9_2.loyalty = L10_2
    L10_2 = L7_2._turfWarId
    L9_2._turfWarId = L10_2
    L8_2[L6_2] = L9_2
    L8_2 = table
    L8_2 = L8_2.clone
    L9_2 = L7_2.territory
    L8_2 = L8_2(L9_2)
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = {}
      L0_3.type = "gang"
      L1_3 = L6_2
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
        L0_3 = gangs
        L1_3 = L6_2
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3._turfWarId
        if L0_3 then
          L0_3 = SendNUIMessage
          L1_3 = {}
          L1_3.action = "turfEventScoreboard"
          L2_3 = gangs
          L3_3 = L6_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3._turfWarId
          L1_3.data = L2_3
          L0_3(L1_3)
        end
      end
    end
    L8_2.onEnter = L9_2
    function L9_2()
      local L0_3, L1_3
      currentZone = nil
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "locationInfo"
      L1_3.data = nil
      L0_3(L1_3)
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "turfEventScoreboard"
      L1_3.data = nil
      L0_3(L1_3)
    end
    L8_2.onExit = L9_2
    L9_2 = cfg
    L9_2 = L9_2.debug
    if not L9_2 then
      L9_2 = L8_2.debug
    end
    L8_2.debug = L9_2
    L9_2 = gangs
    L9_2 = L9_2[L6_2]
    L10_2 = lib
    L10_2 = L10_2.zones
    L10_2 = L10_2.poly
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2.zone = L10_2
    L9_2 = A1_2.gang
    L9_2 = L9_2.name
    if L6_2 == L9_2 then
      L9_2 = L3_1
      L10_2 = L7_2.locations
      L11_2 = L6_2
      L12_2 = L7_2.label
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "rm_gangs:client:playerUnloaded"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L2_1
  L0_2()
  L0_2 = pairs
  L1_2 = gangs
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.zone
    if L6_2 then
      L6_2 = L5_2.zone
      L7_2 = L6_2
      L6_2 = L6_2.remove
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  gangs = L0_2
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "rm_gangs:playerGangUpdate"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L2_1
  L0_2()
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "update"
  L2_2 = {}
  L3_2 = playerGang
  L2_2.playerGang = L3_2
  L1_2.data = L2_2
  L0_2(L1_2)
  L0_2 = gangs
  L1_2 = playerGang
  L1_2 = L1_2.name
  L0_2 = L0_2[L1_2]
  if L0_2 then
    L0_2 = L3_1
    L1_2 = gangs
    L2_2 = playerGang
    L2_2 = L2_2.name
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.locations
    L2_2 = playerGang
    L2_2 = L2_2.name
    L3_2 = gangs
    L4_2 = playerGang
    L4_2 = L4_2.name
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.label
    L0_2(L1_2, L2_2, L3_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "updateLogoURL"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "rm_gangs:server:updateLogoURL"
  L4_2 = A0_2.url
  L2_2(L3_2, L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rm_gangs:client:updateLogoURL"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L3_2.logoURL = A0_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rm_gangs:client:updateLoyalty"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L3_2.loyalty = A0_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rm_gangs:client:onGangMoneyAdded"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gangs
  L2_2 = A0_2.gangName
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    return
  end
  L1_2 = gangs
  L2_2 = A0_2.gangName
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.newAmount
  L1_2.money = L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.gangName
  L4_2.gangName = L5_2
  L5_2 = A0_2.newAmount
  L4_2.amount = L5_2
  L3_2.money = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rm_gangs:client:onGangMoneyRemoved"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gangs
  L2_2 = A0_2.gangName
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    return
  end
  L1_2 = gangs
  L2_2 = A0_2.gangName
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.newAmount
  L1_2.money = L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.gangName
  L4_2.gangName = L5_2
  L5_2 = A0_2.newAmount
  L4_2.amount = L5_2
  L3_2.money = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rm_gangs:client:onGangMoneySet"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gangs
  L2_2 = A0_2.gangName
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    return
  end
  L1_2 = gangs
  L2_2 = A0_2.gangName
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.newAmount
  L1_2.money = L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "update"
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.gangName
  L4_2.gangName = L5_2
  L5_2 = A0_2.newAmount
  L4_2.amount = L5_2
  L3_2.money = L4_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "getCurrentGangZone"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = currentZone
  if L0_2 then
    L0_2 = currentZone
    L0_2 = L0_2.type
    if "gang" == L0_2 then
      L0_2 = gangs
      L1_2 = currentZone
      L1_2 = L1_2.name
      L0_2 = L0_2[L1_2]
      if L0_2 then
        L0_2 = currentZone
        L0_2 = L0_2.name
        L1_2 = gangs
        L1_2 = L1_2[L0_2]
        L2_2 = {}
        L2_2.name = L0_2
        L3_2 = L1_2.label
        L2_2.label = L3_2
        L3_2 = L1_2.color
        L2_2.color = L3_2
        L3_2 = L1_2.loyalty
        L2_2.loyalty = L3_2
        L3_2 = L1_2.territory
        L2_2.territory = L3_2
        L3_2 = L1_2.logoURL
        L2_2.logoURL = L3_2
        return L2_2
    end
  end
  else
    L0_2 = nil
    return L0_2
  end
end
L4_1(L5_1, L6_1)
L4_1 = exports
L5_1 = "getPlayerGangInfo"
function L6_1()
  local L0_2, L1_2
  L0_2 = playerGang
  return L0_2
end
L4_1(L5_1, L6_1)
