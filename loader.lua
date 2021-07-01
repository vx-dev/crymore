--                                                                                                
--  ,ad8888ba,                            88b           d88                                       
-- d8"'    `"8b                           888b         d888                                       
--d8'                                     88`8b       d8'88                                       
--88             8b,dPPYba,  8b       d8  88 `8b     d8' 88   ,adPPYba,   8b,dPPYba,   ,adPPYba,  
--88             88P'   "Y8  `8b     d8'  88  `8b   d8'  88  a8"     "8a  88P'   "Y8  a8P_____88  
--Y8,            88           `8b   d8'   88   `8b d8'   88  8b       d8  88          8PP"""""""  
-- Y8a.    .a8P  88            `8b,d8'    88    `888'    88  "8a,   ,a8"  88          "8b,   ,aa  
--  `"Y8888Y"'   88              Y88'     88     `8'     88   `"YbbdP"'   88           `"Ybbd8"'  
--                               d8'                                                              
--                              d8'                                                               
--
print ('Join the discord - https://discord.gg/KTvtJdu7eG')
--
if game.PlaceId == 292439477 then -- Phantom Forces
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | Phantom Forces Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/lux/main/Scripts/Phantom%20Forces.lua"))()
    
--
elseif game.PlaceId == 3233893879 then -- Bad Business
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | Bad Business Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/lux/main/Scripts/Bad%20Business.lua"))()
--
elseif game.PlaceId == 286090429 then -- Arsenal
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | Arsenal Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/lux/main/Scripts/Arsenal.lua"))()
--
elseif game.PlaceId == 301549746 then -- Counter Blox
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | Counter Blox Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/hexagon/main/scripts/CounterBlox.lua"))()
--
elseif game.PlaceId == "6673614635" then -- unConventional
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | unConventional Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/lux/main/Scripts/unConventional"))()
--
elseif game.PlaceId == "6872265039" then -- Bedwars
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | Bedwars Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/lux/main/Scripts/Bedwars"))()
--
elseif game.PlaceId == "3527629287" then -- Big Paintball
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "CryMore Loader | Big Paintball Detected, Loading Script..."
    wait(10)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vx-dev/lux/main/Scripts/Big%20Paintball"))()
else
game.Players.LocalPlayer:Kick("Game Not Supported by CryMore Loader | https://discord.gg/KTvtJdu7eG") -- Trigger GNS Error
end
