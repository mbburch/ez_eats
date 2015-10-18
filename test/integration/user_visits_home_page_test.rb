require_relative '../test_helper'

class HomePageViewTest < ActionDispatch::IntegrationTest

  test "user sees homepage content" do
    visit root_path

    within(".navbar") do
      assert page.has_link?("Blog")
      assert page.has_link?("Reviews")
      assert page.has_link?("Food Challenges")
      assert page.has_link?("About")
      assert page.has_link?("Log In")
      assert page.has_link?("Create Account")
    end

    within("#welcome-boxes") do
      assert page.has_content?("Blog")
      assert page.has_content?("Reviews")
      assert page.has_content?("Food Challenges")
    end

  end
end

# I should see the carousel of pictures on the page.