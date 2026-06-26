kill @e[type=minecraft:marker,tag=hcrplus_server_spawn]
summon minecraft:marker ~ ~ ~ {Tags:["hcrplus_server_spawn"]}
tellraw @s {"text":"HCRPlus Server Spawn has been set to your current position.","color":"green"}
function hcrplus:settings/menus/spawn/page1