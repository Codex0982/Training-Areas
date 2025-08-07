-- Define Library
local ERVLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Codex0982/Training-Areas/refs/heads/main/ewgfiuewgfuiewgfiuewgf.Lua"))()

-- Miscellaneous
local TeleportService = game:GetService("TeleportService")
local placeId = game.PlaceId
local player = game.Players.LocalPlayer

-- Variables
local Player = game:GetService("Players").LocalPlayer
local antiKickConnection
local basicexercise = ""

local beachgymlift = ""
local frostgymlift = ""
local mythicalgymlift = ""
local eternalgymlift = ""
local legendgymlift = ""
local musclekinggymlift = ""
local junglegymlift = ""
local durabilityrock = ""
local rebirthSuccessful = false
local rebamount = 0
local selectedbasicpettohatch = ""
local selectedadvancedpettohatch = ""
local selectedrarepettohatch = ""
local selectedepicpettohatch = ""
local selecteduniquepettohatch = ""
local selectedbasicpettoevolve = ""
local selectedadvancedpettoevolve = ""
local selectedrarepettoevolve = ""
local selectedepicpettoevolve = ""
local selecteduniquepettoevolve = ""

-- Loops
local autoWeight = false
local safeAutoWeight = false
local autoPushups = false
local safeAutoPushups = false
local autoHandstands = false
local safeAutoHandstands = false
local autoSitups = false
local safeAutoSitups = false
local autoBeachSquatRack = false
local autoBeachBenchPress = false
local autoBeachPullups = false
local autoBeachDeadlift = false
local autoBeachBoulderThrow = false
local autoFrostSquatRack = false
local autoFrostBenchPress = false
local autoFrostDeadlift = false
local autoMythicalPullups = false
local autoMythicalBenchPress = false
local autoMythicalBoulderThrow = false
local autoEternalBenchPress = false
local autoLegendPullups = false
local autoLegendSquatRack = false
local autoLegendBenchPress = false
local autoLegendDeadlift = false
local autoLegendBoulderThrow = false
local autoMuscleKingSquatRack = false
local autoMuscleKingBenchPress = false
local autoMuscleKingDeadlift = false
local autoMuscleKingBoulder = false
local autoJungleBenchPress = false
local autoJungleDeadlift = false
local autoJungleSquatRack = false
local autoJungleBoulderThrow = false
local autoRebirthStoppingPoint = false
local autoRebirth = false
local auto0DbRock = false
local auto10DbRock = false
local auto100DbRock = false
local auto5KDbRock = false
local auto150KDbRock = false
local auto400KDbRock = false
local auto750KDbRock = false
local auto1MDbRock = false
local auto5MDbRock = false
local auto10MDbRock = false
local hatchBasicPets = false
local hatchAdvancedPets = false
local hatchRarePets = false
local hatchEpicPets = false
local hatchUniquePets = false
local hatchOmegaPets = false
local evolveBasicPets = false
local evolveAdvancedcPets = false
local evolveRarePets = false
local evolveEpicPets = false
local evolveUniquePets = false
local evolveOmegaPets = false

-- Functions
local function teleportToBaseplate()
    local baseplate = Instance.new("Part")
    baseplate.Size = Vector3.new(20, 2, 20)
    baseplate.Anchored = true
    baseplate.Position = Vector3.new(0, 2000, 0)
    baseplate.Parent = game.Workspace

    game.Players.LocalPlayer.Character:MoveTo(baseplate.Position)
end

local function teleportBack()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
end

-- Create Window
local Window = ERVLibrary:CreateWindow("EchoUI","OPX","128575501543687")

local Tab1 = Window:CreateTab("General","98114351338340")
local Tab2 = Window:CreateTab("Auto Farming","138020896032806")
local Tab3 = Window:CreateTab("Durability Rocks","138020896032806")
local Tab4 = Window:CreateTab("Hatch Pets","93708739695940")
local Tab5 = Window:CreateTab("Evolve Pets","93708739695940")
local Tab6 = Window:CreateTab("Crystals","86335454239043")
local Tab9 = Window:CreateTab("Navigation","98413896429484")
local Tab10 = Window:CreateTab("Miscellaneous","74799874480652")

