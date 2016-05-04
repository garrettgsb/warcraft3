require_relative 'spec_helper'

# Buildings should be attackable by units
# Footmen should only do half damage to Buildings (rounded up)

describe Unit do

  before :each do
    @unit = Unit.new(0,10)
  end # before block

  it "should be dead if HP is 0" do
    expect(@unit.dead?).to eq(true)
  end # it block

  it "shouldn't be able to attack if dead" do
    @enemy = Footman.new
    expect(@unit.attack!(@enemy)).to be nil
  end
end #describe Unit do
