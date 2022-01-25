#Get drop and cycle list
execute store result score drop blazeeye run data get storage sbbaed:lists eyelist[0]
data modify storage sbbaed:lists eyelist append from storage sbbaed:lists eyelist[0]
data remove storage sbbaed:lists eyelist[0]

#Break if 0
execute if score drop blazeeye matches 0 run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 10 force @a
execute if score drop blazeeye matches 0 run particle portal ~ ~ ~ 0.4 0 0.4 0 10 force @a

#Drop if 1
execute if score drop blazeeye matches 1 run summon item ~ ~ ~ {Item:{id:"ender_eye",Count:1},Motion:[0.0,0.2,0.0]}

#Override normal function (kill it lmao)
kill @s
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~