-- Auto Farm Section 1 Features
Tab2:CreateSection("Basic Farm", "Auto farm default exercises")
Tab2:CreateDropdown("Choose Exercise", {"Weight","Pushups","Handstands","Situps"}, function(cbe)
    basicexercise = cbe
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then 
	    if basicexercise == "Weight" then
	        autoWeight = true
            while autoWeight do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Weight" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        elseif basicexercise == "Pushups" then
            autoPushups = true
            while autoPushups do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Pushups" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        elseif basicexercise == "Handstands" then
            autoHandstands = true
            while autoHandstands do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Handstands" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        elseif basicexercise == "Situps" then
            autoSitups = true
            while autoSitups do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Situps" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
	    end
	else 
		autoWeight = false
        autoPushups = false
        autoHandstands = false
        autoSitups = false
        wait(0.5)
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	end
end)
-- Auto Farm Section 1 Features
Tab2:CreateSection("Safe Basic Farm", "Auto farm default exercises")
Tab2:CreateDropdown("Choose Exercise", {"Weight","Pushups","Handstands","Situps"}, function(cbe)
    safebasicexercise = cbe
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then 
	    if safebasicexercise == "Weight" then
	        safeAutoWeight = true
            teleportToBaseplate()
            while safeAutoWeight do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Weight" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        elseif safebasicexercise == "Pushups" then
            safeAutoPushups = true
            teleportToBaseplate()
            while safeAutoPushups do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Pushups" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        elseif safebasicexercise == "Handstands" then
            safeAutoHandstands = true
            teleportToBaseplate()
            while safeAutoHandstands do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Handstands" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
        elseif safebasicexercise == "Situps" then
            safeAutoSitups = true
            teleportToBaseplate()
            while safeAutoSitups do 
                wait()
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and v.Name == "Situps" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                    end
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            end
	    end
	else 
		safeAutoWeight = false
        safeAutoPushups = false
        safeAutoHandstands = false
        safeAutoSitups = false
        teleportBack()
        wait(0.5)
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	end
end)
Tab2:CreateSection("Beach Gym Farm", "Auto farm beach gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Squat Rack","Bench Press","Pullups","Deadlift","Boulder Throw"}, function(cgl)
    beachgymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then 
	    if beachgymlift == "Squat Rack" then
	        autoBeachSquatRack = true
            while autoBeachSquatRack do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
                    wait()
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(232.627625, 3.67689133, 96.3039856, -0.963445187, -7.78685845e-08, -0.267905563, -7.92865222e-08, 1, -5.52570167e-09, 0.267905563, 1.5917589e-08, -0.963445187)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                end
            end
        elseif beachgymlift == "Bench Press" then
            autoBeachBenchPress = true
            while autoBeachBenchPress do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 150 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-241.827469, 7.91391563, 346.321808, 0.811665356, -1.43794319e-08, -0.584122717, -3.94010407e-08, 1, -7.93666999e-08, 0.584122717, 8.74342447e-08, 0.811665356)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat)
                end
            end
        elseif beachgymlift == "Pullups" then
            autoBeachPullups = true
            while autoBeachPullups do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-185.157745, 5.81071186, 104.747154, 0.227061391, -8.2363325e-09, 0.97388047, 5.58502826e-08, 1, -4.56432803e-09, -0.97388047, 5.54278827e-08, 0.227061391)
                        local vim = game:GetService("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat)
                end
            end
        elseif beachgymlift == "Deadlift" then
            autoBeachDeadlift = true
            while autoBeachDeadlift do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 1500 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(136.606216, 3.67689133, 97.661499, -0.974106729, -1.89495477e-08, 0.226088539, -1.78365624e-08, 1, 6.96555214e-09, -0.226088539, 2.75254886e-09, -0.974106729)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
                end
            end
        elseif beachgymlift == "Boulder Throw" then
            autoBeachBoulderThrow = true
            while autoBeachBoulderThrow do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 3000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-91.6730804, 3.67689133, -292.42868, -0.221022144, -2.21041621e-08, -0.975268781, 1.21414407e-08, 1, -2.54162646e-08, 0.975268781, -1.7458726e-08, -0.221022144)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
                end                
            end
	    end
	else 
		autoBeachSquatRack = false
        autoBeachBenchPress = false
        autoBeachPullups = false
        autoBeachDeadlift = false
        autoBeachBoulderThrow = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Tab2:CreateSection("Frost Gym Farm", "Auto farm frost gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Squat Rack","Bench Press","Deadlift"}, function(cgl)
    frostgymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then 
	    if frostgymlift == "Squat Rack" then
	        autoFrostSquatRack = true
            while autoFrostSquatRack do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
                    wait()
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2629.13818, 3.36860609, -609.827454, -0.995664716, -2.67296816e-08, -0.0930150598, -1.90042453e-08, 1, -8.39415222e-08, 0.0930150598, -8.18099295e-08, -0.995664716)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                end
            end
        elseif frostgymlift == "Bench Press" then
            autoFrostBenchPress = true
            while autoFrostBenchPress do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 7500 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3020.7019, 32.5691414, -194.773117, 0.924556971, 2.05821564e-08, 0.381043822, -3.5507064e-08, 1, 3.21384199e-08, -0.381043822, -4.32435456e-08, 0.924556971)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat)
                end
            end
        elseif frostgymlift == "Deadlift" then
            autoFrostDeadlift = true
            while autoFrostDeadlift do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 5000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2916.11572, 3.67689204, -212.97438, -0.241641939, -6.10995343e-08, 0.970365465, 6.65890596e-08, 1, 7.9547597e-08, -0.970365465, 8.38377616e-08, -0.241641939)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
                end
            end
	    end
	else 
		autoFrostSquatRack = false
        autoFrostBenchPress = false
        autoFrostDeadlift = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Tab2:CreateSection("Mythical Gym Farm", "Auto farm mythical gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Pullups","Bench Press","Boulder Throw"}, function(cgl)
    mythicalgymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then 
	    if mythicalgymlift == "Pullups" then
	        autoMythicalPullups = true
            while autoMythicalPullups do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 4000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2315.82104, 5.81071281, 847.153076, 0.993555248, 6.99809632e-08, 0.113349125, -7.05298859e-08, 1, 8.32554692e-10, -0.113349125, -8.82168916e-09, 0.993555248)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat)
                end
            end
        elseif mythicalgymlift == "Bench Press" then
            autoMythicalBenchPress = true
            while autoMythicalBenchPress do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2363.95483, 42.2141037, 1243.50562, -0.944882751, 2.18911698e-08, 0.32740894, 4.06544087e-09, 1, -5.51292381e-08, -0.32740894, -5.07596027e-08, -0.944882751)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat)
                end
            end
        elseif mythicalgymlift == "Boulder Throw" then
            autoMythicalBoulderThrow = true
            while autoMythicalBoulderThrow do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 10000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2486.01733, 3.67689276, 1237.89331, 0.883595645, -2.06135038e-08, -0.468250751, -3.3286871e-09, 1, -5.03036404e-08, 0.468250751, 4.60067362e-08, 0.883595645)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
                end
            end
	    end
	else 
		autoMythicalPullups = false
        autoMythicalBenchPress = false
        autoMythicalBoulderThrow = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Tab2:CreateSection("Eternal Gym Farm", "Auto farm eternal gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Bench Press"}, function(cgl)
    eternalgymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then 
	    if eternalgymlift == "Bench Press" then
            autoEternalBenchPress = true
            while autoEternalBenchPress do 
                wait()
                if game.Players.LocalPlayer.leaderstats.Strength.Value >= 15000 then
                    if game.Players.LocalPlayer.machineInUse.Value == nil then
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7172.77002, 48.3923645, -1105.06018, -0.972435296, -4.87620122e-09, 0.233172983, -2.76572942e-09, 1, 9.37805122e-09, -0.233172983, 8.47465476e-09, -0.972435296)
                        local vim = game:service("VirtualInputManager")
                        vim:SendKeyEvent(true, "E", false, game)
                    end
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat)
                end
            end
	    end
	else 
        autoEternalBenchPress = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Tab2:CreateSection("Legend Gym Farm", "Auto farm legend gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Pullups","Squat Rack","Bench Press","Deadlift","Boulder Throw"}, function(cgl)
    legendgymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then
        if legendgymlift == "Pullups" then
            autoLegendPullups = true
            while autoLegendPullups do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4305.08203, 989.963623, -4118.44873, -0.953815758, -7.58000382e-08, -0.30039227, -8.98859724e-08, 1, 3.30721512e-08, 0.30039227, 5.85457904e-08, -0.953815758)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Legends Pullup"].interactSeat)
            end
        elseif legendgymlift == "Squat Rack" then
            autoLegendSquatRack = true
            while autoLegendSquatRack do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4443.04443, 987.521484, -4061.12988, 0.83309716, 3.33018835e-09, 0.553126693, -2.87759438e-09, 1, -1.68654424e-09, -0.553126693, -1.86619012e-10, 0.83309716)
                    local vim = game:GetService("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
            end
        elseif legendgymlift == "Bench Press" then
            autoLegendBenchPress = true
            while autoLegendBenchPress do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4109.81152, 1024.02734, -3800.75122, 0.446250677, -7.44993258e-08, -0.894908011, -1.94296179e-09, 1, -8.4216893e-08, 0.894908011, 3.93206179e-08, 0.446250677)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat)
            end
        elseif legendgymlift == "Deadlift" then
            autoLegendDeadlift = true
            while autoLegendDeadlift do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4538.42627, 987.829834, -4008.82007, -0.830109239, 2.21324914e-08, 0.557600796, 8.02302083e-08, 1, 7.97476361e-08, -0.557600796, 1.1093568e-07, -0.830109239)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
            end
        elseif legendgymlift == "Boulder Throw" then
            autoLegendBoulderThrow = true
            while autoLegendBoulderThrow do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4189.96143, 987.829773, -3903.0166, 0.422592968, 0, 0.906319559, 0, 1, 0, -0.906319559, 0, 0.422592968)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
            end
	    end
	else 
        autoLegendPullups = false
        autoLegendSquatRack = false
        autoLegendBenchPress = false
        autoLegendDeadlift = false
        autoLegendBoulderThrow = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Tab2:CreateSection("Muscle King Gym Farm", "Auto farm muscle king gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Squat Rack","Bench Press","Deadlift","Boulder Throw"}, function(cgl)
    musclekinggymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then
        if musclekinggymlift == "Squat Rack" then
            autoMuscleKingSquatRack = true
            while autoMuscleKingSquatRack do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8757.37012, 13.2186356, -6051.24365, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304)
                    local vim = game:GetService("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
            end
        elseif musclekinggymlift == "Bench Press" then
            autoMuscleKingBenchPress = true
            while autoMuscleKingBenchPress do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8592.99805, 49.1056519, -6042.80322, -0.975815654, -1.70261014e-08, 0.218595073, -1.06326148e-08, 1, 3.04244203e-08, -0.218595073, 2.73643881e-08, -0.975815654)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Bench Press"].interactSeat)
            end
        elseif musclekinggymlift == "Deadlift" then
            autoMuscleKingDeadlift = true
            while autoMuscleKingDeadlift do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8768.4375, 13.5269203, -5681.62256, -0.997508109, -5.4007393e-10, 0.0705519542, 1.52984292e-10, 1, 9.81797044e-09, -0.0705519542, 9.80429782e-09, -0.997508109)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
            end
        elseif musclekinggymlift == "Boulder Throw" then
            autoMuscleKingBoulder = true
            while autoMuscleKingBoulder do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8946.12402, 20.8987751, -5701.57861, -0.629802942, 1.87292315e-08, -0.776754975, 6.46146159e-09, 1, 1.88731129e-08, 0.776754975, 6.86736934e-09, -0.629802942)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder.Deadlift.interactSeat)
            end
	    end
	else 
        autoMuscleKingSquatRack = false
        autoMuscleKingBenchPress = false
        autoMuscleKingDeadlift = false
        autoMuscleKingBoulder = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Tab2:CreateSection("Jungle Gym Farm", "Auto farm jungle gym exercises")
