if game.PlaceId == 292439477 then -- Phantom Forces
local msger = game:GetService("ReplicatedStorage").Misc.Msger
local globalchat = game:GetService("Players").LocalPlayer.PlayerGui.ChatGame.GlobalChat    
local function talk(message)
    local mes = msger:Clone()
    local mtag = msger:WaitForChild("Tag")
    local offset = 5
    mes.Parent = globalchat
    mes.Text = "[CryMore] "
    mes.TextColor3 = Color3.fromRGB(255, 174, 0);
    mes.Msg.Text = tostring(message)
    mes.Msg.Position = UDim2.new(0, mes.TextBounds.x, 0, 0)
talk("Thanks for using CryMore | discord.gg/KTvtJdu7eG")
print("discord.ggKTvtJdu7eG")
wait(2)
end
else -- Any other game
local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore | Loading Script..."
    wait(2)
    h:Remove()
end