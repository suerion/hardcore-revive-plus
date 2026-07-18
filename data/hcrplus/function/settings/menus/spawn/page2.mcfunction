execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 0..2 run scoreboard players set hcrplus_settings hcrplus_revive_spawn_mode 0

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red","bold":true},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings ","color":"gray"},{"text":"2/2","color":"white"},"\n "]

tellraw @s [{"text":" Auto Revive Location","color":"gold","bold":true}]
tellraw @s [{"text":" Choose where players return after the Auto Revive timer finishes.","color":"dark_gray"},"\n"]

execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 0 run tellraw @s [{"text":" ● Vanilla Spawn","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 0 run tellraw @s [{"text":" ○ Vanilla Spawn","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_vanilla set 1"},"hover_event":{"action":"show_text","value":{"text":"Revive the player at their normal Minecraft spawn.","color":"green"}}}]
tellraw @s [{"text":"   Bed or Respawn Anchor, otherwise the normal World Spawn.","color":"dark_gray"}]

execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 1 run tellraw @s [{"text":" ● Server Spawn","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 1 run tellraw @s [{"text":" ○ Server Spawn","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_server set 1"},"hover_event":{"action":"show_text","value":{"text":"Revive the player at the configured HCRPlus Server Spawn.","color":"green"}}}]
tellraw @s [{"text":"   The configured HCRPlus Server Spawn position.","color":"dark_gray"}]

execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 2 run tellraw @s [{"text":" ● Death Location","color":"green","bold":true},{"text":"  [Selected]","color":"dark_green"}]
execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 2 run tellraw @s [{"text":" ○ Death Location","color":"gray"},{"text":"  [Select]","color":"green","click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_death set 1"},"hover_event":{"action":"show_text","value":{"text":"Revive the player where they lost their final life.","color":"green"}}}]
tellraw @s [{"text":"   The location where the player lost their final life.","color":"dark_gray"},"\n"]

tellraw @s [{"text":" [< Previous]","color":"yellow","click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_page1 set 1"},"hover_event":{"action":"show_text","value":{"text":"Open Ghost Spawn Settings.","color":"yellow"}}},{"text":"         2/2         ","color":"dark_gray"},{"text":"[Back]","color":"yellow","click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"hover_event":{"action":"show_text","value":{"text":"Return to the main settings menu.","color":"yellow"}}},"\n "]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