Tab2:CreateDropdown("Choose Lift", {"Bench Press","Deadlift","Squat Rack","Boulder Throw"}, function(cgl)
    junglegymlift = cgl
end)
Tab2:CreateToggle("Auto Train", function(state)
	if state then
        if junglegymlift == "Bench Press" then
            autoJungleBenchPress = true
            while autoJungleBenchPress do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8178,66,1929)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Jungle Bench"].interactSeat)
            end
        elseif junglegymlift == "Deadlift" then
            autoJungleDeadlift = true
            while autoJungleDeadlift do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8658,9,2085)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Jungle Bar Lift"].interactSeat)
            end
        elseif junglegymlift == "Squat Rack" then
            autoJungleSquatRack = true
            while autoJungleSquatRack do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8391,9,2911)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Jungle Squat"].interactSeat)
            end
        elseif junglegymlift == "Boulder Throw" then
            autoJungleBoulderThrow = true
            while autoJungleBoulderThrow do 
                wait()
                if game.Players.LocalPlayer.machineInUse.Value == nil then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8612,9,2685)
                    local vim = game:service("VirtualInputManager")
                    vim:SendKeyEvent(true, "E", false, game)
                end
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep", game:GetService("Workspace").machinesFolder["Jungle Boulder"].interactSeat)
            end
	    end
	else
        autoJungleBenchPress = false
        autoJungleDeadlift = false
        autoJungleSquatRack = false
        autoJungleBoulderThrow = false
        wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

