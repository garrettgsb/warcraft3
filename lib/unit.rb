class Unit

  attr_accessor :health_points, :attack_power

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
    #Unit stuff
  end

  def attack!(enemy)
    enemy.damage(self.attack_power)
  end # attack!

  def damage(dmg)
    self.health_points -= dmg
  end # damage

end
