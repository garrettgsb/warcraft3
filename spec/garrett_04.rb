require_relative 'spec_helper'

# Buildings should be attackable by units
# Footmen should only do half damage to Buildings (rounded up)

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end # before block

  it "should start with 500 lumber" do
    expect(@barracks.lumber).to eq(500)
  end # it block
end #describe Unit do