-- Auto Farm Section 2 Features
Tab3:CreateSection("Durability Rock Farm", "Auto farm durability rocks")
Tab3:CreateToggle("0 Durability", function(state)
	if state then
        auto0DbRock = true
        while auto0DbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159)
        end
    end
    auto0DbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("10 Durability", function(state)
	if state then
        auto10DbRock = true
        while auto10DbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299)
        end
    end
    auto10DbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("100 Durability", function(state)
	if state then
        auto100DbRock = true
        while auto100DbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928)
        end
    end
    auto100DbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("5K Durability", function(state)
	if state then
        auto5KDbRock = true
        while auto5KDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394)
        end
    end
    auto5KDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("150K Durability", function(state)
	if state then
        auto150KDbRock = true
        while auto150KDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579)
        end
    end
    auto150KDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("400K Durability", function(state)
	if state then
        auto400KDbRock = true
        while auto400KDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148)
        end
    end
    auto400KDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("750K Durability", function(state)
	if state then
        auto750KDbRock = true
        while auto750KDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783)
        end
    end
    auto750KDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("1M Durability", function(state)
	if state then
        auto1MDbRock = true
        while auto1MDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997)
        end
    end
    auto1MDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("5M Durability", function(state)
	if state then
        auto5MDbRock = true
        while auto5MDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137)
        end
    end
    auto5MDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab3:CreateToggle("10M Durability", function(state)
	if state then
        auto10MDbRock = true
        while auto10MDbRock do 
            wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Punch" then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                end
            end
            for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if h:IsA("Tool") and h.Name == "Punch" then
                    h:Activate()
                end
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7635,7,3011)
        end
    end
    auto10MDbRock = false
    wait(0.5)
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
end)
Tab1:CreateSection("Rebirth Farm Utilities", "Rebirth farm optimizers")
Tab1:CreateToggle("Auto Teleport Back", function(state)
    if state then 
        autoTeleportBack = true
        while autoTeleportBack do 
            wait()
            local success, err = pcall(function()
                local rebirthsBefore = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):InvokeServer("rebirthRequest")
                local rebirthsAfter = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirthsAfter > rebirthsBefore then
                    rebirthSuccessful = true
                    wait(0.5)
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                    rebirthSuccessful = false
                end
                if rebirthsAfter >= rebamount then
                    autoRebirthStoppingPoint = false
                end
            end)
            if not success then
                autoRebirthStoppingPoint = false
            end
        end 
    else 
        autoRebirth = false
    end 
