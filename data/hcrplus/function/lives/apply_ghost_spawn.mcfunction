# Ghost Spawn Mode
# 0 = Server Spawn
# 1 = Nearest Living Player
# 2 = Vanilla Spawn
# 3 = Death Location

# Server Spawn
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 at @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tp @s ~ ~ ~

# Nearest Living Player
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 at @s run tp @s @a[gamemode=!spectator,scores={Lives=1..},sort=nearest,limit=1]

# Vanilla Spawn
# No teleport required.
# Minecraft keeps the player's Bed / Respawn Anchor, otherwise World Spawn.

# Death Location
tag @s add hcrplus_ghost_spawn_player
tag @e[type=minecraft:marker,tag=hcrplus_death_location] remove hcrplus_death_location_match

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 as @e[type=minecraft:marker,tag=hcrplus_death_location] if score @s hcrplus_player_id = @a[tag=hcrplus_ghost_spawn_player,limit=1] hcrplus_player_id run tag @s add hcrplus_death_location_match

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 at @e[type=minecraft:marker,tag=hcrplus_death_location_match,limit=1] run tp @a[tag=hcrplus_ghost_spawn_player,limit=1] ~ ~ ~

# Cleanup
tag @e[type=minecraft:marker,tag=hcrplus_death_location_match] remove hcrplus_death_location_match
tag @s remove hcrplus_ghost_spawn_player
tag @s remove hcrplus_pending_ghost_spawn
