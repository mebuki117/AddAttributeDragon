##### team (aad_i_beam) = bat

### place ice blocks
execute at @e[type=minecraft:dragon_fireball] run setblock ~ ~1 ~ minecraft:packed_ice
execute at @e[type=minecraft:dragon_fireball] run setblock ~1 ~1 ~ minecraft:packed_ice
execute at @e[type=minecraft:dragon_fireball] run setblock ~ ~1 ~1 minecraft:packed_ice

execute at @e[type=minecraft:dragon_fireball] run setblock ~ ~2 ~ minecraft:packed_ice
execute at @e[type=minecraft:dragon_fireball] run setblock ~1 ~2 ~ minecraft:packed_ice
execute at @e[type=minecraft:dragon_fireball] run setblock ~ ~2 ~1 minecraft:packed_ice


### utils
## particle
execute at @e[type=minecraft:dragon_fireball] run particle minecraft:crit ~ ~ ~ 1.2 1.2 1.2 0 25

## sound
execute at @e[type=minecraft:dragon_fireball] run playsound minecraft:block.glass.break master @a ~ ~ ~

## damage
execute at @e[type=minecraft:dragon_fireball] run effect give @e[distance=..4] minecraft:wither 5 1 true


### delete ice blocks
execute at @e[team=aad_i_beam,scores={aad_dummy_e=30}] run fill ~-1 ~ ~-1 ~2 ~2 ~2 minecraft:air replace minecraft:packed_ice


### utlis
## i hate dragon breath
kill @e[type=minecraft:area_effect_cloud]


### dummy entity
## summon dummy entity
execute at @e[type=minecraft:dragon_fireball] run summon minecraft:bat ~ ~1 ~ {Invulnerable:true,NoAI:true,Silent:true,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:true}],Team:"aad_i_beam"}

## add tick count
execute as @e[team=aad_i_beam] run scoreboard players add @s aad_dummy_e 1

## tp
execute as @e[team=aad_i_beam,scores={aad_dummy_e=31}] run tp @s 0 -10 0

## kill
execute as @e[team=aad_i_beam,scores={aad_dummy_e=32}] run kill @s