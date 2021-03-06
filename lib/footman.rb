require 'pry-nav'
# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_accessor :health_points, :attack_power

  def initialize
    super(60,10)
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
    #binding.pry
     if enemy.is_a? Barracks
       enemy.damage(5)#(((self.attack_power.to_f / 2).ceil).to_i)
     else
      super(enemy)
    end #if/else
  end #attack!

end
