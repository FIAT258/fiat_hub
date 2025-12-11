local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "KEY SISTEN blox fruts version",
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

-- BOTÃƒO GET KEY
Tabs.Key:AddButton({
    Title = "Get Key",
    Description = "Copia o link da key",
    Callback = function()
        setclipboard("https://linkvertise.com/1460648/CKBAYEoYZmao?o=sharing")
        
        Fluent:Notify({
            Title = "LINK COPIADO",
            Content = "O link da KEY foi copiado!",
            Duration = 4
        })
    end
})

-- BOTÃƒO CHECK KEY
Tabs.Key:AddButton({
    Title = "Check Key",
    Description = "Verificar se a key não valida",
    Callback = function()
        if string.find(userKey, "130") then
            
            setclipboard(userKey)

            Fluent:Notify({
                Title = "KEY valida",
                Content = "Espere 3 segundos...",
                Duration = 3
            })

            -- FECHAR FLUENT PRIMEIRO
            Window:Destroy()

            task.wait(3)

            local GAME_ID = 18687417158
            if game.PlaceId == GAME_ID then
                -- EXECUTAR
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/FIAT258/Not-exploits.2/main/forsaken.lua", true))()
            else
                game.Players.LocalPlayer:Kick("esse script Ã© para forsaken!")
            end

        else
            Fluent:Notify({
                Title = "KEY INVÃLIDA",
                Content = "NÃ£o contÃ©m 130",
                Duration = 4
            })
        end
    end
})

Window:SelectTab(1)
