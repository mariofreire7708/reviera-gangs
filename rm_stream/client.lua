local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = GetCurrentResourceName
L0_1 = L0_1()
L1_1 = CreateRuntimeTxd
L2_1 = L0_1
L1_1 = L1_1(L2_1)
L2_1 = 0
L3_1 = {}
L4_1 = DoesEntityExist
L5_1 = GetOffsetFromEntityInWorldCoords
L6_1 = GetWorldPositionOfEntityBone
L7_1 = GetEntityCoords
L8_1 = DrawMarker
L9_1 = math
L9_1 = L9_1.exp
L10_1 = math
L10_1 = L10_1.random
L11_1 = {}
L11_1.initialized = false
L11_1.id = nil
L11_1.txn = nil
L11_1.coords = nil
L11_1.scale = 1.0
L11_1.aspectRatio = nil
L11_1.attachData = nil
L11_1.dui = nil
L11_1.render = false
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2.scale = A4_2
  L5_2 = A0_2.id
  if not L5_2 then
    L5_2 = L2_1
    L5_2 = L5_2 + 1
    L2_1 = L5_2
    L5_2 = L0_1
    L6_2 = "-"
    L7_2 = L10_1
    L8_2 = 1
    L9_2 = 999999
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = "-"
    L9_2 = L2_1
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    A0_2.id = L5_2
  end
  L5_2 = A0_2.txn
  if not L5_2 then
    L5_2 = "%s_%s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = L0_1
    L8_2 = A0_2.id
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A0_2.txn = L5_2
  end
  L5_2 = A0_2.dui
  if not L5_2 then
    L5_2 = A2_2 or L5_2
    if not A2_2 then
      L5_2 = 1920
    end
    L6_2 = A3_2 or L6_2
    if not A3_2 then
      L6_2 = 1080
    end
    L7_2 = L5_2 / L6_2
    A0_2.aspectRatio = L7_2
    L7_2 = CreateDui
    L8_2 = "https://cfx-nui-%s/%s"
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = L0_1
    L11_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = L5_2
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    while true do
      L8_2 = IsDuiAvailable
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        break
      end
      L8_2 = Wait
      L9_2 = 10
      L8_2(L9_2)
    end
    L8_2 = GetDuiHandle
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = CreateRuntimeTextureFromDuiHandle
    L10_2 = L1_1
    L11_2 = A0_2.txn
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = {}
    L9_2.obj = L7_2
    L9_2.handle = L8_2
    A0_2.dui = L9_2
  end
  A0_2.initialized = true
end
L11_1.init = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.dui
  if L1_2 then
    L1_2 = DestroyDui
    L2_2 = A0_2.dui
    L2_2 = L2_2.obj
    L1_2(L2_2)
    A0_2.dui = nil
  end
  L1_2 = A0_2.id
  if L1_2 then
    L1_2 = L3_1
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = -1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L3_1
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.id
      L6_2 = A0_2.id
      if L5_2 == L6_2 then
        L5_2 = table
        L5_2 = L5_2.remove
        L6_2 = L3_1
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        break
      end
    end
  end
end
L11_1.destroy = L12_1
function L12_1(A0_2, A1_2, A2_2)
  if A1_2 then
    A0_2.coords = A1_2
  end
  if A2_2 then
    A0_2.scale = A2_2
  end
  A0_2.render = true
end
L11_1.show = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2.render = false
end
L11_1.hide = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.render
  return L1_2
end
L11_1.visible = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      A0_2.attachData = A1_2
    end
  end
  L2_2 = A0_2.attachData
  if L2_2 then
    L2_2 = A0_2.attachData
    L2_2 = L2_2.entity
    if L2_2 then
      L2_2 = L4_1
      L3_2 = A0_2.attachData
      L3_2 = L3_2.entity
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2.attachData
        L2_2 = L2_2.boneIndex
        if L2_2 then
          L2_2 = L6_1
          L3_2 = A0_2.attachData
          L3_2 = L3_2.entity
          L4_2 = A0_2.attachData
          L4_2 = L4_2.boneIndex
          L2_2 = L2_2(L3_2, L4_2)
          A0_2.coords = L2_2
        else
          L2_2 = A0_2.attachData
          L2_2 = L2_2.offset
          if L2_2 then
            L2_2 = L5_1
            L3_2 = A0_2.attachData
            L3_2 = L3_2.entity
            L4_2 = A0_2.attachData
            L4_2 = L4_2.offset
            L4_2 = L4_2.x
            L5_2 = A0_2.attachData
            L5_2 = L5_2.offset
            L5_2 = L5_2.y
            L6_2 = A0_2.attachData
            L6_2 = L6_2.offset
            L6_2 = L6_2.z
            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
            A0_2.coords = L2_2
          else
            L2_2 = L7_1
            L3_2 = A0_2.attachData
            L3_2 = L3_2.entity
            L2_2 = L2_2(L3_2)
            A0_2.coords = L2_2
          end
        end
    end
    else
      L2_2 = A0_2.coords
      if L2_2 then
        L2_2 = A0_2.attachData
        L2_2 = L2_2.offset
        if L2_2 then
          L2_2 = A0_2.coords
          L3_2 = A0_2.attachData
          L3_2 = L3_2.offset
          L2_2 = L2_2 + L3_2
          A0_2.coords = L2_2
        end
      end
    end
  end
