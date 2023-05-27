### replace item
## weapon
execute as @a[nbt={SelectedItem:{id:"minecraft:water_bucket",Count:1b}}] at @s if entity @e[type=minecraft:ender_dragon,distance=..64,limit=1] run replaceitem entity @s weapon minecraft:bucket{display:{Name:'[{"text":"凍ったバケツ"}]'},CustomModelData:1}
## weapon.offhand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:water_bucket",Count:1b}]}] at @s if entity @e[type=minecraft:ender_dragon,distance=..64,limit=1] run replaceitem entity @s weapon.offhand minecraft:bucket{display:{Name:'[{"text":"凍ったバケツ"}]'},CustomModelData:1}