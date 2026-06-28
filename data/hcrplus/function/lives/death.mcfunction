# Death detection and live removal
scoreboard players set @s deaths 0
scoreboard players remove @s Lives 1

# Store death location from last alive position
tag @s add hcrplus_dying_player

# Remove previous death marker for this player
tag @e[type=minecraft:marker,tag=hcrplus_death_location] remove hcrplus_death_location_match
execute if score @s Lives matches 0 as @e[type=minecraft:marker,tag=hcrplus_death_location] if score @s hcrplus_player_id = @a[tag=hcrplus_dying_player,limit=1] hcrplus_player_id run tag @s add hcrplus_death_location_match
execute if score @s Lives matches 0 run kill @e[type=minecraft:marker,tag=hcrplus_death_location_match]

# Find last alive marker for this player
tag @e[type=minecraft:marker,tag=hcrplus_last_alive_location] remove hcrplus_last_alive_location_match
execute if score @s Lives matches 0 as @e[type=minecraft:marker,tag=hcrplus_last_alive_location] if score @s hcrplus_player_id = @a[tag=hcrplus_dying_player,limit=1] hcrplus_player_id run tag @s add hcrplus_last_alive_location_match

# Create death marker at last alive position
execute if score @s Lives matches 0 at @e[type=minecraft:marker,tag=hcrplus_last_alive_location_match,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["hcrplus_death_location"]}
execute if score @s Lives matches 0 at @e[type=minecraft:marker,tag=hcrplus_last_alive_location_match,limit=1] run scoreboard players operation @e[type=minecraft:marker,tag=hcrplus_death_location,sort=nearest,limit=1] hcrplus_player_id = @s hcrplus_player_id

# Cleanup temporary tags
tag @e[type=minecraft:marker,tag=hcrplus_last_alive_location_match] remove hcrplus_last_alive_location_match
tag @s remove hcrplus_dying_player

# Set spectator if player runs out of lives
execute if score @s Lives matches 0 run gamemode spectator

# Ghost Spawn Mode
# 0 = Server Spawn
# 1 = Nearest Living Player
# 2 = Vanilla Spawn
# 3 = Death Location

# Server Spawn
execute if score @s Lives matches 0 if score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 at @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tp @s ~ ~ ~

# Nearest Living Player
execute if score @s Lives matches 0 if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 at @s run tp @s @a[gamemode=!spectator,scores={Lives=1..},sort=nearest,limit=1]

# Vanilla Spawn
# Do not change spawnpoint. Minecraft keeps Bed / Respawn Anchor, otherwise Server Spawn.

# Death Location
tag @s add hcrplus_ghost_spawn_player
tag @e[type=minecraft:marker,tag=hcrplus_death_location] remove hcrplus_death_location_match
execute if score @s Lives matches 0 if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 as @e[type=minecraft:marker,tag=hcrplus_death_location] if score @s hcrplus_player_id = @a[tag=hcrplus_ghost_spawn_player,limit=1] hcrplus_player_id run tag @s add hcrplus_death_location_match
execute if score @s Lives matches 0 if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 at @e[type=minecraft:marker,tag=hcrplus_death_location_match,limit=1] run tp @a[tag=hcrplus_ghost_spawn_player,limit=1] ~ ~ ~
tag @e[type=minecraft:marker,tag=hcrplus_death_location_match] remove hcrplus_death_location_match
tag @s remove hcrplus_ghost_spawn_player

# Broadcast to all players when someone runs out of lives
execute if score @s Lives matches 0 run tellraw @a [{"selector":"@s","color":"white"},{"text":" has lost their final life and became a ghost.","color":"red"}]

execute at @s[scores={Lives=1..}] run scoreboard players set @s respawn 1