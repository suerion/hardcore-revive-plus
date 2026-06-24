# Scores
scoreboard objectives add deaths deathCount
scoreboard objectives add Lives dummy
scoreboard objectives add lifeReset dummy
scoreboard objectives add health health
scoreboard objectives add respawn dummy
scoreboard objectives add reviveTimer dummy

# Settings
scoreboard objectives add mnc_lifeJam dummy
scoreboard objectives add mnc_nameColors dummy
scoreboard objectives add mnc_tablist dummy
scoreboard objectives add mnc_soulCharmDebuffs dummy
scoreboard objectives add mnc_revival dummy
scoreboard objectives add mnc_possession dummy
scoreboard objectives add mnc_defaultLives dummy
scoreboard objectives add mnc_reviveLifeCount dummy
scoreboard objectives add mnc_migrated dummy
scoreboard objectives add mncDefaults dummy
scoreboard objectives add mnc_openedSettings dummy
scoreboard objectives add mnc_lifeSteal dummy
scoreboard objectives add mnc_autoRevive dummy
scoreboard objectives add reviveTimer dummy
scoreboard objectives add minute dummy
scoreboard objectives add second dummy
scoreboard objectives add mnc_announceRevive dummy
scoreboard objectives add mnc_autoReviveTimer dummy
scoreboard objectives add hcrplus_ghostAlert dummy
scoreboard objectives add hcrplus_ghostCooldown dummy
scoreboard objectives add hcrplus_difficulty_mode dummy
scoreboard objectives add hcrplus_spawn_mode dummy


# Revive timer because Minecraft doesn't have a built-in way to do this
scoreboard objectives add dummy_1200 dummy
scoreboard objectives add dummy_20 dummy
scoreboard players set mnc_settings dummy_1200 1200
scoreboard players set mnc_settings dummy_20 20

# Teams
team add 0
team add 1
team add 2
team add 3
team add 4
team add 5

# Triggers
scoreboard objectives add _hcrplus_settings trigger

scoreboard objectives add hcrplus_lives_page1 trigger
scoreboard objectives add hcrplus_lives_page2 trigger
scoreboard objectives add hcrplus_lives_page3 trigger
scoreboard objectives add hcrplus_lives_ar_on trigger
scoreboard objectives add hcrplus_lives_ar_off trigger
scoreboard objectives add hcrplus_lives_ls_on trigger
scoreboard objectives add hcrplus_lives_ls_off trigger
scoreboard objectives add hcrplus_lives_lives_1 trigger
scoreboard objectives add hcrplus_lives_lives_3 trigger
scoreboard objectives add hcrplus_lives_lives_5 trigger
scoreboard objectives add hcrplus_lives_nc_on trigger
scoreboard objectives add hcrplus_lives_nc_off trigger
scoreboard objectives add hcrplus_lives_ps_on trigger
scoreboard objectives add hcrplus_lives_ps_off trigger
scoreboard objectives add hcrplus_lives_rv_1 trigger
scoreboard objectives add hcrplus_lives_rv_half trigger
scoreboard objectives add hcrplus_lives_rv_max trigger
scoreboard objectives add hcrplus_lives_tab_on trigger
scoreboard objectives add hcrplus_lives_tab_off trigger
scoreboard objectives add hcrplus_lives_revive_timer_1m trigger
scoreboard objectives add hcrplus_lives_revive_timer_5m trigger
scoreboard objectives add hcrplus_lives_revive_timer_10m trigger
scoreboard objectives add hcrplus_lives_revive_timer_1h trigger

scoreboard objectives add hcrplus_items_page1 trigger
scoreboard objectives add hcrplus_items_page2 trigger
scoreboard objectives add hcrplus_items_announce_revive_on trigger
scoreboard objectives add hcrplus_items_announce_revive_off trigger
scoreboard objectives add hcrplus_items_charm_debuffs_on trigger
scoreboard objectives add hcrplus_items_charm_debuffs_off trigger
scoreboard objectives add hcrplus_items_lifejam_on trigger
scoreboard objectives add hcrplus_items_lifejam_off trigger
scoreboard objectives add hcrplus_items_charm_on trigger
scoreboard objectives add hcrplus_items_charm_off trigger

scoreboard objectives add hcrplus_presets_page1 trigger
scoreboard objectives add hcrplus_presets_page1_casual trigger
scoreboard objectives add hcrplus_presets_page1_default trigger
scoreboard objectives add hcrplus_presets_page1_lifesteal trigger
scoreboard objectives add hcrplus_presets_casual trigger
scoreboard objectives add hcrplus_presets_default trigger
scoreboard objectives add hcrplus_presets_lifesteal trigger

scoreboard objectives add hcrplus_debug_page1 trigger
scoreboard objectives add hcrplus_debug_give_charm trigger
scoreboard objectives add hcrplus_debug_give_jam trigger

scoreboard objectives add hcrplus_difficulty_page1 trigger
scoreboard objectives add hcrplus_difficulty_respect trigger
scoreboard objectives add hcrplus_difficulty_easy trigger
scoreboard objectives add hcrplus_difficulty_normal trigger
scoreboard objectives add hcrplus_difficulty_hard trigger

scoreboard objectives add hcrplus_spawn_page1 trigger
scoreboard objectives add hcrplus_spawn_world trigger
scoreboard objectives add hcrplus_spawn_death trigger
scoreboard objectives add hcrplus_spawn_nearest trigger
scoreboard objectives add hcrplus_spawn_bed trigger
