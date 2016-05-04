class Barracks

  attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    @health_points = 500
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

  def can_build_siege_engine?
    self.gold >= 200 && self.lumber >= 60 && food >= 3
  end

  def build_siege_engine
    if can_build_siege_engine?
      self.gold -= 200
      self.lumber -= 60
      self.food -= 3
      SiegeEngine.new
    end #if
  end #build_siege_engine

  def damage(dmg)
    #What I WANT to do: if attacker is footman
      #dmg = ((dmg.to_f / 2).ceil).to_i
    self.health_points -= dmg
  end # damage


###END BARRACKS CLASS
end
