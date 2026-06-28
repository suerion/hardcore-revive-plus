# Start real vanilla respawn
tag @s add hcrplus_vanilla_respawn
function hcrplus:util/remove_death_marker

gamerule immediate_respawn true
gamemode survival @s
kill @s