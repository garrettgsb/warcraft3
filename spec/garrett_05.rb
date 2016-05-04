require_relative 'spec_helper'

# Buildings should be attackable by units
# Footmen should only do half damage to Buildings (rounded up)

describe Barracks do

  before :each do
    @barracks = Barracks.new
    @siege = @barracks.build_siege_engine
  end # before block

  it "should be able to make a siege engine" do
    expect(@siege.class).to eq(SiegeEngine)
  end # it block

  it "should cost 200 gold, 60 lumber, 3 food to build a siege engine" do
    expect(@barracks.gold).to eq(800)
    expect(@barracks.lumber).to eq(440)
  end

  it "should fail if gold is less than 200" do
    @barracks.gold = 100
    expect(@barracks.build_siege_engine).to eq(nil)
  end # it block

end #describe Unit do

describe SiegeEngine do
  before :each do
    @siege = SiegeEngine.new
    @enemysiege = SiegeEngine.new
    @footman = Footman.new
    @barracks = Barracks.new
  end #before

  it "should do 50 damage to another siege engine" do
    @siege.attack!(@enemysiege)
    expect(@enemysiege.health_points).to eq(350)
  end # it block

  it "should do 0 damage to a f00tman" do
    @siege.attack!(@footman)
    expect(@footman.health_points).to eq(60)
  end #it block

  it "should do 100 damage to a barracks" do
    @siege.attack!(@barracks)
    expect(@barracks.health_points).to eq(400)
  end #it block
end #describe SiegeEngine
