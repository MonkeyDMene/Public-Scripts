_G.Color = Color3.fromRGB(66, 135, 245)
_G.Color2 = Color3.fromRGB(66, 135, 245)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slightten/ui-libs/main/funni"))()
local window = library:CreateWindow("meneHub", Enum.KeyCode.RightControl)
local plr = game.Players.LocalPlayer
local tab1 = window:CreateTab("Main")
local tab2 = window:CreateTab("Misc")
local sect2 = tab2:CreateSector("Misc", 'left')
sect2:AddLabel("Join discord @ https://discord.gg/792Xv6QMJY")
sect2:AddLabel("Mene#5536")

local sect1 = tab1:CreateSector("Main", 'left')

local list = {
    "Eager",
    "Intimidating",
    "Zealous",
    "Unforgiving",
    "Menacing",
    "Legendary"
}

sect1:AddLabel("High Risk of ban")
sect1:AddLabel("If in public server")
sect1:AddLabel("Under is buggy")

sect1:AddDropdown("Enemies",list, 'Eager', false, function(triplea)
getgenv().qa = triplea
end)

sect1:AddToggle("Stand User Farm", false, function(a)
    aa = a
    while aa do task.wait()
    for i,v in pairs(workspace.Enemies:GetChildren()) do
        if string.match(v.Name,tostring(qa)) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position + Vector3.new(0,6,0),v.HumanoidRootPart.Position)
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("MouseClick")
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(Enum.KeyCode.R)
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(Enum.KeyCode.E)
            plr.Character:FindFirstChildWhichIsA("Model").HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
    end
end
end
end)

sect1:AddToggle("Auto Equip Stand",false,function(c)
    cc = c
    while cc do task.wait()
        if not plr.Character:FindFirstChildWhichIsA("Model") then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(Enum.KeyCode.Q,nil,CFrame.new())
        
    end
    end
end)

local function item()
    for i,v in pairs(workspace:GetDescendants()) do
        if string.match(v.Name,"Stand Arrow") then
            plr.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
            fireproximityprompt(v.Handle.ProximityPrompt)
        end
    end
end

sect1:AddToggle("Item Farm",false,function(b)
    bb = b
    while bb do task.wait()
item()
    end
end)

sect1:AddToggle("Chest Farm",false,function(b)
    bb = b
    while bb do task.wait()
        for i,v in pairs(workspace:GetChildren()) do
            if string.match(v.Name,"Chest") then
                plr.Character.HumanoidRootPart.CFrame = v.Metal.CFrame
                fireproximityprompt(v.Top.Proximity.ProximityPrompt)
            end
        end
    end
end)
