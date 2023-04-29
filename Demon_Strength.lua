getgenv().farm = true

while farm do task.wait(0.1)
local args = {
    [1] = {
        ["Type"] = "End",
        ["Npc"] = workspace:WaitForChild("Npcs"):WaitForChild("Jack"),
        ["Path"] = "DemonStrength"
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dialogue"):FireServer(unpack(args))
end
