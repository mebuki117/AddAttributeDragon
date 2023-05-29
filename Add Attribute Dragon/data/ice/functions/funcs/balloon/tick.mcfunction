### slime loot table dummy score
scoreboard players set @e[type=minecraft:slime,tag=aad_i_balloon] aad_i_balloon_d 1

### give inv effect
effect give @e[type=minecraft:slime,tag=aad_i_balloon] minecraft:invisibility 5 1 true

### tp
execute at @e[type=minecraft:slime,tag=aad_i_balloon] run tp @e[type=minecraft:armor_stand,tag=aad_i_balloon,sort=nearest,limit=1] ~ ~-1.4 ~

### get a dragon health
execute as @e[type=minecraft:ender_dragon] store result score @s aad_i_b_d_health run data get entity @s Health

### oparation hp
execute as @e[predicate=ice:balloon/y_dy,tag=aad_i_balloon] run scoreboard players add @e[type=minecraft:ender_dragon] aad_i_b_d_health 20

execute as @e[predicate=ice:balloon/y_dy,tag=aad_i_balloon] run kill @s

### utils
## particle
execute as @e[type=minecraft:armor_stand,tag=aad_i_balloon] at @s unless entity @e[type=minecraft:slime,tag=aad_i_balloon,distance=..2] run particle minecraft:bubble_pop ~ ~2 ~ 0.5 0.5 0.5 0 8
## sound
execute as @e[type=minecraft:armor_stand,tag=aad_i_balloon] at @s unless entity @e[type=minecraft:slime,tag=aad_i_balloon,distance=..2] run playsound minecraft:block.glass.break master @a ~ ~1 ~

### merge score
execute as @e[type=minecraft:ender_dragon] store result entity @s Health float 1 run scoreboard players get @s aad_i_b_d_health

### kill when unless dist <= 2
execute as @e[type=minecraft:armor_stand,tag=aad_i_balloon] at @s unless entity @e[type=minecraft:slime,tag=aad_i_balloon,distance=..2] run kill @s
execute as @e[type=minecraft:slime,tag=aad_i_balloon] at @s unless entity @e[type=minecraft:armor_stand,tag=aad_i_balloon,distance=..2] run kill @s
