loadstring(game:HttpGet('https://raw.githubusercontent.com/MonkeyDMene/Public-Scripts/main/Hunter_X_Omen.lua'))()

getgenv().stamCheck = true;

local vim = game:service'VirtualInputManager'
local vu = game:GetService("VirtualUser")
local playerWork = game.Workspace.Living.jakefrost177
local hum = playerWork:waitForChild("Humanoid")
local stam = hum.Info.Stamina

function AntiAFK()
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
AntiAFK()
print("code ran")
while stamCheck do
    wait(1)
    if stam.Value >= 50 then
        vim:SendKeyEvent(true, "J", false, game)
        repeat wait() until stam.Value < 50 
    end
end
