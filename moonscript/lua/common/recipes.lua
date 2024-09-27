local pulsejet = require("pulsejet_recycling")

-- Makes a set of recycling recipes for a standard toolset in the given ingot material, eg. "minecraft:iron" - also specify the material's short name eg. "iron"
function recycleMetalTools(material, short)
    print("Making tool recycling recipes for material "..material)
    addData("spectralarity:recipes/cinderhearth/recycling/"..short.."_axe", pulsejet.recycleMetalAxe(material))
    addData("spectralarity:recipes/cinderhearth/recycling/"..short.."_pickaxe", pulsejet.recycleMetalPickaxe(material))
    addData("spectralarity:recipes/cinderhearth/recycling/"..short.."_shovel", pulsejet.recycleMetalShovel(material))
    addData("spectralarity:recipes/cinderhearth/recycling/"..short.."_sword", pulsejet.recycleMetalSword(material))
    addData("spectralarity:recipes/cinderhearth/recycling/"..short.."_hoe", pulsejet.recycleMetalHoe(material))
end

recycleMetalTools("minecraft:iron", "iron")
recycleMetalTools("minecraft:golden", "golden")
recycleMetalTools("botania:manasteel", "manasteel")
recycleMetalTools("botania:elementium", "elementium")

addData("spectralarity:recipes/cinderhearth/recycling/brookite_axe", pulsejet.recycleCustom("yttr:brookite_axe", "yttr:brookite", 3))
addData("spectralarity:recipes/cinderhearth/recycling/brookite_pickaxe", pulsejet.recycleCustom("yttr:brookite_pickaxe", "yttr:brookite", 3))
addData("spectralarity:recipes/cinderhearth/recycling/brookite_shovel", pulsejet.recycleCustom("yttr:brookite_shovel", "yttr:brookite", 1))
addData("spectralarity:recipes/cinderhearth/recycling/brookite_sword", pulsejet.recycleCustom("yttr:brookite_sword", "yttr:brookite", 2))
addData("spectralarity:recipes/cinderhearth/recycling/brookite_hoe", pulsejet.recycleCustom("yttr:brookite_hoe", "yttr:brookite", 2))

addData("spectralarity:recipes/cinderhearth/recycling/netherite_axe", pulsejet.recycleCustom("minecraft:netherite_axe", "minecraft:netherite", 1))
addData("spectralarity:recipes/cinderhearth/recycling/netherite_pickaxe", pulsejet.recycleCustom("minecraft:netherite_pickaxe", "minecraft:netherite", 1))
addData("spectralarity:recipes/cinderhearth/recycling/netherite_shovel", pulsejet.recycleCustom("minecraft:netherite_shovel", "minecraft:netherite", 1))
addData("spectralarity:recipes/cinderhearth/recycling/netherite_sword", pulsejet.recycleCustom("minecraft:netherite_sword", "minecraft:netherite", 1))
addData("spectralarity:recipes/cinderhearth/recycling/netherite_hoe", pulsejet.recycleCustom("minecraft:netherite_hoe", "minecraft:netherite", 1))
