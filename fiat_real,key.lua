local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "KEY SISTEN",
    SubTitle = "by fiat",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 300),
    Acrylic = true,
    Theme = "Lavender",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Key = Window:AddTab({ Title = "Key Sisten", Icon = "key" })
}

local Options = Fluent.Options
local userKey = ""

-- INPUT PARA DIGITAR A KEY
local InputKey = Tabs.Key:AddInput("InputKey", {
    Title = "Insert Key",
    Placeholder = "Insira sua KEY",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        userKey = tostring(Value)
    end
})

-- BOTÃO GET KEY
Tabs.Key:AddButton({
    Title = "Get Key",
    Description = "Copia a key",
    Callback = function()
        setclipboard("a")
        Fluent:Notify({
            Title = "KEY COPIADA",
            Content = "A Key foi copiada para sua área de transferência!",
            Duration = 4
        })
    end
})

-- BOTÃO CHECK KEY
Tabs.Key:AddButton({
    Title = "Check Key",
    Description = "Verificar se a key é válida",
    Callback = function()
        if string.find(userKey, "130") then
            
            -- Key válida
            setclipboard(userKey)

            Fluent:Notify({
                Title = "KEY VÁLIDA",
                Content = "Espere 3 segundos...",
                Duration = 3
            })

            task.wait(3)

            local GAME_ID = 18687417158
            if game.PlaceId == GAME_ID then
                
                -- Executar
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/FIAT258/Not-exploits.2/main/forsaken.lua", true))()

            else
                game.Players.LocalPlayer:Kick("esse script é para forsaken!")
            end
            
            -- FECHAR FLUENT
            Window:Destroy()

        else
            -- Key inválida
            Fluent:Notify({
                Title = "KEY INVÁLIDA",
                Content = "fassa direito",
                Duration = 4
            })
        end
    end
})

Window:SelectTab(1)
