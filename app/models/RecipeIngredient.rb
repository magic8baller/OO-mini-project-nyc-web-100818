class RecipeIngredient

  attr_accessor :user, :recipe

  @@all = []

  def initialize(user, recipe)
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end
  #
  # def date
  #
  # end
  #
  # def rating
  #
  # end
  #
  # def user
  #
  # end
  #
  # def recipe
  #
  # end

end
