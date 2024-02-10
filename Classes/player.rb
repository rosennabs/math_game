# Keeps track of player attributes such as names and lives

class Player
  attr_reader :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end

  def lose_life
    @lives -= 1
  end

end
