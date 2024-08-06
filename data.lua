local llrRocketFuel = {
	type = "item",
    name = "llr-rocket-fuel",
    icon = "__base__/graphics/icons/rocket-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "chemical",
    fuel_value = "100MJ",
    fuel_acceleration_multiplier = 1.8,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "intermediate-product",
    order = "p[rocket-fuel]",
    stack_size = 10
}
		
local llrRocketFuelRecipe = {
    type = "recipe",
    name = "llr-rocket-fuel",
    energy_required = 0.5,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients = {{type = "fluid", name = "ll-rocket-fuel", amount = 10}},
    result = "llr-rocket-fuel"
}

table.insert(data.raw.technology["rocket-fuel"].effects,{type = "unlock-recipe",recipe = "llr-rocket-fuel"})

data:extend{llrRocketFuel, llrRocketFuelRecipe}