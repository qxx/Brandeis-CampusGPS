require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  before do
    @building = buildings(:one)
  end

  it "validates a new building" do
    b = Building.create(name: "name")
    b.valid?.must_equal true
  end

  it "cannot save a building without name" do
    b = Building.create(description: "building")
    b.valid?.must_equal false
  end

  it "cannot save a building with a same name" do
    b = Building.create(name: @building.name)
    b.valid?.must_equal false
  end

end
