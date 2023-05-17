# particle
execute as @e[predicate=ice:frozen_player/d_aromr_stand] at @s if block ~ ~ ~ minecraft:packed_ice run particle minecraft:crit ~ ~ ~ 1.3 1.3 1.3 0 50

# sound
execute as @e[predicate=ice:frozen_player/d_aromr_stand] at @s if block ~ ~ ~ minecraft:packed_ice run playsound minecraft:block.glass.break master @a ~ ~ ~