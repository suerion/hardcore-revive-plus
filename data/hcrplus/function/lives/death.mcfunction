# Death detection and live removal
scoreboard players set @s deaths 0
scoreboard players remove @s Lives 1

# Set spectator if player runs out of lives
execute if score @s Lives matches 0 run gamemode spectator

# Broadcast to all players when someone runs out of lives
execute if score @s Lives matches 0 run tellraw @a [{"selector":"@s","color":"white"},{"text":" has lost their final life and became a ghost.","color":"red"}]

execute at @s[scores={Lives=1..}] run scoreboard players set @s respawn 1
