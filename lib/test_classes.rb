require_relative 'unit'
require_relative 'barracks'
require_relative 'footman'
require_relative 'peasant'


footman = Footman.new

footman.damage(5)
puts footman.health_points


peasant = Peasant.new

puts peasant.health_points
