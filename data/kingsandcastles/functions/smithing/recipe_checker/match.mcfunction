playsound entity.item.pickup block @a ~ ~ ~

summon slime ~ ~1 ~ {NoGravity:1b,Silent:1b,Size:0,Tags:["kingsandcastles.loot_bringer"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1}]}
data modify entity @e[type=slime,tag=kingsandcastles.loot_bringer,sort=nearest,limit=1] DeathLootTable set from storage kingsandcastles:smithing recipes[0].metals[0].output

damage @e[type=slime,tag=kingsandcastles.loot_bringer,sort=nearest,limit=1] 20

tag @s add kingsandcastles.kill_metal_shape