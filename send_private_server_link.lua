local HttpService = game:GetService("HttpService")
local url = "https://discord.com/api/webhooks/1428258203107594330/lRV6nJyJTHjdRQ34NwceDgr4A863H4rspsx1Tf12L21bSRjNpHg6ZPLwaJAdwX95-h1a"

function sendLink(link, user)
    HttpService:PostAsync(url, HttpService:JSONEncode({["content"] = user .. ": " .. link}))
end

-- Gebruik:
-- sendLink(jouwServerLink, game.Players.LocalPlayer.Name)