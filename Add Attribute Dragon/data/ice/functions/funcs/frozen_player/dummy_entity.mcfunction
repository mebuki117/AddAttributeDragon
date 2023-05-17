# tp
execute as @e[predicate=ice:frozen_player/d_aromr_stand] at @s if block ~ ~ ~ minecraft:packed_ice run tp @e[limit=1,sort=nearest,type=!minecraft:ender_dragon,type=!minecraft:armor_stand] @s

# kill
execute as @e[predicate=ice:frozen_player/d_aromr_stand] at @s if block ~ ~ ~ minecraft:packed_ice run kill @s