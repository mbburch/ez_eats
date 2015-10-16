require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "user can go to the blog page" do
    visit '/'
    click_link 'Blog'
    assert_equal blogs_path, current_path
  end

  test "user can go to the reviews page" do
    visit '/'
    click_link 'Reviews'
    assert_equal reviews_path, current_path
  end

  test "user can go to the food challenges page" do
    visit '/'
    click_link 'Food Challenges'
    assert_equal challenges_path, current_path
  end

  test "user can go to the about page" do
    skip
    visit '/'
    click_link 'About'
    assert_equal about_path, current_path
  end
end
