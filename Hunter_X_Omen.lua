local Key = "E"
local Toggle = true
local Vim = game:service'VirtualInputManager'
     
game:GetService("UserInputService").InputBegan:Connect(function(wiz, ard)
    if wiz.KeyCode == Enum.KeyCode[Key] and not ard then 
    Toggle = not Toggle
    end
end)


game:GetService('RunService').Stepped:connect(function()
    if Toggle then
    local v = game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text
     Vim:SendKeyEvent(true, v, false, game)
     wait(0.3)
     Vim:SendKeyEvent(false, v, false, game)
    end
end)
