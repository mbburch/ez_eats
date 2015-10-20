require_relative '../test_helper'

class UserCreatesAccountTest < ActionDispatch::IntegrationTest

  test "user fills out info to sign up as a user and gets registered" do
    visit '/'
    click_link("Sign Up")
    assert_equal current_path, register_path
    visit register_path
    fill_in("user[name]", with: "Irma User")
    fill_in("user[email]", with: "Irma@example.com")
    fill_in("user[password]", with: "pass")
    click_on "Create Account"
    assert_equal root_path, current_path
    click_link "Log Out"
  end
end
