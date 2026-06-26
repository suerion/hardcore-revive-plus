execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 0..3 run scoreboard players set hcrplus_settings hcrplus_ghost_spawn_mode 3

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings 1/2","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","text":"HCRPlus Server Spawn"},{"text":"\n"}]
tellraw @s [" ",{"color":"dark_gray","text":"Used when Ghost or Auto Revive is set to Server Spawn."},{"text":"\n"}]
tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger hcrplus_set_server_spawn set 1"},"color":"green","text":"Set Current Position"},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"Ghost Spawn Location"},{"text":"\n"}]
tellraw @s [" ",{"color":"dark_gray","text":"Where players appear as ghosts after losing their final life."},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"Server Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_server set 1"},"color":"green","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Nearest Living Player: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_player set 1"},"color":"yellow","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Vanilla Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_vanilla set 1"},"color":"aqua","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Death Location: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_death set 1"},"color":"yellow","text":"Select"},{"text":"\n\n"}]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Server Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Nearest Living Player"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 2 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Vanilla Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Death Location"},{"text":"\n\n"}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_page2 set 1"},"color":"yellow","text":"Next -->"},{"text":"   "},{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","text":"<-- Return"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1