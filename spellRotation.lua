# Automatiseringar
## Spell rotations

setDefaultTab("Spells")
local distance = 4
local amountOfMonsters = 1
    local SpellR = macro(1000, "SpellR", function()
    local specAmount = 0
    if not g_game.isAttacking() then
        return
    end
    for i,mob in ipairs(getDistanceBetween(player:getPosition()) <= distance and mob:isMonster()) then
        specAmount + 1
    end
end
if (specAmount >= amountOfMonsters) then
    say(storage.spell2, 250)
    say(storage.spell3, 250)
    say(storage.spell4, 250)
    say(storage.spell5, 250)
    say(storage.spell6, 250)
    else
        say(storage.spell1, 250)
    end
end)
addTextEdit("Spell1", storage.spell1 or "single target", function(widget, text)
storage.spell1 = text
end)
addTextEdit("Spell2", storage.spell2 or "AOE1", function(widget, text)
storage.spell2 = text
end)
addTextEdit("Spell3", storage.spell3 or "AOE2", function(widget, text)
storage.spell3 = text
end)
addTextEdit("Spell4", storage.spell4 or "AOE3", function(widget, text)
storage.spell4 = text
end)
addTextEdit("Spell5", storage.spell5 or "AOE4", function(widget, text)
storage.spell5 = text
end)
addTextEdit("Spell6", storage.spell6 or "AOE5", function(widget, text)
storage.spell6 = text
end)

local attacker
local targetTime

local attackPK = macro(100, "Attack PK", nil, function()
    if attacker then
        if attacker:getPosition() and attacker:getPosition().z == posz() then
            if g_game.isAttacking() then
                if g_game.getAttackingCreature():getName() ~= attacker:detName() then
                    g_game.attack(attacker)
                end
            else
                g_game.attack(attacker)
            end
        end
    else
        if not g_game.isAttacking() then
        targetBot.setOn()
        CaveBot.setOn()
    g_game.setSafeFight(true)
        end
    end
    if targetTime then
        if now - targetTime > 2500 then
            attacker = nil
        end
    end
end)