end)
Tab1:CreateSection("Rebirth Farm", "Auto farm rebirths")
Tab1:CreateToggle("Auto Rebirth", function(state)
    if state then 
        autoRebirth = true
        while autoRebirth do 
            wait()
            local success, err = pcall(function()
                local rebirthsBefore = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):InvokeServer("rebirthRequest")
                local rebirthsAfter = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirthsAfter > rebirthsBefore then
                    wait(4)
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
            if not success then
                autoRebirth = false
            end
        end 
    else 
        autoRebirth = false
    end 
end)
Tab1:CreateSection("Rebirth Target Farm", "Auto rebirth until your desired rebirth")
Tab1:CreateBox("Rebirth Target", function(rebamountbb)
	rebamount = tonumber(rebamountbb) or 0
end)
Tab1:CreateToggle("Auto Rebirth", function(state)
    if state then 
        autoRebirthStoppingPoint = true
        while autoRebirthStoppingPoint do 
            wait()
            local success, err = pcall(function()
                local rebirthsBefore = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):InvokeServer("rebirthRequest")
                local rebirthsAfter = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirthsAfter > rebirthsBefore then
                    rebirthSuccessful = true
                    rebirthSuccessful = false
                end
                if rebirthsAfter >= rebamount then
                    autoRebirthStoppingPoint = false
                end
            end)
            if not success then
                autoRebirthStoppingPoint = false
            end
        end 
    else 
        autoRebirthStoppingPoint = false
    end 
