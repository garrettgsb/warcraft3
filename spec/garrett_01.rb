require_relative 'spec_helper'

# Buildings should be attackable by units
# Footmen should only do half damage to Buildings (rounded up)


describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "should have health points" do
    expect(@barracks.health_points).to eq(500)
  end
  #describe "#damage" do
  it "should reduce the building's health_points by half of the unit's damage if the Unit is a Footman" do
  @footman = Footman.new
  @barracks = Barracks.new
  @footman.attack!(@barracks)
  expect(@barracks.health_points).to eq(495)


  end
end
