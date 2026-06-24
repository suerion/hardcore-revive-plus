execute unless score hcrplus_settings hcrplus_spawn_mode matches 0..3 run scoreboard players set hcrplus_settings hcrplus_spawn_mode 1

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Spawn Mode","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","text":"Choose where players are placed after losing their final life."},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"World Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_world set 1"},"color":"green","text":"Select"},{"text":"\n "}]

tellraw @s [" ",{"color":"gray","text":"Death Location: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_death set 1"},"color":"yellow","text":"Select"},{"text":"\n "}]

tellraw @s [" ",{"color":"gray","text":"Nearest Living Player: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_nearest set 1"},"color":"yellow","text":"Select"},{"text":"\n "}]

tellraw @s [" ",{"color":"gray","text":"Bed / Respawn Anchor: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_bed set 1"},"color":"aqua","text":"Select"},{"text":"\n "}]

execute if score hcrplus_settings hcrplus_spawn_mode matches 0 run tellraw @s [" ",{"color":"green","text":"Current Spawn Mode: World Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_spawn_mode matches 1 run tellraw @s [" ",{"color":"green","text":"Current Spawn Mode: Death Location"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_spawn_mode matches 2 run tellraw @s [" ",{"color":"green","text":"Current Spawn Mode: Nearest Living Player"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_spawn_mode matches 3 run tellraw @s [" ",{"color":"green","text":"Current Spawn Mode: Bed / Respawn Anchor"},{"text":"\n "}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","text":"<-- Return"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
