# Death detection and live removal
scoreboard players set @s deaths 0
scoreboard players remove @s Lives 1

# Set spectator if player runs out of lives
execute if score @s Lives matches 0 run gamemode spectator

# Ghost Spawn Mode
# 1 = Nearest Living Player
# 3 = Death Location

# Nearest Living Player
execute if score @s Lives matches 0 if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 at @a[gamemode=!spectator,scores={Lives=1..},sort=nearest,limit=1] run tp @s ~ ~ ~

# Death Location
# No teleport needed

# Broadcast to all players when someone runs out of lives
execute if score @s Lives matches 0 run tellraw @a [{"selector":"@s","color":"white"},{"text":" has lost their final life and became a ghost.","color":"red"}]

execute at @s[scores={Lives=1..}] run scoreboard players set @s respawn 1