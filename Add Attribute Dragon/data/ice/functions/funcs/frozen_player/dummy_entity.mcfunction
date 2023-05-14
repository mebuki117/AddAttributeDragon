# tp
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~ ~ minecraft:packed_ice run tp @e[limit=1,sort=nearest,type=!minecraft:ender_dragon,type=!minecraft:armor_stand] @s

# kill
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~ ~ minecraft:packed_ice run kill @s