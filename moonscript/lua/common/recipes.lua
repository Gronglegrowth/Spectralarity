-- Args: tool - eg. "minecraft:iron_pickaxe", ingot/gem to yield - eg. "minecraft:iron_ingot", amount to yield - eg. 3
function recycle(tool, ingot, amount)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        advancement = "spectrum:midgame/build_cinderhearth_structure",
        ingredient = { item = tool },
        time = 200,
        experience = 1,
        results = {{ item = ingot, count = amount, chance = 1}}
    }
end

-- Args: namespace - eg. "minecraft", material name - eg. "iron"; ingot/gem form - eg. "minecraft:iron_ingot"
function recycleToolset(namespace, material, ingot)
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_axe", recycle(namespace..":"..material.."_axe", ingot, 3))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_pickaxe", recycle(namespace..":"..material.."_pickaxe", ingot, 3))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_shovel", recycle(namespace..":"..material.."_shovel", ingot, 1))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_sword", recycle(namespace..":"..material.."_sword", ingot, 2))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_hoe", recycle(namespace..":"..material.."_hoe", ingot, 2))
end

-- Args: namespace - eg. "minecraft", material name - eg. "iron"; ingot/gem form - eg. "minecraft:iron_ingot"
function recycleArmorset(namespace, material, ingot)
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_helmet", recycle(namespace..":"..material.."_helmet", ingot, 5))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_chestplate", recycle(namespace..":"..material.."_chestplate", ingot, 8))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_leggings", recycle(namespace..":"..material.."_leggings", ingot, 7))
    addData("spectralarity:recipes/cinderhearth/recycling/"..namespace.."/"..material.."_boots", recycle(namespace..":"..material.."_boots", ingot, 4))
end

recycleToolset("minecraft", "iron", "minecraft:iron_ingot")
recycleArmorset("minecraft", "iron", "minecraft:iron_ingot")
recycleToolset("minecraft", "golden", "minecraft:gold_ingot")
recycleArmorset("minecraft", "golden", "minecraft:gold_ingot")
recycleToolset("minecraft", "diamond", "minecraft:diamond")
recycleArmorset("minecraft", "diamond", "minecraft:diamond")

recycleToolset("botania", "manasteel", "botania:manasteel_ingot")
-- WHY ARE YOU NONSTANDARD
addData("spectralarity:recipes/cinderhearth/recycling/botania/manasteel_pickaxe", recycle("botania:manasteel_pick", "botania:manasteel_ingot", 3))
recycleArmorset("botania", "manasteel", "botania:manasteel_ingot")
recycleToolset("botania", "elementium", "botania:elementium_ingot")
recycleArmorset("botania", "elementium", "botania:elementium_ingot")

recycleToolset("yttr", "brookite", "yttr:brookite")
