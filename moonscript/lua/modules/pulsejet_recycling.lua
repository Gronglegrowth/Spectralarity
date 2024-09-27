-- This module generates Cinderhearth recipes in the style of RotaryCraft's Pulse Jet Furnace recycling.
local pulsejet = {}

-- Make a custom recycling recipe. Args: input item, output item, number of output to receive.
function pulsejet.recycleCustom(tool, ingot, amount)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        ingredient = { item = tool },
        time = 200,
        experience = 1,
        results = {{ item = ingot, count = amount, chance = 1}}
    }
end

-- Make a recycling recipe for metal Axes (crafted out of ingots) - material arg must be supplied eg. "botania:manasteel"
function pulsejet.recycleMetalAxe(material)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        ingredient = { item = material.."_axe" },
        time = 200,
        experience = 1,
        results = {{ item = material.."_ingot", count = 3, chance = 1}}
    }
end

-- Make a recycling recipe for metal Pickaxes (crafted out of ingots) - material arg must be supplied eg. "botania:manasteel"
function pulsejet.recycleMetalPickaxe(material)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        ingredient = { item = material.."_pickaxe" },
        time = 200,
        experience = 1,
        results = {{ item = material.."_ingot", count = 3, chance = 1}}
    }
end

-- Make a recycling recipe for metal Shovels (crafted out of ingots) - material arg must be supplied eg. "botania:manasteel"
function pulsejet.recycleMetalShovel(material)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        ingredient = { item = material.."_shovel" },
        time = 200,
        experience = 1,
        results = {{ item = material.."_ingot", count = 1, chance = 1}}
    }
end

-- Make a recycling recipe for metal Swords (crafted out of ingots) - material arg must be supplied eg. "botania:manasteel"
function pulsejet.recycleMetalSword(material)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        ingredient = { item = material.."_sword" },
        time = 200,
        experience = 1,
        results = {{ item = material.."_ingot", count = 2, chance = 1}}
    }
end

-- Make a recycling recipe for metal Hoes (crafted out of ingots) - material arg must be supplied eg. "botania:manasteel"
function pulsejet.recycleMetalHoe(material)
    return {
        type = "spectrum:cinderhearth",
        group = "recycling",
        ingredient = { item = material.."_hoe" },
        time = 200,
        experience = 1,
        results = {{ item = material.."_ingot", count = 2, chance = 1}}
    }
end
return pulsejet
