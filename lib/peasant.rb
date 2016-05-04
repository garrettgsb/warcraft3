require_relative 'Unit'

class Peasant < Unit

  attr_reader :health_points, :attack_power

  def initialize
    super(35,0)
  end #initialize

end # Peasant class
