require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  it "has two users in database" do
  	User.count.must_equal 2
  end

  it "delete last user in database" do
  	User.where(name: "susannah").destroy_all
    User.count.must_equal 1
    proc {User.destroy_all}.must_raise RuntimeError
  end

end
