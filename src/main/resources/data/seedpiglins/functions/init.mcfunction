scoreboard players set 128 seed 128

execute store result score seed seed run seed
scoreboard players operation seed seed %= 128 seed

execute if score seed seed matches 0..31 run function seedpiglins:presets/0t31
execute if score seed seed matches 32..63 run function seedpiglins:presets/32t63
execute if score seed seed matches 64..95 run function seedpiglins:presets/64t95
execute if score seed seed matches 96..127 run function seedpiglins:presets/96t127

scoreboard players set done piglins 1