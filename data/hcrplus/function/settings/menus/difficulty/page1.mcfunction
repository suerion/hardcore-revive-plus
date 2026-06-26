execute unless score hcrplus_settings hcrplus_difficulty_mode matches 0..3 run scoreboard players set hcrplus_settings hcrplus_difficulty_mode 0

tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Difficulty","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"HCRPlus will not change the difficulty anymore. The current server difficulty remains until restart or manual /difficulty change."}]},"text":"ⓘ"},{"color":"gray","text":" Respect Server: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_difficulty_respect set 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"HCRPlus will stop forcing the difficulty. A server restart or manual /difficulty change may be required if a difficulty was previously forced."}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Force Minecraft difficulty to Easy now."}]},"text":"ⓘ"},{"color":"gray","text":" Force Easy: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_difficulty_easy set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Set difficulty to Easy"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Force Minecraft difficulty to Normal now."}]},"text":"ⓘ"},{"color":"gray","text":" Force Normal: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_difficulty_normal set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Set difficulty to Normal"}]},"text":"Select"},{"text":"\n"}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Force Minecraft difficulty to Hard now."}]},"text":"ⓘ"},{"color":"gray","text":" Force Hard: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_difficulty_hard set 1"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Set difficulty to Hard"}]},"text":"Select"},{"text":"\n"}]

execute if score hcrplus_settings hcrplus_difficulty_mode matches 0 run tellraw @s [" ",{"color":"aqua","text":"Current HCRPlus Mode: Respect Server"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_difficulty_mode matches 1 run tellraw @s [" ",{"color":"aqua","text":"Current HCRPlus Mode: Force Easy"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_difficulty_mode matches 2 run tellraw @s [" ",{"color":"aqua","text":"Current HCRPlus Mode: Force Normal"},{"text":"\n"}]
execute if score hcrplus_settings hcrplus_difficulty_mode matches 3 run tellraw @s [" ",{"color":"aqua","text":"Current HCRPlus Mode: Force Hard"},{"text":"\n"}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Return"}]},"text":"<-- Return"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1