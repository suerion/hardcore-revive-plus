execute unless score hcrplus_settings hcrplus_ghost_spawn_mode matches 0..3 run scoreboard players set hcrplus_settings hcrplus_ghost_spawn_mode 3

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings 1/2","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Used when Ghost Spawn or Auto Revive is configured to use the HCRPlus Server Spawn."}]},"text":"ⓘ"},{"color":"gray","text":" HCRPlus Server Spawn"}]

execute unless entity @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tellraw @s [" ",{"color":"gray","text":" Status: "},{"color":"red","text":"Not Set"},{"text":"\n"}]
execute if entity @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tellraw @s [" ",{"color":"gray","text":" Status: "},{"color":"green","text":"Set"},{"text":"\n"}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger hcrplus_set_server_spawn set 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Use your current position as the HCRPlus Server Spawn."}]},"text":"Set Current Position"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Spawn ghosts at the configured HCRPlus Server Spawn."}]},"text":"ⓘ"},{"color":"gray","text":" Server Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_server set 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Select Server Spawn"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Spawn ghosts near the closest living player."}]},"text":"ⓘ"},{"color":"gray","text":" Nearest Living Player: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_player set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Select Nearest Living Player"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Use the player's normal Minecraft respawn location."}]},"text":"ⓘ"},{"color":"gray","text":" Vanilla Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_vanilla set 1"},"color":"aqua","hover_event":{"action":"show_text","value":[{"text":"Select Vanilla Spawn"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Spawn ghosts where they lost their final life."}]},"text":"ⓘ"},{"color":"gray","text":" Death Location: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_ghost_spawn_death set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Select Death Location"}]},"text":"Select"},{"text":"\n"}]

execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 0 run tellraw @s [" ",{"color":"aqua","text":"Current Ghost Spawn: Server Spawn"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 1 run tellraw @s [" ",{"color":"aqua","text":"Current Ghost Spawn: Nearest Living Player"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 2 run tellraw @s [" ",{"color":"aqua","text":"Current Ghost Spawn: Vanilla Spawn"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_ghost_spawn_mode matches 3 run tellraw @s [" ",{"color":"aqua","text":"Current Ghost Spawn: Death Location"},{"text":"\n"}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Previous Page"}]},"text":"<-- Return"},{"color":"gray","text":"     - 1/2 -     "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_page2 set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Next Page"}]},"text":"Page 2 -->"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
