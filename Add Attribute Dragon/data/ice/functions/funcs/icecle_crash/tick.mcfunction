### random spwan
execute as @a at @s if entity @e[type=minecraft:ender_dragon,distance=..96] if predicate ice:icecle_crash/chance run tag @s add aad_i_icecle
execute at @a[tag=aad_i_icecle] run setblock ~ 130 ~ minecraft:structure_block{mode:"LOAD",name:"icecle_crash/armor_stand",rotation:"NONE"}
execute at @a[tag=aad_i_icecle] run setblock ~ 129 ~ minecraft:redstone_block
execute at @a[tag=aad_i_icecle] run fill ~ 129 ~ ~ 130 ~ minecraft:air
execute as @a[tag=aad_i_icecle] run tag @s remove aad_i_icecle

### i hate collisionrule
execute as @e[type=minecraft:armor_stand,tag=aad_i_icecle] at @s if entity @e[type=minecraft:ender_dragon,distance=..10] run fill ~-1 ~ ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice
execute as @e[type=minecraft:armor_stand,tag=aad_i_icecle] at @s if entity @e[type=minecraft:ender_dragon,distance=..10] run kill @s


### main
## place ice blocks
# main body
execute at @e[type=minecraft:armor_stand,tag=aad_i_icecle] run fill ~ ~ ~ ~ ~6 ~ minecraft:packed_ice replace minecraft:air
# we body
execute at @e[type=minecraft:armor_stand,tag=aad_i_icecle] run fill ~-1 ~2 ~ ~1 ~6 ~ minecraft:packed_ice replace minecraft:air
# ns body
execute at @e[type=minecraft:armor_stand,tag=aad_i_icecle] run fill ~ ~2 ~-1 ~ ~6 ~1 minecraft:packed_ice replace minecraft:air
# top body
execute at @e[type=minecraft:armor_stand,tag=aad_i_icecle] run fill ~-1 ~5 ~-1 ~1 ~6 ~1 minecraft:packed_ice replace minecraft:air


### delete ice blocks
execute at @e[type=minecraft:armor_stand,tag=aad_i_icecle] run fill ~-1 ~7 ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice


### fall down stopper
execute as @e[type=minecraft:armor_stand,tag=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run schedule function ice:funcs/icecle_crash/stopper 3t append


### utils
## damage
execute at @e[type=minecraft:armor_stand,tag=aad_i_icecle] run effect give @e[distance=..3] minecraft:instant_damage 1 1 true

## stray death count
scoreboard players add @e[type=minecraft:stray,tag=aad_i_death_c] aad_death_count 1
# death
execute as @e[type=minecraft:stray,scores={aad_death_count=1200},tag=aad_i_death_c] run kill @s