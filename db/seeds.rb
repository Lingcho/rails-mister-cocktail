Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all


moji = Cocktail.create!(name: "Mojito")
caipi = Cocktail.create!(name: "Caipi")
ginto = Cocktail.create!(name: "Ginto")

mint = Ingredient.create!(name: "mint leaves")
lemon = Ingredient.create!(name: "Lemon")
sweps = Ingredient.create!(name: "Sweps")

Dose.create!(description: "3feuilles", ingredient: mint, cocktail: moji)
Dose.create!(description: "4feuilles", ingredient: lemon, cocktail: caipi)
Dose.create!(description: "5feuilles", ingredient: sweps, cocktail: ginto)
