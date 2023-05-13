# structure block rotation
## south
execute at @e[y_rotation=-45..45,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/player",rotation:"NONE"}
## west
execute at @e[y_rotation=45..135,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/player",rotation:"COUNTERCLOCKWISE_90"}
## north
execute at @e[y_rotation=135..225,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/player",rotation:"CLOCKWISE_180"}
## east
execute at @e[y_rotation=225..315,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/player",rotation:"CLOCKWISE_90"}

# activate structure block
execute at @e[type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~-1 ~ minecraft:redstone_block

# fill ice
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:packed_ice replace minecraft:air

# replace corner
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~1 ~-1 ~1 ~1 ~2 ~1 minecraft:air replace minecraft:packed_ice
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~1 ~-1 ~-1 ~1 ~2 ~-1 minecraft:air replace minecraft:packed_ice
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~-1 ~-1 ~1 ~-1 ~2 ~1 minecraft:air replace minecraft:packed_ice
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~-1 ~-1 ~-1 ~-1 ~2 ~-1 minecraft:air replace minecraft:packed_ice

# glass replace
execute at @e[limit=1,type=minecraft:armor_stand] run setblock ~1 ~1 ~ minecraft:light_blue_stained_glass
execute at @e[limit=1,type=minecraft:armor_stand] run setblock ~ ~1 ~1 minecraft:light_blue_stained_glass
execute at @e[limit=1,type=minecraft:armor_stand] run setblock ~-1 ~1 ~ minecraft:light_blue_stained_glass
execute at @e[limit=1,type=minecraft:armor_stand] run setblock ~ ~1 ~-1 minecraft:light_blue_stained_glass

# replace structure block and redstone. and replace air
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute at @e[limit=1,type=minecraft:armor_stand] run fill ~ ~-1 ~ ~ ~ ~ minecraft:packed_ice