execute unless score hcrplus_settings hcrplus_revive_spawn_mode matches 0..2 run scoreboard players set hcrplus_settings hcrplus_revive_spawn_mode 0

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Spawn Settings 2/2","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Revive players at their normal Minecraft respawn location."}]},"text":"ⓘ"},{"color":"gray","text":" Vanilla Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_vanilla set 1"},"color":"aqua","hover_event":{"action":"show_text","value":[{"text":"Select Vanilla Spawn"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Revive players at the configured HCRPlus Server Spawn."}]},"text":"ⓘ"},{"color":"gray","text":" Server Spawn: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_server set 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Select Server Spawn"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Revive players where they lost their final life."}]},"text":"ⓘ"},{"color":"gray","text":" Death Location: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_revive_spawn_death set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Select Death Location"}]},"text":"Select"},{"text":"\n"}]

execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 0 run tellraw @s [" ",{"color":"aqua","text":"Current Auto Revive: Vanilla Spawn"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 1 run tellraw @s [" ",{"color":"aqua","text":"Current Auto Revive: Server Spawn"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 2 run tellraw @s [" ",{"color":"aqua","text":"Current Auto Revive: Death Location"},{"text":"\n"}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Previous Page"}]},"text":"<-- Return"},{"color":"gray","text":"     - 2/2 -     "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_spawn_page1 set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Previous Page"}]},"text":"Page 1 -->"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
