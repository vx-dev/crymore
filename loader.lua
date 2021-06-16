--____   ____     ______      ___       ____       ____         _     ________  __________ ________    
--`MM'   `MM'     `M`MM(      )M'       `MM'      6MMMMb       dM.    `MMMMMMMb.`MMMMMMMMM `MMMMMMMb.  
-- MM     MM       M `MM.     d'         MM      8P    Y8     ,MMb     MM    `Mb MM      \  MM    `Mb  
-- MM     MM       M  `MM.   d'          MM     6M      Mb    d'YM.    MM     MM MM         MM     MM  
-- MM     MM       M   `MM. d'           MM     MM      MM   ,P `Mb    MM     MM MM    ,    MM     MM  
-- MM     MM       M    `MMd             MM     MM      MM   d'  YM.   MM     MM MMMMMMM    MM    .M9  
-- MM     MM       M     dMM.            MM     MM      MM  ,P   `Mb   MM     MM MM    `    MMMMMMM9'  
-- MM     MM       M    d'`MM.           MM     MM      MM  d'    YM.  MM     MM MM         MM  \M\    
-- MM     YM       M   d'  `MM.          MM     YM      M9 ,MMMMMMMMb  MM     MM MM         MM   \M\   
-- MM    / 8b     d8  d'    `MM.         MM    / 8b    d8  d'      YM. MM    .M9 MM      /  MM    \M\  
--_MMMMMMM  YMMMMM9 _M(_    _)MM_       _MMMMMMM  YMMMM9 _dM_     _dMM_MMMMMMM9'_MMMMMMMMM _MM_    \M\_


print ('Join the discord - https://discord.gg/dhsjKNUaf9')
--
if game.PlaceId == 292439477 then -- Phantom Forces
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Phantom%20Forces.lua"))()
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Lux Loader | Phantom Forces Detected, Loading Script..."
    wait(5)
    h:Remove()
    
--
elseif game.PlaceId == 3233893879 then -- Bad Business
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Bad%20Business.lua"))()
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Lux Loader | Bad Business Detected, Loading Script..."
    wait(5)
    h:Remove()
--
elseif game.PlaceId == 286090429 then -- Arsenal
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Lux Loader | Arsenal Detected, Loading Script..."
    wait(5)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Arsenal.lua"))()
--
elseif game.PlaceId == 301549746 then -- Counter Blox
    local h = Instance.new("Message")
    h.Parent = Workspace 
    h.Text = "Lux Loader | Counter Blox Detected, Loading Script..."
    wait(5)
    h:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yuhsecurity/hazeinfinity/main/Scripts/Counter%20Blox.lua"))()
--
else
game.Players.LocalPlayer:Kick("Game Not Supported by Lux Loader | https://discord.gg/dhsjKNUaf9") -- Trigger GNS Error
end
