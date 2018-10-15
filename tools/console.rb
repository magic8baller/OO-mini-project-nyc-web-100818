require_relative '../config/environment.rb'

r1 = Recipe.new("apple cake")
r2 = Recipe.new("Pizza")
r3 = Recipe.new("Cheese Sandwich")
r4 = Recipe.new("Lentil Soup")

u1 = User.new("Peter")
u2 = User.new("Ian")
u3 = User.new("Leslie")

i1 = Ingredient.new("cheese")
i2 = Ingredient.new("wasabi")
i3 = Ingredient.new("Swiss Cheese")
i4 = Ingredient.new("Tomato")
i5 = Ingredient.new("Egg")


ri1 = RecipeIngredient.new(r1, u1)
ri2 = RecipeIngredient.new(r3, u3)

card1 = RecipeCard.new(u2, r2)
card2 = RecipeCard.new(u3, r1)
card3 = RecipeCard.new(u1, r2)

binding.pry
0
