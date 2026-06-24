# Death detection and live removal
scoreboard players set @s deaths 0
scoreboard players remove @s Lives 1

# Set spectator if player runs out of lives
execute if score @s Lives matches 0 run gamemode spectator

# Ghost Spawn Mode
# 0 = World Spawn
# 1 = Nearest Living Player
# 2 = Bed / Respawn Anchor
# 3 = Death Location

# World Spawn
# TODO: add stored HCRPlus world spawn teleport later

# Nearest Living Player
execute if score @s Lives matches 0 if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 at @p[gamemode=!spectator,sort=nearest,limit=1] run tp @s ~ ~ ~

# Bed / Respawn Anchor
# TODO: add bed / respawn anchor teleport later

# Death Location
# No teleport needed

# Broadcast to all players when someone runs out of lives
execute if score @s Lives matches 0 run tellraw @a [{"selector":"@s","color":"white"},{"text":" has lost their final life and became a ghost.","color":"red"}]

execute at @s[scores={Lives=1..}] run scoreboard players set @s respawn 1