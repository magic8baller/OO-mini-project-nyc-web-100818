class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
#Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  def recipe_card
    RecipeCard.all.select {|card| card.recipe  == self}
  end
  def self.most_popular
    most_popular = 0
    hot_recipe = nil
    #all recipes this class is aware of
    self.all.each  do |recipe|
      #recipe_card = #inst method
      if recipe.recipe_card.count > most_popular
      hot_recipe.recipe = recipe
      most_popular = recipe.recipe_card.count
      end
    end
    hot_recipe #recipe from if statement
  end



#Recipe#users should return the user instances who have recipe cards with this recipe
  def users
    #can access user b/c in helper method  #recipe_cards, gave access to user
    self.recipe_card.map {|card| card.user}
  end

#recipe ingredients.all == all ingredients
  def recipe_ingredients
    RecipeIngredient.all.select {|recipe_ing| recipe_ing.recipe == self} #self = recipe
  end

#I am an apple cake I have a list of ingredients (join table - Recipe Ingred)
  def ingredients

    self.recipe_ingredients.map {|card| card.ingredients}
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  def allergens
    #we are in instance of recipes#know what ingredients are assoc with this recipe using #add_ingredients
    #need to return all ingredients that are allergens
    self
  end

end
