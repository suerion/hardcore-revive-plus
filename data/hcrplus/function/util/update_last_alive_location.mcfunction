# Remove previous last alive marker for this player
tag @s add hcrplus_tracking_player
tag @e[type=minecraft:marker,tag=hcrplus_last_alive_location] remove hcrplus_last_alive_location_match

execute as @e[type=minecraft:marker,tag=hcrplus_last_alive_location] if score @s hcrplus_player_id = @a[tag=hcrplus_tracking_player,limit=1] hcrplus_player_id run tag @s add hcrplus_last_alive_location_match

kill @e[type=minecraft:marker,tag=hcrplus_last_alive_location_match]

# Store current alive position
summon minecraft:marker ~ ~ ~ {Tags:["hcrplus_last_alive_location"]}

scoreboard players operation @e[type=minecraft:marker,tag=hcrplus_last_alive_location,sort=nearest,limit=1] hcrplus_player_id = @s hcrplus_player_id

tag @s remove hcrplus_tracking_player