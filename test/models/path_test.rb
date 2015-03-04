require 'test_helper'

class PathTest < ActiveSupport::TestCase
  fixtures :paths

  it "can create a path with a description" do
    path = Path.new(description: paths(:one).description)
    path.valid?.must_equal true
  end

  it "cannot create a path without a description" do
    path = Path.new
    path.valid?.must_equal false
  end

  it "cannot create a path with non-positive distance" do
    path = Path.new(description: paths(:one).description, distance: -1)
    path.valid?.must_equal false
  end
end
