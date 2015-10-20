require_relative '../test_helper'

class UserCreatesAccountTest < ActionDispatch::IntegrationTest

  test "user clicks Sign Up and is taken to the sign up page" do
    visit '/'
    click_link "Log Out"
    click_link("Sign Up")
    assert_equal current_path, register_path
    # within(".") do
    # end
    #
    # assert page.has_content?("")
  end

  test "user fills out info to sign up as a user and gets registered" do
    visit register_path
    fill_in("user[name]", with: "Irma User")
    fill_in("user[email]", with: "Irma@example.com")
    fill_in("user[password]", with: "pass")
    click_on "Create Account"
    assert_equal root_path, current_path
    click_link "Log Out"
  end
end
