class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end #initialize

  def can_train_footman?
    true if self.gold >= 135 && self.food >= 2
  end #can_train_footman?

  def train_footman
    if can_train_footman?
      self.gold -= 135
      self.food -= 2
      Footman.new
    end # end if
  end #train_footman

  def can_train_peasant?
    true if self.gold >= 90 && self.food >= 5
  end #can_train_peasant?

  def train_peasant
    if can_train_peasant?
      self.gold -= 90
      self.food -= 5
      Peasant.new
    end #if
  end #train_peasant




###END BARRACKS CLASS
end
