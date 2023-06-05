##### team (aad_i_frozen) = armor_stand

### spawn armor_stand
## dragonhealth >= 20
# south
execute align xz at @e[y_rotation=-45..45,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,nbt={DragonPhase:3},limit=1] if score dragonhealth aad_d_data >= dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[0.0f,0.0f],Team:"aad_i_frozen"}
# west
execute align xz at @e[y_rotation=45..135,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,nbt={DragonPhase:3},limit=1] if score dragonhealth aad_d_data >= dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[90.0f,0.0f],Team:"aad_i_frozen"}
# north
execute align xz at @e[y_rotation=135..225,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,nbt={DragonPhase:3},limit=1] if score dragonhealth aad_d_data >= dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[180.0f,0.0f],Team:"aad_i_frozen"}
# east
execute align xz at @e[y_rotation=225..315,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,nbt={DragonPhase:3},limit=1] if score dragonhealth aad_d_data >= dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[-90.0f,0.0f],Team:"aad_i_frozen"}
## dragonhealth < 20
# south
execute align xz at @e[y_rotation=-45..45,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,limit=1] if score dragonhealth aad_d_data < dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[0.0f,0.0f],Team:"aad_i_frozen"}
# west
execute align xz at @e[y_rotation=45..135,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,limit=1] if score dragonhealth aad_d_data < dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[90.0f,0.0f],Team:"aad_i_frozen"}
# north
execute align xz at @e[y_rotation=135..225,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,limit=1] if score dragonhealth aad_d_data < dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[180.0f,0.0f],Team:"aad_i_frozen"}
# east
execute align xz at @e[y_rotation=225..315,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,gamemode=!creative,gamemode=!spectator] if entity @e[type=minecraft:ender_dragon,distance=..10,limit=1] if score dragonhealth aad_d_data < dragonhealth_20 aad_d_data unless block ~ ~ ~ minecraft:packed_ice run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invisible:true,Small:true,Rotation:[-90.0f,0.0f],Team:"aad_i_frozen"}

### fill ice
execute at @e[team=aad_i_frozen] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:packed_ice replace minecraft:air

### replace corner
execute at @e[team=aad_i_frozen] run fill ~1 ~-1 ~1 ~1 ~2 ~1 minecraft:air replace minecraft:packed_ice
execute at @e[team=aad_i_frozen] run fill ~1 ~-1 ~-1 ~1 ~2 ~-1 minecraft:air replace minecraft:packed_ice
execute at @e[team=aad_i_frozen] run fill ~-1 ~-1 ~1 ~-1 ~2 ~1 minecraft:air replace minecraft:packed_ice
execute at @e[team=aad_i_frozen] run fill ~-1 ~-1 ~-1 ~-1 ~2 ~-1 minecraft:air replace minecraft:packed_ice

### glass replace
execute at @e[team=aad_i_frozen] run fill ~1 ~1 ~ ~1 ~1 ~ minecraft:light_blue_stained_glass replace minecraft:packed_ice
execute at @e[team=aad_i_frozen] run fill ~ ~1 ~1 ~ ~1 ~1 minecraft:light_blue_stained_glass replace minecraft:packed_ice
execute at @e[team=aad_i_frozen] run fill ~-1 ~1 ~ ~-1 ~1 ~ minecraft:light_blue_stained_glass replace minecraft:packed_ice
execute at @e[team=aad_i_frozen] run fill ~ ~1 ~-1 ~ ~1 ~-1 minecraft:light_blue_stained_glass replace minecraft:packed_ice

### replace packed_ice and air
execute at @e[team=aad_i_frozen] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute at @e[team=aad_i_frozen] run fill ~ ~ ~ ~ ~ ~ minecraft:packed_ice

### utils
## particle
execute as @e[team=aad_i_frozen] at @s run particle minecraft:crit ~ ~ ~ 1.3 1.3 1.3 0 50
## sound
execute as @e[team=aad_i_frozen] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~

### dummy entity
## tp
execute as @e[team=aad_i_frozen] at @s run tp @e[limit=1,sort=nearest,type=!minecraft:ender_dragon,type=!minecraft:armor_stand] @s
## kill
execute as @e[team=aad_i_frozen] at @s run kill @s