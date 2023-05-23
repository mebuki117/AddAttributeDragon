#execute at @e[type=minecraft:snowball,nbt={ownerName:oyamelonx}] run effect give @e[type=!minecraft:snowball,distance=..1] minecraft:instant_damage
execute anchored eyes as @a at @s if entity @e[type=minecraft:snowball,distance=..2] run effect give @s minecraft:instant_damage
