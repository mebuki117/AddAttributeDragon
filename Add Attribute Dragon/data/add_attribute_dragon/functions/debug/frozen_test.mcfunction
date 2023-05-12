# structure block rotation

## south
execute at @a[y_rotation=-45..45,gamemode=!spectator] unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:-1,posY:-1,posZ:-1,rotation:"NONE"}

## west
execute at @a[y_rotation=45..135,gamemode=!spectator] unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:-1,posY:-1,posZ:1,rotation:"COUNTERCLOCKWISE_90"}

## north
execute at @a[y_rotation=135..225,gamemode=!spectator] unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:1,posY:-1,posZ:1,rotation:"CLOCKWISE_180"}

## east
execute at @a[y_rotation=225..315,gamemode=!spectator] unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"frozen_player/frozen_model",posX:1,posY:-1,posZ:-1,rotation:"CLOCKWISE_90"}

# activate structure block
execute at @a[gamemode=!spectator] unless block ~ ~ ~ minecraft:packed_ice run setblock ~ ~-1 ~ minecraft:redstone_block

# tp then kill
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~ ~ minecraft:packed_ice run tp @p @s
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~ ~ minecraft:packed_ice run kill @s