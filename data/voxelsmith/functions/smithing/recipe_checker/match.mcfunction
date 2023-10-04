playsound entity.item.pickup block @a ~ ~ ~

summon slime ~ ~1 ~ {NoGravity:1b,Silent:1b,Size:0,Tags:["voxelsmith.loot_bringer"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1}]}
data modify entity @e[type=slime,tag=voxelsmith.loot_bringer,sort=nearest,limit=1] DeathLootTable set from storage voxelsmith:smithing recipes[0].metals[0].output

damage @e[type=slime,tag=voxelsmith.loot_bringer,sort=nearest,limit=1] 20

tag @s add voxelsmith.kill_metal_shape