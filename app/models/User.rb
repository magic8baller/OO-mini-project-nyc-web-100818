class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select {|card| card.user == self}
  end

  def recipes
  self.recipe_cards.map{|card| card/recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergen_joins #joins table
    Allergen.all.select{|card| card.user == self}
  end

  def allergens
    self.allergen_joins.map{|allergen| allergen.ingredient}
  end

 def top_three_recipes
   cards = self.recipe_cards.sort_by{ |card| card.rating}

 end

end
