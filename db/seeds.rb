require 'open-uri'

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all


moji = Cocktail.create!(name: "Mojito")
caipi = Cocktail.create!(name: "Caipi")
ginto = Cocktail.create!(name: "Ginto")


# Dose.create!(description: "3feuilles", ingredient: mint, cocktail: moji)
# Dose.create!(description: "4feuilles", ingredient: lemon, cocktail: caipi)
# Dose.create!(description: "5feuilles", ingredient: sweps, cocktail: ginto)


# parsing the db of ingredient from this site
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serial = open(url).read
ingredients = JSON.parse(ingredients_serial)
# p ingredients["drinks"][4]["strIngredient1"]
#  a = {"strIngredient1"=>"Light rum"}
ingredients["drinks"].each do |ingredient|
ingredient.each do |k, value|

 value = Ingredient.create!(name: "#{value}")
end
end
