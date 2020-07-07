# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# drinks = open(url).read
# ingredients = JSON.parse(drinks)

# ingredients["drinks"].each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end

# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Long Island Iced')
# Cocktail.create(name: 'TeaDaiquiri')
# Cocktail.create(name: 'Margarita')
# Cocktail.create(name: 'Bloody Mary')
# Cocktail.create(name: 'Cosmopolitan')
# Cocktail.create(name: 'Moscow Mule')
# Cocktail.create(name: 'Screwdriver')

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
drinks = open(url).read
cocktails = JSON.parse(drinks)

cocktails['drinks'].each do |cocktail|
  Cocktail.create(name: cocktail['strDrink'], image_url: cocktail['strDrinkThumb'])
end









