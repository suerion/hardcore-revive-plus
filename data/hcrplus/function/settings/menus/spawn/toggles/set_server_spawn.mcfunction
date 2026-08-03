# remove all old markers
execute as @e[type=minecraft:marker,tag=hcrplus_server_spawn] at @s run forceload remove ~ ~
kill @e[type=minecraft:marker,tag=hcrplus_server_spawn]

# create new marker
summon minecraft:marker ~ ~ ~ {Tags:["hcrplus_server_spawn"]}

# keep the chunk on the marker loaded
forceload add ~ ~

tellraw @s {"text":"HCRPlus Server Spawn has been set to your current position.","color":"green"}
function hcrplus:settings/menus/spawn/page1