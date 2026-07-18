execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 0..3 run scoreboard players set hcrplus_settings hcrplus_ghost_spawn_mode 3

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red","bold":true},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings ","color":"gray"},{"text":"1/2","color":"white"},"\n "]

tellraw @s [{"text":" HCRPlus Server Spawn","color":"gold","bold":true}]
tellraw @s [{"text":" Used by Ghost Spawn and Auto Revive when Server Spawn is selected.","color":"dark_gray"}]

execute unless entity @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tellraw @s [{"text":" Status: ","color":"gray"},{"text":"Not Set","color":"red","bold":true}]
execute if entity @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tellraw @s [{"text":" Status: ","color":"gray"},{"text":"Set","color":"green","bold":true}]

tellraw @s [{"text":" [Set Current Position]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_set_server_spawn set 1"},"hover_event":{"action":"show_text","value":{"text":"Use your current position as the HCRPlus Server Spawn.","color":"green"}}},"\n"]

tellraw @s [{"text":" Ghost Spawn Location","color":"gold","bold":true}]
tellraw @s [{"text":" Choose where a player appears after losing their final life.","color":"dark_gray"},"\n"]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 run tellraw @s [{"text":" ● Server Spawn","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 run tellraw @s [{"text":" ○ Server Spawn","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_server set 1"},"hover_event":{"action":"show_text","value":{"text":"Spawn the ghost at the configured HCRPlus Server Spawn.","color":"green"}}}]
tellraw @s [{"text":"   The configured HCRPlus Server Spawn position.","color":"dark_gray"}]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 run tellraw @s [{"text":" ● Nearest Living Player","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 run tellraw @s [{"text":" ○ Nearest Living Player","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_player set 1"},"hover_event":{"action":"show_text","value":{"text":"Spawn the ghost near the closest living player.","color":"green"}}}]
tellraw @s [{"text":"   The nearest non-spectator player who still has lives.","color":"dark_gray"}]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 2 run tellraw @s [{"text":" ● Vanilla Spawn","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 2 run tellraw @s [{"text":" ○ Vanilla Spawn","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_vanilla set 1"},"hover_event":{"action":"show_text","value":{"text":"Use the normal Minecraft respawn location.","color":"green"}}}]
tellraw @s [{"text":"   Bed or Respawn Anchor, otherwise the normal World Spawn.","color":"dark_gray"}]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 run tellraw @s [{"text":" ● Death Location","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 run tellraw @s [{"text":" ○ Death Location","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_death set 1"},"hover_event":{"action":"show_text","value":{"text":"Spawn the ghost at their final death location.","color":"green"}}}]
tellraw @s [{"text":"   The location where the player lost their final life.","color":"dark_gray"},"\n"]

tellraw @s [{"text":" [< Back]","color":"yellow","click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"hover_event":{"action":"show_text","value":{"text":"Return to the main settings menu.","color":"yellow"}}},{"text":"          1/2          ","color":"dark_gray"},{"text":"[Next >]","color":"yellow","click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_page2 set 1"},"hover_event":{"action":"show_text","value":{"text":"Open Auto Revive Spawn Settings.","color":"yellow"}}},"\n "]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
