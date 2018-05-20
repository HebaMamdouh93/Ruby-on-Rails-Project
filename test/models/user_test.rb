require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user has email" do
    u=User.new(email: "heba2016@gmail.com")
    assert u.email == "heba2016@gmail.com"
  end

  test "user email must be unique" do
    u=User.new(email: "heba2016@gmail.com")
    u.save
    u2=User.new(email: "heba2016@gmail.com")
    assert_not u2.save
  end

  
end
