require 'test_helper'

class LogInLogOutTest < ActionDispatch::IntegrationTest

  test "user loggs in and sees a log out button" do
    visit '/'
    refute page.has_content?("Log Out")
    click_on "Log In"
    fill_in("user[email]", with: "user@email.com")
    fill_in("user[password]", with: "userpass")
    click_button "Log In"

    assert page.has_content?("Log Out")
  end
end