end
L11_1.attach = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.attachData
  if L1_2 then
    L1_2 = A0_2.attachData
    L1_2 = L1_2.entity
    if L1_2 then
      L1_2 = L4_1
      L2_2 = A0_2.attachData
      L2_2 = L2_2.entity
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = L7_1
        L2_2 = A0_2.attachData
        L2_2 = L2_2.entity
        L1_2 = L1_2(L2_2)
        A0_2.coords = L1_2
      end
    end
    A0_2.attachData = nil
  end
end
L11_1.detach = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.dui
  if L2_2 then
    L2_2 = SendDuiMessage
    L3_2 = A0_2.dui
    L3_2 = L3_2.obj
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = A1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L11_1.msg = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = setmetatable
  L5_2 = {}
  L6_2 = {}
  L7_2 = L11_1
  L6_2.__index = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.init = nil
  while true do
    L5_2 = L4_2.initialized
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 10
    L5_2(L6_2)
  end
  L5_2 = L3_1
  L5_2 = #L5_2
  L6_2 = L5_2 + 1
  L5_2 = L3_1
  L5_2[L6_2] = L4_2
  return L4_2
end
create3DNui = L12_1
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  while true do
    L0_2 = L3_1
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = 1
      L1_2 = L3_1
      L1_2 = #L1_2
      L2_2 = 1
      for L3_2 = L0_2, L1_2, L2_2 do
        L4_2 = L3_1
        L4_2 = L4_2[L3_2]
        L5_2 = L4_2.render
        if L5_2 then
          L5_2 = L4_2.attachData
          if L5_2 then
            L5_2 = L4_2.attachData
            L5_2 = L5_2.entity
            if L5_2 then
              L5_2 = L4_1
              L6_2 = L4_2.attachData
              L6_2 = L6_2.entity
              L5_2 = L5_2(L6_2)
              if L5_2 then
                L5_2 = L4_2.attachData
                L5_2 = L5_2.boneIndex
                if L5_2 then
                  L5_2 = L6_1
                  L6_2 = L4_2.attachData
                  L6_2 = L6_2.entity
                  L7_2 = L4_2.attachData
                  L7_2 = L7_2.boneIndex
                  L5_2 = L5_2(L6_2, L7_2)
                  L4_2.coords = L5_2
                else
                  L5_2 = L4_2.attachData
                  L5_2 = L5_2.offset
                  if L5_2 then
                    L5_2 = L5_1
                    L6_2 = L4_2.attachData
                    L6_2 = L6_2.entity
                    L7_2 = L4_2.attachData
                    L7_2 = L7_2.offset
                    L7_2 = L7_2.x
                    L8_2 = L4_2.attachData
                    L8_2 = L8_2.offset
                    L8_2 = L8_2.y
                    L9_2 = L4_2.attachData
                    L9_2 = L9_2.offset
                    L9_2 = L9_2.z
                    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
                    L4_2.coords = L5_2
                  else
                    L5_2 = L7_1
                    L6_2 = L4_2.attachData
                    L6_2 = L6_2.entity
                    L5_2 = L5_2(L6_2)
                    L4_2.coords = L5_2
                  end
                end
              end
            end
          end
          L5_2 = L7_1
          L6_2 = PlayerPedId
          L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L6_2()
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
          L6_2 = L4_2.coords
          L6_2 = L5_2 - L6_2
          L6_2 = #L6_2
          L7_2 = vec2
          L8_2 = L4_2.scale
          L9_2 = L4_2.aspectRatio
          L8_2 = L8_2 * L9_2
          L9_2 = L4_2.scale
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = L9_1
          L9_2 = -0.05 * L6_2
          L8_2 = L8_2(L9_2)
          L7_2 = L7_2 * L8_2
          L8_2 = L4_2.coords
          L9_2 = vec3
          L10_2 = 0
          L11_2 = 0
          L12_2 = L7_2.y
          L12_2 = L12_2 * 0.5
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2 = L8_2 + L9_2
          L9_2 = L8_1
          L10_2 = 43
          L11_2 = L8_2.x
          L12_2 = L8_2.y
          L13_2 = L8_2.z
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 90.0
          L18_2 = 180.0
          L19_2 = 155.0
          L20_2 = L7_2.x
          L21_2 = L7_2.y
          L22_2 = 0.0
          L23_2 = 255
          L24_2 = 255
          L25_2 = 255
          L26_2 = 255
          L27_2 = false
          L28_2 = true
          L29_2 = 0
          L30_2 = false
          L31_2 = L0_1
          L32_2 = L4_2.txn
          L33_2 = false
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
        end
      end
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "onResourceStop"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  if A0_2 == L1_2 then
    L1_2 = 1
    L2_2 = L3_1
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L3_1
      L5_2 = L5_2[L4_2]
      L7_2 = L5_2
      L6_2 = L5_2.destroy
      L6_2(L7_2)
    end
  end
end
L12_1(L13_1, L14_1)
