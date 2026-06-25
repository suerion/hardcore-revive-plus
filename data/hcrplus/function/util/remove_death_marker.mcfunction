tag @s add hcrplus_reviving_player
tag @e[type=minecraft:marker,tag=hcrplus_death_location] remove hcrplus_death_location_match
execute as @e[type=minecraft:marker,tag=hcrplus_death_location] if score @s hcrplus_player_id = @a[tag=hcrplus_reviving_player,limit=1] hcrplus_player_id run tag @s add hcrplus_death_location_match
kill @e[type=minecraft:marker,tag=hcrplus_death_location_match]
tag @s remove hcrplus_reviving_player