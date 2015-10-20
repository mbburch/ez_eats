require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def valid_attributes
      {
        name: "Jeff",
        email: "jeff@email.com",
        password: "butter",
        admin: false
      }
  end

  test "is invalid without a name" do
    user = User.new(valid_attributes)
    user.name = nil
    refute user.valid?
  end

  test "is invalid with out an email" do
    user = User.new(valid_attributes)
    user.email = nil
    refute user.valid?
  end

  test "is invalid with out unique email" do
    user = User.new(valid_attributes)
    user.save
    user2 = User.create(email: "jeff@email.com",
                        name: "joe",
                        password: "pass",
                        admin: false)
    assert user.valid?
    refute user2.valid?
  end

  test "a user can be an admin" do
    user = User.new(valid_attributes)
    user.admin = true
    user.save

    assert user.admin?
  end
end
