### main
## structure block rotation
## south
execute at @e[y_rotation=-45..45,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,tag=!aad_i_frozen] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/armor_stand",rotation:"NONE"}
## west
execute at @e[y_rotation=45..135,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,tag=!aad_i_frozen] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/armor_stand",rotation:"COUNTERCLOCKWISE_90"}
## north
execute at @e[y_rotation=135..225,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,tag=!aad_i_frozen] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/armor_stand",rotation:"CLOCKWISE_180"}
## east
execute at @e[y_rotation=225..315,predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams,tag=!aad_i_frozen] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/armor_stand",rotation:"CLOCKWISE_90"}

## activate structure block
execute at @e[predicate=!ice:frozen_player/donot_frozen_types,predicate=!ice:dummy_teams] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~-1 ~ minecraft:redstone_block

## join team
#execute as @e[type=minecraft:armor_stand,team=!aad_i_frozen] at @s if block ~ ~ ~ minecraft:smooth_stone run team join aad_i_frozen @s

## fill ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:packed_ice replace minecraft:air

## replace corner
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~1 ~-1 ~1 ~1 ~2 ~1 minecraft:air replace minecraft:packed_ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~1 ~-1 ~-1 ~1 ~2 ~-1 minecraft:air replace minecraft:packed_ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~-1 ~-1 ~1 ~-1 ~2 ~1 minecraft:air replace minecraft:packed_ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~-1 ~-1 ~-1 ~-1 ~2 ~-1 minecraft:air replace minecraft:packed_ice

## glass replace
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~1 ~1 ~ ~1 ~1 ~ minecraft:light_blue_stained_glass replace minecraft:packed_ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~ ~1 ~1 ~ ~1 ~1 minecraft:light_blue_stained_glass replace minecraft:packed_ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~-1 ~1 ~ ~-1 ~1 ~ minecraft:light_blue_stained_glass replace minecraft:packed_ice
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~ ~1 ~-1 ~ ~1 ~-1 minecraft:light_blue_stained_glass replace minecraft:packed_ice

## replace structure block and redstone. and replace air
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute at @e[type=minecraft:armor_stand,tag=aad_i_frozen] run fill ~ ~-1 ~ ~ ~ ~ minecraft:packed_ice


### utils
## particle
execute as @e[type=minecraft:armor_stand,tag=aad_i_frozen] at @s if block ~ ~ ~ minecraft:packed_ice run particle minecraft:crit ~ ~ ~ 1.3 1.3 1.3 0 50

## sound
execute as @e[type=minecraft:armor_stand,tag=aad_i_frozen] at @s if block ~ ~ ~ minecraft:packed_ice run playsound minecraft:block.glass.break master @a ~ ~ ~


### dummy entity
## tp
execute as @e[type=minecraft:armor_stand,tag=aad_i_frozen] at @s if block ~ ~ ~ minecraft:packed_ice run tp @e[limit=1,sort=nearest,type=!minecraft:ender_dragon,type=!minecraft:armor_stand] @s

## kill
execute as @e[type=minecraft:armor_stand,tag=aad_i_frozen] at @s if block ~ ~ ~ minecraft:packed_ice run kill @s