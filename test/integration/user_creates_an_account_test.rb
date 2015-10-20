require_relative '../test_helper'

class UserCreatesAccountTest < ActionDispatch::IntegrationTest

  test "user clicks Sign Up and is taken to the sign up page" do
    visit '/'
    click_link("Sign Up")
    assert_equal current_path, register_path
    # within(".") do
    # end
    #
    # assert page.has_content?("")
  end

  test "user fills out info to sign up as a user and gets registered" do
    # i need to figure out why this is failing.  Is it because the data is filled in and needs to be cleared out?
    visit register_path
    fill_in("user[name]", with: "Irma User")
    fill_in("user[email]", with: "Irma@example.com")
    fill_in("user[password]", with: "pass")
    click_button "Create Account"
    assert_equal root_path, current_path
  end
end
