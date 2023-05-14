# particle
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~ ~ minecraft:packed_ice run particle minecraft:crit ~ ~ ~ 1.3 1.3 1.3 0 50

# sound
execute as @e[type=minecraft:armor_stand] at @s if block ~ ~ ~ minecraft:packed_ice run playsound minecraft:block.glass.break master @a ~ ~ ~