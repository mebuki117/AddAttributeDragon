# particle
execute at @e[type=minecraft:dragon_fireball] run particle minecraft:crit ~ ~ ~ 1.2 1.2 1.2 0 25

# sound
execute at @e[type=minecraft:dragon_fireball] run playsound minecraft:block.glass.break master @a ~ ~ ~

# damage
execute at @e[type=minecraft:dragon_fireball] run effect give @e[distance=..3] minecraft:wither 5 1 true

# replace blocks
execute at @e[team=aad_collision,scores={aad_dummy_e=30}] run fill ~-1 ~ ~-1 ~2 ~2 ~2 minecraft:air replace minecraft:packed_ice

# i hate dragon breath
kill @e[type=minecraft:area_effect_cloud]