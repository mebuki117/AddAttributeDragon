# summon dummy entity
execute at @e[type=minecraft:dragon_fireball] run summon minecraft:bat ~ ~1 ~ {Invulnerable:true,NoAI:true,Silent:true,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],Team:"aad_collision"}

# add tick count
execute as @e[team=aad_collision] run scoreboard players add @s aad_dummy_e 1

# tp then kill
execute as @e[team=aad_collision,scores={aad_dummy_e=31}] run tp @s 0 -10 0
execute as @e[team=aad_collision,scores={aad_dummy_e=32}] run kill @s