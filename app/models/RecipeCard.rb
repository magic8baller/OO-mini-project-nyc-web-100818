class RecipeCard

  attr_reader :recipe, :user, :date, :rating

  @@all = []

  def initialize(recipe, user, date, rating)
    @recipe = recipe
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
  end

end
