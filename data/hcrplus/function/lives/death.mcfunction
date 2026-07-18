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

# Set spectator and apply ghost spawn during the next tick
execute if score @s Lives matches 0 run gamemode spectator @s
execute if score @s Lives matches 0 run tag @s add hcrplus_pending_ghost_spawn

# Broadcast to all players when someone runs out of lives
execute if score @s Lives matches 0 run tellraw @a [{"selector":"@s","color":"white"},{"text":" has lost their final life and became a ghost.","color":"red"}]

# Prepare normal respawn if the player still has lives
execute at @s[scores={Lives=1..}] run scoreboard players set @s respawn 1
