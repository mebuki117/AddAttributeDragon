# structure block rotation
## south
execute at @e[y_rotation=-45..45,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:-1,posY:-1,posZ:-1,rotation:"NONE"}
## west
execute at @e[y_rotation=45..135,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:-1,posY:-1,posZ:1,rotation:"COUNTERCLOCKWISE_90"}
## north
execute at @e[y_rotation=135..225,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:1,posY:-1,posZ:1,rotation:"CLOCKWISE_180"}
## east
execute at @e[y_rotation=225..315,type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:1,posY:-1,posZ:-1,rotation:"CLOCKWISE_90"}

# activate structure block
execute at @e[type=!minecraft:ender_dragon,type=!minecraft:item,type=!minecraft:end_crystal] if entity @e[type=minecraft:ender_dragon,distance=..10] if score dragonphase aad_d_data matches 3 unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~-1 ~ minecraft:redstone_block