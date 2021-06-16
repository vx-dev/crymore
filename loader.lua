-- +++++++++++++++++++++++++++++++++++++++
-- + Haze Infinity Loader by yuhsecurity +
-- + Scripts Not Coded by Me             +
-- +++++++++++++++++++++++++++++++++++++++
-- If game is not supported by haze infinity a attempt will be made to execute Noclip & Infinite Jump


print ('Join the discord - https://discord.gg/WJusFzwB29')
--
if game.PlaceId == 292439477 then -- Phantom Forces
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Phantom%20Forces.lua"))()
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Haze Infinity | Phantom Forces Detected, Loading Script..."
    wait(3)
    h:Remove()
--
elseif game.PlaceId == 3233893879 then -- Bad Business
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Bad%20Business.lua"))()
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Haze Infinity | Bad Business Detected, Loading Script..."
    wait(3)
    h:Remove()
--
elseif game.PlaceId == 286090429 then -- Arsenal
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Haze Infinity | Arsenal Detected, Loading Script..."
    wait(3)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Arsenal.lua"))()
--
elseif game.PlaceId == 301549746 then -- Counter Blox
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Haze Infinity | Counter Blox Detected, Loading Script..."
    wait(3)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Counter%20Blox.lua"))()
--
else
game.Players.LocalPlayer:Kick("Game Not Supported by Haze Infinity | discord.gg/WJusFzwB29") -- Trigger GNS Error
end
