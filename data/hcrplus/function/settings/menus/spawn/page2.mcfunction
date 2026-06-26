execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 0..2 run scoreboard players set hcrplus_settings hcrplus_revive_spawn_mode 0

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings 2/2","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","text":"Auto Revive Location"},{"text":"\n"}]
tellraw @s [" ",{"color":"dark_gray","text":"Where players are revived after the auto revive timer finishes."},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"Vanilla Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_vanilla set 1"},"color":"aqua","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Server Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_server set 1"},"color":"green","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Death Location: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_death set 1"},"color":"yellow","text":"Select"},{"text":"\n\n"}]

execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 0 run tellraw @s [" ",{"color":"green","text":"Current Auto Revive: Vanilla Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 1 run tellraw @s [" ",{"color":"green","text":"Current Auto Revive: Server Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 2 run tellraw @s [" ",{"color":"green","text":"Current Auto Revive: Death Location"},{"text":"\n\n"}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_page1 set 1"},"color":"yellow","text":"<-- Back"},{"text":"   "},{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","text":"<-- Return"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1