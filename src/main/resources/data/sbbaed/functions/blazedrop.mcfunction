#Get Multiplier and cycle list
execute store result score dropmultiplier blazeeye run data get storage sbbaed:lists blazelist[0]
data modify storage sbbaed:lists blazelist append from storage sbbaed:lists blazelist[0]
data remove storage sbbaed:lists blazelist[0]

#Calculate Drop
execute store result score drop blazeeye run data get entity @s Item.Count
scoreboard players operation drop blazeeye *= dropmultiplier blazeeye
scoreboard players operation drop blazeeye /= 1000 blazeeye

#Apply Drop
data merge entity @s {Item:{id:"minecraft:blaze_rod"}}
execute store result entity @s Item.Count int 1 run scoreboard players get drop blazeeye