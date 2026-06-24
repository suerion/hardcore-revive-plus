execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 0..3 run scoreboard players set hcrplus_settings hcrplus_ghost_spawn_mode 3
execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 0..1 run scoreboard players set hcrplus_settings hcrplus_revive_spawn_mode 0

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","text":"Ghost Spawn Location"},{"text":"\n"}]
tellraw @s [" ",{"color":"dark_gray","text":"Where players appear as ghosts after losing their final life."},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"HCRPlus World Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_set_world_spawn set 1"},"color":"green","text":"Set Current Position"},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"World Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_world set 1"},"color":"green","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Nearest Living Player: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_player set 1"},"color":"yellow","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Bed / Respawn Anchor: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_bed set 1"},"color":"aqua","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"Death Location: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_death set 1"},"color":"yellow","text":"Select"},{"text":"\n\n"}]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: World Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Nearest Living Player"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 2 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Bed / Respawn Anchor"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 run tellraw @s [" ",{"color":"green","text":"Current Ghost Spawn: Death Location"},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"Auto Revive Location"},{"text":"\n"}]
tellraw @s [" ",{"color":"dark_gray","text":"Where players appear after the revive timer finishes."},{"text":"\n\n"}]

tellraw @s [" ",{"color":"gray","text":"Bed / Respawn Anchor: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_bed set 1"},"color":"aqua","text":"Select"},{"text":"\n "}]
tellraw @s [" ",{"color":"gray","text":"World Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_world set 1"},"color":"green","text":"Select"},{"text":"\n\n"}]

execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 0 run tellraw @s [" ",{"color":"green","text":"Current Auto Revive: Bed / Respawn Anchor, fallback World Spawn"},{"text":"\n "}]
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 1 run tellraw @s [" ",{"color":"green","text":"Current Auto Revive: World Spawn"},{"text":"\n "}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","text":"<-- Return"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1