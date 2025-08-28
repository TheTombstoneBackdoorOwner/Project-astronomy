--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @Idk
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local localPlayer = Players.LocalPlayer

local function createRemote()
    if not ReplicatedStorage:FindFirstChild("AstronomyRemote") then
        local remote = Instance.new("RemoteEvent")
        remote.Name = "AstronomyRemote"
        remote.Parent = ReplicatedStorage
    end
    return ReplicatedStorage:FindFirstChild("AstronomyRemote")
end

local remote = createRemote()

local function onRemoteEventReceived(player, scriptCode)
    if player ~= localPlayer then
        loadstring(scriptCode)()
    end
end

remote.OnClientEvent:Connect(onRemoteEventReceived)

local function sendScriptToOthers(scriptCode)
    remote:FireServer(scriptCode)
end

local CollectionService = game:GetService("CollectionService")
local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui", localPlayer:WaitForChild("PlayerGui"))
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Frame_2"]["BorderSizePixel"] = 0
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(161, 161, 161)
G2L["Frame_2"]["Size"] = UDim2.new(0.23125, 0, 0.19677, 0)
G2L["Frame_2"]["Position"] = UDim2.new(0.19844, 0, 0.06739, 0)
G2L["Frame_2"]["BackgroundTransparency"] = 0.25

G2L["UICorner_3"] = Instance.new("UICorner", G2L["Frame_2"])

G2L["Credits_4"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["Credits_4"]["BorderSizePixel"] = 0
G2L["Credits_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Credits_4"]["BackgroundTransparency"] = 1
G2L["Credits_4"]["Size"] = UDim2.new(1, 0, 0.08219, 0)
G2L["Credits_4"]["Text"] = "Made by ughuhh09/Idk https://discord.gg/yc62SqNcNr"
G2L["Credits_4"]["Name"] = "Credits"
G2L["Credits_4"]["Position"] = UDim2.new(-0.00676, 0, 0.91781, 0)

G2L["scriptframe_5"] = Instance.new("TextBox", G2L["Frame_2"])
G2L["scriptframe_5"]["CursorPosition"] = -1
G2L["scriptframe_5"]["Name"] = "scriptframe"
G2L["scriptframe_5"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["scriptframe_5"]["PlaceholderColor3"] = Color3.fromRGB(87, 87, 87)
G2L["scriptframe_5"]["BorderSizePixel"] = 0
G2L["scriptframe_5"]["TextYAlignment"] = Enum.TextYAlignment.Top
G2L["scriptframe_5"]["BackgroundColor3"] = Color3.fromRGB(121, 121, 121)
G2L["scriptframe_5"]["PlaceholderText"] = "scripts here.."
G2L["scriptframe_5"]["Size"] = UDim2.new(0.77027, 0, 0.80822, 0)
G2L["scriptframe_5"]["Position"] = UDim2.new(0.04054, 0, 0.06849, 0)
G2L["scriptframe_5"]["Text"] = ""

G2L["execute_6"] = Instance.new("TextButton", G2L["Frame_2"])
G2L["execute_6"]["TextWrapped"] = true
G2L["execute_6"]["BorderSizePixel"] = 0
G2L["execute_6"]["TextScaled"] = true
G2L["execute_6"]["BackgroundColor3"] = Color3.fromRGB(15, 255, 0)
G2L["execute_6"]["Size"] = UDim2.new(0.14865, 0, 0.38356, 0)
G2L["execute_6"]["Text"] = "EXE"
G2L["execute_6"]["Name"] = "execute"
G2L["execute_6"]["Position"] = UDim2.new(0.83784, 0, 0.08219, 0)

G2L["Version_7"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["Version_7"]["TextWrapped"] = true
G2L["Version_7"]["BorderSizePixel"] = 0
G2L["Version_7"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["Version_7"]["TextYAlignment"] = Enum.TextYAlignment.Top
G2L["Version_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Version_7"]["TextColor3"] = Color3.fromRGB(119, 119, 119)
G2L["Version_7"]["BackgroundTransparency"] = 1
G2L["Version_7"]["Size"] = UDim2.new(0.22973, 0, 0.64384, 0)
G2L["Version_7"]["Text"] = "Version: 0.1 expect bugs"
G2L["Version_7"]["Name"] = "Version"
G2L["Version_7"]["Position"] = UDim2.new(1.02027, 0, 0.0274, 0)

G2L["TextLabel_8"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["TextLabel_8"]["BorderSizePixel"] = 0
G2L["TextLabel_8"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["TextLabel_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel_8"]["TextColor3"] = Color3.fromRGB(153, 153, 153)
G2L["TextLabel_8"]["BackgroundTransparency"] = 1
G2L["TextLabel_8"]["Size"] = UDim2.new(0.27703, 0, 0.10959, 0)
G2L["TextLabel_8"]["BorderColor3"] = Color3.fromRGB(28, 42, 54)
G2L["TextLabel_8"]["Text"] = "project astronomy"
G2L["TextLabel_8"]["Position"] = UDim2.new(0.02027, 0, -0.13699, 0)

G2L["UIAspectRatioConstraint_9"] = Instance.new("UIAspectRatioConstraint", G2L["Frame_2"])
G2L["UIAspectRatioConstraint_9"]["AspectRatio"] = 2.0274

G2L["execute_6"].MouseButton1Click:Connect(function()
    local scriptCode = G2L["scriptframe_5"].Text
    if scriptCode ~= "" then
        loadstring(scriptCode)()
        sendScriptToOthers(scriptCode)
    end
end)

local function makeDraggable(frame, handle)
    local dragging = false
    local dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    handle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

return G2L["ScreenGui_1"], require
