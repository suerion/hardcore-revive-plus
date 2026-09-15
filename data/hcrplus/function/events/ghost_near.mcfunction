# When a ghost is within 20 blocks and cooldown is 0, send actionbar and set cooldown to 600 ticks
execute as @a[scores={Lives=1..}] at @s if entity @a[distance=..20,tag=hcrplus_ghost,gamemode=spectator] if score @s hcrplus_ghostCooldown matches 0 run title @s actionbar [{"selector":"@a[distance=..20,tag=hcrplus_ghost,gamemode=spectator,limit=1,sort=nearest]","color":"white"},{"text":" is nearby!","color":"red"}]
execute as @a[scores={Lives=1..}] at @s if entity @a[distance=..20,tag=hcrplus_ghost,gamemode=spectator] if score @s hcrplus_ghostCooldown matches 0 run scoreboard players set @s hcrplus_ghostCooldown 600

# Only tick down the cooldown when no ghost is within 20 blocks
execute as @a[scores={hcrplus_ghostCooldown=1..}] at @s unless entity @a[distance=..20,tag=hcrplus_ghost,gamemode=spectator] run scoreboard players remove @s hcrplus_ghostCooldown 1