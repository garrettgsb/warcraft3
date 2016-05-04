class Unit

  attr_accessor :health_points, :attack_power

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
    #Unit stuff
  end

  def attack!(enemy)
    enemy.damage(self.attack_power) unless dead?
  end # attack!

  def damage(dmg)
    self.health_points -= dmg
  end # damage

  def dead?
    self.health_points <= 0
  end # dead?

end # Unit class
