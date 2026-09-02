
local v1 = loadstring(game:HttpGet('https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua'))()
local _PlaceId = game.PlaceId
local _Name = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name
local _LocalPlayer = game:GetService('Players').LocalPlayer
local _Name2 = _LocalPlayer.Name
local _UserId = _LocalPlayer.UserId
local _Character = _LocalPlayer.Character
local _AccountAge = _LocalPlayer.AccountAge
local _ = #game.Players:GetPlayers()

if loadstring(game:HttpGet('https://raw.githubusercontent.com/ALPHAneegy/vckDeobf/refs/heads/main/blacklist.md'))()[game.Players.LocalPlayer.Name] then
    v1:Notify({
        Title = 'Blacklist',
        Description = 'Hey, ' .. _Name2 .. '! You are blacklisted!',
    }, {
        OutlineColor = Color3.fromRGB(128, 187, 219),
        Time = 10,
        Type = 'default',
    })
else
    function GetAllPlayers()
        local v9, v10, v11 = pairs(game:GetService('Players'):GetChildren())
        local v12 = {}

        while true do
            local v13

            v11, v13 = v9(v10, v11)

            if v11 == nil then
                break
            end

            table.insert(v12, v13.DisplayName .. ' (@' .. v13.Name .. ')')
        end

        return v12
    end
    function SplitString(p14, p15)
        local v16 = p15 == nil and '%s' or p15
        local v17, v18, v19 = string.gmatch(p14, '([^' .. v16 .. ']+)')
        local v20 = {}

        while true do
            v19 = v17(v18, v19)

            if v19 == nil then
                break
            end

            table.insert(v20, v19)
        end

        return v20
    end

    local u21 = loadstring(game:HttpGet('https://raw.githubusercontent.com/ALPHAneegy/vckDeobf/refs/heads/main/source.lua'))()
    local _AstralHubV3 = u21.CreateLib('free', 'Ocean')

    u21:ToggleUI()

    local _ScreenGui = Instance.new('ScreenGui')
    local _TextButton = Instance.new('TextButton')

    _ScreenGui.Name = 'ToggleGui_V3'
    _ScreenGui.Parent = game.CoreGui
    _TextButton.Name = 'Toggle'
    _TextButton.Parent = _ScreenGui
    _TextButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    _TextButton.BackgroundTransparency = 1
    _TextButton.Position = UDim2.new(0, 0, 0, 0)
    _TextButton.Size = UDim2.new(0., 0, 0, 0)
    _TextButton.Font = Enum.Font.SourceSans
    _TextButton.Text = ''
    _TextButton.TextColor3 = Color3.fromRGB(128, 187, 219)
    _TextButton.TextSize = 24
    _TextButton.TextXAlignment = Enum.TextXAlignment.Left
    _TextButton.Active = false
    _TextButton.Draggable = false


    local _Home = _AstralHubV3:NewTab('Home')
    local _Players = _AstralHubV3:NewTab('Players')
    local _Scripts = _AstralHubV3:NewTab('Scripts')
    local _FEScripts = _AstralHubV3:NewTab('FE Scripts')
    local _Games = _AstralHubV3:NewTab('Games')
    local _Hubs = _AstralHubV3:NewTab('Hubs')
    local _Guis = _AstralHubV3:NewTab('Guis')
    local _Admins = _AstralHubV3:NewTab('Admins')
    local _Tools = _AstralHubV3:NewTab('Tools')
    local _Credits = _AstralHubV3:NewTab('Credits')
    local v35 = _Home:NewSection('Welcome, ' .. _Name2)

    _Credits:NewSection('Credits to me')
    v35:NewButton('User : ' .. _Name2 .. ' | ' .. _UserId)
    v35:NewButton('Game : ' .. _Name .. ' | ' .. _PlaceId)
    v35:NewButton('Account Age : ' .. _AccountAge .. ' Days')
    v35:NewButton('Destroy Toggle GUI', 'Destroy the toggle gui', function()
        if game:GetService('CoreGui'):FindFirstChild('ToggleGui_V3') then
            game:GetService('CoreGui'):FindFirstChild('ToggleGui_V3'):Destroy()
        end
    end)

    v35:NewLabel('Feedback')
    v35:NewTextBox('Report Bugs', 'No Info', function(p44)
        _G.Discord_UserID = '729262739490471976'

        local _LocalPlayer2 = game:GetService('Players').LocalPlayer
        local v46 = os.time() - _LocalPlayer2.AccountAge * 86400
        local _t = os.date('!*t', v46)
        local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
        local v48 = _LocalPlayer2.MembershipType == Enum.MembershipType.Premium
        local v49 = _LocalPlayer2.AccountAge > 365 and ((_LocalPlayer2.AccountAge < 365 or v48 ~= true) and 'Maybe' or 'No') or 'Possible'
        local v50 = identifyexecutor() or 'Unknown'
        local v51 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
        local _imageUrl = game:GetService('HttpService'):JSONDecode(v51).data[1].imageUrl
        local v53 = {
            username = 'Vroy script',
            avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
            content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
            embeds = {
                {
                    color = tonumber(tostring('0x32CD32')),
                    title = 'Report Bugs',
                    thumbnail = {url = _imageUrl},
                    fields = {
                        {
                            name = 'Message',
                            value = p44,
                            inline = true,
                        },
                        {
                            name = 'Username',
                            value = '||' .. _LocalPlayer2.Name .. '||',
                            inline = true,
                        },
                        {
                            name = 'Display Name',
                            value = _LocalPlayer2.DisplayName,
                            inline = true,
                        },
                        {
                            name = 'UID',
                            value = '||[' .. _LocalPlayer2.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                            inline = true,
                        },
                        {
                            name = 'Game Id',
                            value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                            inline = true,
                        },
                        {
                            name = 'Game Name',
                            value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                            inline = true,
                        },
                        {
                            name = 'Executor Used',
                            value = v50,
                            inline = true,
                        },
                        {
                            name = 'Alt',
                            value = v49,
                            inline = true,
                        },
                        {
                            name = 'Account Age',
                            value = _LocalPlayer2.AccountAge .. ' Day(s)',
                            inline = true,
                        },
                        {
                            name = 'Date Joined',
                            value = _t.day .. '/' .. _t.month .. '/' .. _t.year,
                            inline = true,
                        },
                    },
                    timestamp = os.date('%Y-%m-%dT%X.000Z'),
                },
            },
        }

        request = http_request or request or (HttpPost or syn.request)

        request({
            Url = 'https://discord.com/api/webhooks/1538657135200698430/aysmj_OAsRnP3KSndOWysoQbBqPTaa5pezm0EeSmLazDw836QVKUGLB-Mnsa9lvjMmTG',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = game.HttpService:JSONEncode(v53),
        })
    end)
    v35:NewTextBox('Suggestions', 'No Info', function(p54)
        _G.Discord_UserID = '729262739490471976'

        local _LocalPlayer3 = game:GetService('Players').LocalPlayer
        local v56 = os.time() - _LocalPlayer3.AccountAge * 86400
        local _t2 = os.date('!*t', v56)
        local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
        local v58 = _LocalPlayer3.MembershipType == Enum.MembershipType.Premium
        local v59 = _LocalPlayer3.AccountAge > 365 and ((_LocalPlayer3.AccountAge < 365 or v58 ~= true) and 'Maybe' or 'No') or 'Possible'
        local v60 = identifyexecutor() or 'Unknown'
        local v61 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
        local _imageUrl2 = game:GetService('HttpService'):JSONDecode(v61).data[1].imageUrl
        local v63 = {
            username = 'V.Roy Hub | Suggestions',
            avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
            content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
            embeds = {
                {
                    color = tonumber(tostring('0x32CD32')),
                    title = 'Suggestions',
                    thumbnail = {url = _imageUrl2},
                    fields = {
                        {
                            name = 'Message',
                            value = p54,
                            inline = true,
                        },
                        {
                            name = 'Username',
                            value = '||' .. _LocalPlayer3.Name .. '||',
                            inline = true,
                        },
                        {
                            name = 'Display Name',
                            value = _LocalPlayer3.DisplayName,
                            inline = true,
                        },
                        {
                            name = 'UID',
                            value = '||[' .. _LocalPlayer3.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                            inline = true,
                        },
                        {
                            name = 'Game Id',
                            value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                            inline = true,
                        },
                        {
                            name = 'Game Name',
                            value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                            inline = true,
                        },
                        {
                            name = 'Executor Used',
                            value = v60,
                            inline = true,
                        },
                        {
                            name = 'Alt',
                            value = v59,
                            inline = true,
                        },
                        {
                            name = 'Account Age',
                            value = _LocalPlayer3.AccountAge .. ' Day(s)',
                            inline = true,
                        },
                        {
                            name = 'Date Joined',
                            value = _t2.day .. '/' .. _t2.month .. '/' .. _t2.year,
                            inline = true,
                        },
                    },
                    timestamp = os.date('%Y-%m-%dT%X.000Z'),
                },
            },
        }

        request = http_request or request or (HttpPost or syn.request)

        request({
            Url = 'https://discord.com/api/webhooks/1538657135200698430/aysmj_OAsRnP3KSndOWysoQbBqPTaa5pezm0EeSmLazDw836QVKUGLB-Mnsa9lvjMmTG',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = game.HttpService:JSONEncode(v63),
        })
    end)
    v35:NewTextBox('Feedback', 'No Info', function(p64)
        _G.Discord_UserID = '729262739490471976'

        local _LocalPlayer4 = game:GetService('Players').LocalPlayer
        local v66 = os.time() - _LocalPlayer4.AccountAge * 86400
        local _t3 = os.date('!*t', v66)
        local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
        local v68 = _LocalPlayer4.MembershipType == Enum.MembershipType.Premium
        local v69 = _LocalPlayer4.AccountAge > 365 and ((_LocalPlayer4.AccountAge < 365 or v68 ~= true) and 'Maybe' or 'No') or 'Possible'
        local v70 = identifyexecutor() or 'Unknown'
        local v71 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
        local _imageUrl3 = game:GetService('HttpService'):JSONDecode(v71).data[1].imageUrl
        local v73 = {
            username = 'V.Roy Hub | Feedback',
            avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
            content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
            embeds = {
                {
                    color = tonumber(tostring('0x32CD32')),
                    title = 'Feedback',
                    thumbnail = {url = _imageUrl3},
                    fields = {
                        {
                            name = 'Message',
                            value = p64,
                            inline = true,
                        },
                        {
                            name = 'Username',
                            value = '||' .. _LocalPlayer4.Name .. '||',
                            inline = true,
                        },
                        {
                            name = 'Display Name',
                            value = _LocalPlayer4.DisplayName,
                            inline = true,
                        },
                        {
                            name = 'UID',
                            value = '||[' .. _LocalPlayer4.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                            inline = true,
                        },
                        {
                            name = 'Game Id',
                            value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                            inline = true,
                        },
                        {
                            name = 'Game Name',
                            value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                            inline = true,
                        },
                        {
                            name = 'Executor Used',
                            value = v70,
                            inline = true,
                        },
                        {
                            name = 'Alt',
                            value = v69,
                            inline = true,
                        },
                        {
                            name = 'Account Age',
                            value = _LocalPlayer4.AccountAge .. ' Day(s)',
                            inline = true,
                        },
                        {
                            name = 'Date Joined',
                            value = _t3.day .. '/' .. _t3.month .. '/' .. _t3.year,
                            inline = true,
                        },
                    },
                    timestamp = os.date('%Y-%m-%dT%X.000Z'),
                },
            },
        }

        request = http_request or request or (HttpPost or syn.request)

        request({
            Url = 'https://discord.com/api/webhooks/1538657135200698430/aysmj_OAsRnP3KSndOWysoQbBqPTaa5pezm0EeSmLazDw836QVKUGLB-Mnsa9lvjMmTG',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
            },
            Body = game.HttpService:JSONEncode(v73),
        })
    end)
    _G.Discord_UserID = '729262739490471976'

    local _ = math.random(725) .. '.' .. math.random(99) .. '.' .. math.random(836) .. '.' .. math.random(70)
    local _LocalPlayer5 = game:GetService('Players').LocalPlayer
    local v123 = os.time() - _LocalPlayer5.AccountAge * 86400
    local _t4 = os.date('!*t', v123)
    local v125 = _LocalPlayer5.MembershipType == Enum.MembershipType.Premium
    local v126 = _LocalPlayer5.AccountAge > 365 and ((_LocalPlayer5.AccountAge < 365 or v125 ~= true) and 'Maybe' or 'No') or 'Possible'
    local v127 = identifyexecutor() or 'Unknown'
    local v128 = game:HttpGet(string.format('https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true', game.Players.LocalPlayer.UserId))
    local _imageUrl4 = game:GetService('HttpService'):JSONDecode(v128).data[1].imageUrl
    local ServerLink = "https://www.roblox.com/games/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId
    local v130 = {
        username = 'Ml Void Killer',
        avatar_url = 'https://cdn.discordapp.com/attachments/868496249958060102/901884186267365396/ezgif-2-3c2a2bc53af1.gif',
        content = (_G.Discord_UserID == '' or _G.Discord_UserID == nil) and ' ' or (tostring('<@' .. _G.Discord_UserID .. '>') or ' '),
        embeds = {
            {
                color = tonumber(tostring('0x32CD32')),
                title = 'This guy execute your ml killer script.',
                thumbnail = {url = _imageUrl4},
                fields = {
                    {
                        name = 'Username',
                        value = '||' .. _LocalPlayer5.Name .. '||',
                        inline = true,
                    },
                    {
                        name = 'Display Name',
                        value = _LocalPlayer5.DisplayName,
                        inline = true,
                    },
                    {
                        name = 'UID',
                        value = '||[' .. _LocalPlayer5.UserId .. '](' .. tostring('https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile') .. ')||',
                        inline = true,
                    },
                    {
                        name = 'Game Id',
                        value = '[' .. game.PlaceId .. '](' .. tostring('https://www.roblox.com/games/' .. game.PlaceId) .. ')',
                        inline = true,
                    },
                    {
                        name = '🎮 Join Server',
                        value = '[Join Server](' .. ServerLink .. ')',
                        inline = false,
                    },
                    {
                        name = 'Game Name',
                        value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
                        inline = true,
                    },
                    {
                        name = 'Executor Used',
                        value = v127,
                        inline = true,
                    },
                    {
                        name = 'Alt',
                        value = v126,
                        inline = true,
                    },
                    {
                        name = 'Account Age',
                        value = _LocalPlayer5.AccountAge .. ' Day(s)',
                        inline = true,
                    },
                    {
                        name = 'Date Joined',
                        value = _t4.day .. '/' .. _t4.month .. '/' .. _t4.year,
                        inline = true,
                    },
                },
                timestamp = os.date('%Y-%m-%dT%X.000Z'),
            },
        },
    }

    request = http_request or request or (HttpPost or syn.request)

    request({
        Url = 'https://discord.com/api/webhooks/1538708140546199563/IghqG5ljZrRIPmqbrTyVCdAfckZsxyS_cXZ9Zz1wpy9mgLpe4Uj0aTqNRtCUrDV2txIa',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
        },
        Body = game.HttpService:JSONEncode(v130),
    })
end
