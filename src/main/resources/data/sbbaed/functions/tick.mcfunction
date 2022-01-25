execute as @e[type=item,nbt={Item:{id:"minecraft:chain_command_block"}}] run function sbbaed:blazedrop

scoreboard players add @e[type=eye_of_ender] blazeeye 1
execute as @e[type=eye_of_ender,scores={blazeeye=81}] at @s run function sbbaed:eyedrop