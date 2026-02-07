### spawn_bombs
execute if entity @e[type=minecraft:ender_dragon,nbt={DragonPhase:6},limit=1] if score dragonhealth aad_d_data < dragonhealth_120 aad_d_data if score add_sb_count aad_sb_data matches ..10 run schedule function ice:funcs/snow_bomb/spawn_bombs 1s replace
