gamemode survival @a[scores={Lives=..0}]
execute as @a[scores={Lives=..0}] run tp @s ~ ~ ~
execute as @a[scores={Lives=..0}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a
execute as @a[scores={Lives=..0}] at @s run particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a

execute as @a[scores={Lives=..0}] run title @s actionbar {"text":"You have been revived!","color":"white"}

# Remove HCRPlus forced chunks
execute as @e[type=minecraft:marker,tag=hcrplus_server_spawn] at @s run forceload remove ~ ~

# Remove HCRPlus markers
kill @e[type=minecraft:marker,tag=hcrplus_server_spawn]
kill @e[type=minecraft:marker,tag=hcrplus_death_location]
kill @e[type=minecraft:marker,tag=hcrplus_last_alive_location]

# Core scores
scoreboard objectives remove deaths
scoreboard objectives remove hcrplus_vanilla_deaths
scoreboard objectives remove Lives
scoreboard objectives remove lifeReset
scoreboard objectives remove health
scoreboard objectives remove respawn
scoreboard objectives remove reviveTimer
scoreboard objectives remove minute
scoreboard objectives remove second

# Settings
scoreboard objectives remove mnc_lifeJam
scoreboard objectives remove mnc_nameColors
scoreboard objectives remove mnc_tablist
scoreboard objectives remove mnc_soulCharmDebuffs
scoreboard objectives remove mnc_revival
scoreboard objectives remove mnc_possession
scoreboard objectives remove mnc_defaultLives
scoreboard objectives remove mnc_reviveLifeCount
scoreboard objectives remove mnc_migrated
scoreboard objectives remove mncDefaults
scoreboard objectives remove mnc_openedSettings
scoreboard objectives remove mnc_lifeSteal
scoreboard objectives remove mnc_autoRevive
scoreboard objectives remove mnc_announceRevive
scoreboard objectives remove mnc_autoReviveTimer

scoreboard objectives remove hcrplus_ghostAlert
scoreboard objectives remove hcrplus_ghostCooldown
scoreboard objectives remove hcrplus_difficulty_mode
scoreboard objectives remove hcrplus_ghost_spawn_mode
scoreboard objectives remove hcrplus_revive_spawn_mode

scoreboard objectives remove hcrplus_player_id
scoreboard objectives remove hcrplus_next_player_id
scoreboard objectives remove hcrplus_server_spawn_notice
scoreboard objectives remove hcrplus_respawn_health

# Internal timer scores
scoreboard objectives remove dummy_1200
scoreboard objectives remove dummy_20

# Main settings trigger
scoreboard objectives remove _hcrplus_settings

# Lives settings triggers
scoreboard objectives remove hcrplus_lives_page1
scoreboard objectives remove hcrplus_lives_page2
scoreboard objectives remove hcrplus_lives_page3
scoreboard objectives remove hcrplus_lives_ar_on
scoreboard objectives remove hcrplus_lives_ar_off
scoreboard objectives remove hcrplus_lives_ls_on
scoreboard objectives remove hcrplus_lives_ls_off
scoreboard objectives remove hcrplus_lives_lives_1
scoreboard objectives remove hcrplus_lives_lives_3
scoreboard objectives remove hcrplus_lives_lives_5
scoreboard objectives remove hcrplus_lives_nc_on
scoreboard objectives remove hcrplus_lives_nc_off
scoreboard objectives remove hcrplus_lives_ps_on
scoreboard objectives remove hcrplus_lives_ps_off
scoreboard objectives remove hcrplus_lives_rv_1
scoreboard objectives remove hcrplus_lives_rv_half
scoreboard objectives remove hcrplus_lives_rv_max
scoreboard objectives remove hcrplus_lives_tab_on
scoreboard objectives remove hcrplus_lives_tab_off
scoreboard objectives remove hcrplus_lives_revive_timer_1m
scoreboard objectives remove hcrplus_lives_revive_timer_5m
scoreboard objectives remove hcrplus_lives_revive_timer_10m
scoreboard objectives remove hcrplus_lives_revive_timer_1h

# Item settings triggers
scoreboard objectives remove hcrplus_items_page1
scoreboard objectives remove hcrplus_items_page2
scoreboard objectives remove hcrplus_items_announce_revive_on
scoreboard objectives remove hcrplus_items_announce_revive_off
scoreboard objectives remove hcrplus_items_charm_debuffs_on
scoreboard objectives remove hcrplus_items_charm_debuffs_off
scoreboard objectives remove hcrplus_items_lifejam_on
scoreboard objectives remove hcrplus_items_lifejam_off
scoreboard objectives remove hcrplus_items_charm_on
scoreboard objectives remove hcrplus_items_charm_off

# Preset triggers
scoreboard objectives remove hcrplus_presets_page1
scoreboard objectives remove hcrplus_presets_page1_casual
scoreboard objectives remove hcrplus_presets_page1_default
scoreboard objectives remove hcrplus_presets_page1_lifesteal
scoreboard objectives remove hcrplus_presets_casual
scoreboard objectives remove hcrplus_presets_default
scoreboard objectives remove hcrplus_presets_lifesteal

# Debug menu triggers
scoreboard objectives remove hcrplus_debug_page1
scoreboard objectives remove hcrplus_debug_give_charm
scoreboard objectives remove hcrplus_debug_give_jam

# Difficulty triggers
scoreboard objectives remove hcrplus_difficulty_page1
scoreboard objectives remove hcrplus_difficulty_respect
scoreboard objectives remove hcrplus_difficulty_easy
scoreboard objectives remove hcrplus_difficulty_normal
scoreboard objectives remove hcrplus_difficulty_hard

# Spawn menu triggers
scoreboard objectives remove hcrplus_spawn_page1
scoreboard objectives remove hcrplus_spawn_page2

scoreboard objectives remove hcrplus_ghost_spawn_server
scoreboard objectives remove hcrplus_ghost_spawn_player
scoreboard objectives remove hcrplus_ghost_spawn_vanilla
scoreboard objectives remove hcrplus_ghost_spawn_death

scoreboard objectives remove hcrplus_revive_spawn_vanilla
scoreboard objectives remove hcrplus_revive_spawn_server
scoreboard objectives remove hcrplus_revive_spawn_death

scoreboard objectives remove hcrplus_set_server_spawn

# Teams
team remove 0
team remove 1
team remove 2
team remove 3
team remove 4
team remove 5

# Player tags
tag @a remove nHrCheck
tag @a remove autoRevive
tag @a remove Possessed
tag @a remove mncHealthFix
tag @a remove hcrplus_openedsettings
tag @a remove hcrplus_operator
tag @a remove lifeJam
tag @a remove Revive
tag @a remove hcrplus_server_spawn_notice
tag @a remove hcrplus_pending_ghost_spawn
tag @a remove hcrplus_vanilla_respawn
tag @a remove hcrplus_dying_player
tag @a remove hcrplus_ghost_spawn_player
tag @a remove hcrplus_reviving_player

tellraw @s ["\n ",{"text":"Hardcore Revive+ ","color":"red"},"has been uninstalled!\n ",{"text":"To complete removal, delete the data pack from your 'datapacks' folder, or delete the mod from your 'mods' folder.","color":"yellow"},"\n\n "]