end)

-- Pets Section 1 Features
Tab4:CreateSection("Hatch Basic Pets", "Hatch any basic pet in the game")
Tab4:CreateDropdown("Select Pet", {"Red Kitty","Blue Bunny","Blue Birdie"}, function(input)
    if input == "Red Kitty" then
        selectedbasicpettohatch = input
	elseif input == "Blue Bunny" then
        selectedbasicpettohatch = input
	elseif input == "Blue Birdie" then
        selectedbasicpettohatch = input
    end
end)
Tab4:CreateToggle("Auto Hatch",function(state)
	if state then 
		hatchBasicPets = true 
		while hatchBasicPets == true do wait() 
			local args = { 
				[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedbasicpettohatch)
			}
			game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
		end 
	 else 
		hatchBasicPets = false 
	 end  
end)
Tab4:CreateSection("Hatch Advanced Pets", "Hatch any advanced pet in the game")
Tab4:CreateDropdown("Select Pet", {"Dark Vampy","Yellow Butterfly"}, function(input)
    if input == "Dark Vampy" then
        selectedadvancedpettohatch = input
	elseif input == "Yellow Butterfly" then
        selectedadvancedpettohatch = input
    end
end)
Tab4:CreateToggle("Auto Hatch",function(state)
	if state then 
		hatchBasicPets = true 
		while hatchBasicPets == true do wait() 
			local args = { 
				[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedadvancedpettohatch)
			}
			game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
		end 
	 else 
		hatchBasicPets = false 
	 end  
end)

--[[
Jungle TP
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = Frame.new(-8691,9,2390)
]]
