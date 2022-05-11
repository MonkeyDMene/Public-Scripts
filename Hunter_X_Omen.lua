task.spawn(function()
    while task.wait() do
        pcall(function()
                  if game:GetService("Workspace").Living[game.Players.LocalPlayer.Name].Humanoid.Info.Stamina.Value == 100 then
                  _G.Enabled = true
local plrs = game:GetService("Players")

game:GetService("RunService").Stepped:Connect(function()
    if _G.Enabled then
        if plrs.LocalPlayer.Character.Humanoid.Info.Stamina.Value >= 1 then
            if not plrs.LocalPlayer.PlayerGui:FindFirstChild("PushupsGui") then
                game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("J", function()end)
            else
                plrs.LocalPlayer.PlayerGui.PushupsGui.Pushups.RemoteEvent:FireServer()
            end
        end
    end
end)
                  else 
                  if game:GetService("Workspace").Living[game.Players.LocalPlayer.Name].Humanoid.Info.Stamina.Value == 0 then
                  game.Players.LocalPlayer.Character:Destroy()
               end
            end
        end)
    end
end)
