require 'pry-nav'
# http://classic.battle.net/war3/human/units/footman.shtml

class SiegeEngine < Unit

  attr_accessor :health_points, :attack_power

  def initialize
    super(400,50)
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
    #binding.pry
     if enemy.is_a? Barracks
       enemy.damage(self.attack_power * 2)
     elsif enemy.class == SiegeEngine
      super(enemy)
    end #if/elsif
  end #attack!

end
