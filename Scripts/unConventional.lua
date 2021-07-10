--// Services \\--
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

--// ESP Library by Kiriot22 \\--
local ESP = loadstring(game:HttpGetAsync("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(false)

--// ESP Override \\--
ESP.Overrides.GetColor = function(Character)
    if ESP.AuraColors == false then
        return Color3.new(1,1,1)
    end

    local Stats = GetPlayerStats(Character)
    if Stats == nil then
        return
    end

    return Color3.new(unpack(Stats.AuraColor))
end

--// ESP Settings \\--
ESP.PlayerNames = false
ESP.PlayerHealth = false
ESP.Boxes = false
ESP.Tracers = false
ESP.AuraColors = false
ESP.AuraStamina = false
ESP.BarrierHealth = false

--// Tables \\--
local OldStats = {}
local OldInfo = {}
local White = {1, 1, 1}

--// Get Player Stats \\--
function GetPlayerStats(Character)
    local Player = Players:GetPlayerFromCharacter(Character)
    if Player == nil then
        return nil
    end

    local Stats = Player:FindFirstChild("Stats")
    if Stats == nil then
        return nil
    end

    local RemainingAura = Player:FindFirstChild("RemainingAura")
    local Stats = HttpService:JSONDecode(Stats.Value)
    return {
        Ability = Stats.Ability,
        Potential = Stats.MasteryLevel,
        AuraColor = Stats.Ability == "Aura Manipulation" and White or Stats.AuraColor,
        Amped = Player:FindFirstChild("Amplifier") and 1.5 or Player:FindFirstChild("Weakened") and 0.5 or 1,
        CurrentStamina = ESP.AuraStamina and RemainingAura and RemainingAura.Value or 0,
        MaxStamina = ESP.AuraStamina and RemainingAura and RemainingAura:WaitForChild("Max").Value or 0,
        BarrierHealth = Character:FindFirstChild("BarrierHealth") and math.floor(Character.BarrierHealth.Value*10)/10 or nil,
        Health = ESP.PlayerHealth and Character:FindFirstChild("Humanoid") and math.floor(Character.Humanoid.Health*10)/10 or 0
    }
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local Window_1 = Library:CreateWindow("ESP by Ezpi")
Window_1:AddToggle({
    text = 'Enabled',
    callback = function(A_1)
        ESP:Toggle(A_1)
    end
})
Window_1:AddToggle({
    text = 'Names',
    callback = function(A_1)
        ESP.PlayerNames = A_1
    end
})
Window_1:AddToggle({
    text = 'Health',
    callback = function(A_1)
        ESP.PlayerHealth = A_1
    end
})
Window_1:AddToggle({
    text = 'Boxes',
    callback = function(A_1)
        ESP.Boxes = A_1
    end
})
Window_1:AddToggle({
    text = 'Tracers',
    callback = function(A_1)
        ESP.Tracers = A_1
    end
})
Window_1:AddToggle({
    text = 'Aura Colors',
    callback = function(A_1)
        ESP.AuraColors = A_1
    end
})
local Folder_1 = Window_1:AddFolder("Ability Specific")
Folder_1:AddToggle({
    text = 'Aura Stamina',
    callback = function(A_1)
        ESP.AuraStamina = A_1
    end
})
Folder_1:AddToggle({
    text = 'Barrier Health',
    callback = function(A_1)
        ESP.BarrierHealth = A_1
    end
})
Library:Init()

--// Player ESP \\--
function CharacterESP(Player)
    local Character = Player.Character

    local Stats = GetPlayerStats(Character)
    if Stats == nil then
        return
    end

    local Stats_String = HttpService:JSONEncode(Stats)
    if Stats_String ~= OldStats[Player] then
        local Level = math.floor(Stats.Potential * 10) / 10
        OldInfo[Player] = (ESP.PlayerHealth and Stats.Health .. "/100" .. "\n" or "") .. Stats.Ability .. " (" .. Level * Stats.Amped .. ")" .. (Stats.Amped == 1.5 and " (Amped)" or Stats.Amped == 0.5 and " (Weakened)" or "") .. "\n" ..(ESP.AuraStamina == true and Stats.Ability == "Aura Manipulation" and Stats.CurrentStamina .. "/" .. Stats.MaxStamina or ESP.BarrierHealth and Stats.BarrierHealth and "Barrier Health: " .. Stats.BarrierHealth or "")
    end

    local Box = ESP:GetBox(Character)
    if Box ~= nil and OldInfo[Player] ~= nil then
        Box.Name = (ESP.PlayerNames == true and Player.Name .. "\n" or "") .. OldInfo[Player]
        Box.Components.Distance.Transparency = 0
        OldStats[Player] = Stats_String
    end
end

--// Apply ESP \\--
while wait(0.1) do
    if ESP.Enabled then
        local Players_Table = Players:GetPlayers()
        for Index = 2, #Players_Table do local Player = Players_Table[Index]
            if Player.Character then
                CharacterESP(Player)
            end
        end
    end
end--// Services \\--
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

--// ESP Library by Kiriot22 \\--
local ESP = loadstring(game:HttpGetAsync("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(false)

--// ESP Override \\--
ESP.Overrides.GetColor = function(Character)
    if ESP.AuraColors == false then
        return Color3.new(1,1,1)
    end

    local Stats = GetPlayerStats(Character)
    if Stats == nil then
        return
    end

    return Color3.new(unpack(Stats.AuraColor))
end

--// ESP Settings \\--
ESP.PlayerNames = false
ESP.PlayerHealth = false
ESP.Boxes = false
ESP.Tracers = false
ESP.AuraColors = false
ESP.AuraStamina = false
ESP.BarrierHealth = false

--// Tables \\--
local OldStats = {}
local OldInfo = {}
local White = {1, 1, 1}

--// Get Player Stats \\--
function GetPlayerStats(Character)
    local Player = Players:GetPlayerFromCharacter(Character)
    if Player == nil then
        return nil
    end

    local Stats = Player:FindFirstChild("Stats")
    if Stats == nil then
        return nil
    end

    local RemainingAura = Player:FindFirstChild("RemainingAura")
    local Stats = HttpService:JSONDecode(Stats.Value)
    return {
        Ability = Stats.Ability,
        Potential = Stats.MasteryLevel,
        AuraColor = Stats.Ability == "Aura Manipulation" and White or Stats.AuraColor,
        Amped = Player:FindFirstChild("Amplifier") and 1.5 or Player:FindFirstChild("Weakened") and 0.5 or 1,
        CurrentStamina = ESP.AuraStamina and RemainingAura and RemainingAura.Value or 0,
        MaxStamina = ESP.AuraStamina and RemainingAura and RemainingAura:WaitForChild("Max").Value or 0,
        BarrierHealth = Character:FindFirstChild("BarrierHealth") and math.floor(Character.BarrierHealth.Value*10)/10 or nil,
        Health = ESP.PlayerHealth and Character:FindFirstChild("Humanoid") and math.floor(Character.Humanoid.Health*10)/10 or 0
    }
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://pastebin.com/raw/edJT9EGX'))()
local Window_1 = Library:CreateWindow("ESP by Ezpi")
Window_1:AddToggle({
    text = 'Enabled',
    callback = function(A_1)
        ESP:Toggle(A_1)
    end
})
Window_1:AddToggle({
    text = 'Names',
    callback = function(A_1)
        ESP.PlayerNames = A_1
    end
})
Window_1:AddToggle({
    text = 'Health',
    callback = function(A_1)
        ESP.PlayerHealth = A_1
    end
})
Window_1:AddToggle({
    text = 'Boxes',
    callback = function(A_1)
        ESP.Boxes = A_1
    end
})
Window_1:AddToggle({
    text = 'Tracers',
    callback = function(A_1)
        ESP.Tracers = A_1
    end
})
Window_1:AddToggle({
    text = 'Aura Colors',
    callback = function(A_1)
        ESP.AuraColors = A_1
    end
})
local Folder_1 = Window_1:AddFolder("Ability Specific")
Folder_1:AddToggle({
    text = 'Aura Stamina',
    callback = function(A_1)
        ESP.AuraStamina = A_1
    end
})
Folder_1:AddToggle({
    text = 'Barrier Health',
    callback = function(A_1)
        ESP.BarrierHealth = A_1
    end
})
Library:Init()

--// Player ESP \\--
function CharacterESP(Player)
    local Character = Player.Character

    local Stats = GetPlayerStats(Character)
    if Stats == nil then
        return
    end

    local Stats_String = HttpService:JSONEncode(Stats)
    if Stats_String ~= OldStats[Player] then
        local Level = math.floor(Stats.Potential * 10) / 10
        OldInfo[Player] = (ESP.PlayerHealth and Stats.Health .. "/100" .. "\n" or "") .. Stats.Ability .. " (" .. Level * Stats.Amped .. ")" .. (Stats.Amped == 1.5 and " (Amped)" or Stats.Amped == 0.5 and " (Weakened)" or "") .. "\n" ..(ESP.AuraStamina == true and Stats.Ability == "Aura Manipulation" and Stats.CurrentStamina .. "/" .. Stats.MaxStamina or ESP.BarrierHealth and Stats.BarrierHealth and "Barrier Health: " .. Stats.BarrierHealth or "")
    end

    local Box = ESP:GetBox(Character)
    if Box ~= nil and OldInfo[Player] ~= nil then
        Box.Name = (ESP.PlayerNames == true and Player.Name .. "\n" or "") .. OldInfo[Player]
        Box.Components.Distance.Transparency = 0
        OldStats[Player] = Stats_String
    end
end

--// Apply ESP \\--
while wait(0.1) do
    if ESP.Enabled then
        local Players_Table = Players:GetPlayers()
        for Index = 2, #Players_Table do local Player = Players_Table[Index]
            if Player.Character then
                CharacterESP(Player)
            end
        end
    end
end
