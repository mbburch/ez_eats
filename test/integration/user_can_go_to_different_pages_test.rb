require 'test_helper'

class PageNavigationTest < ActionDispatch::IntegrationTest

  test "user can go to the blog page" do
    visit '/'
    within(".navbar") do
      click_link 'Blog'
    end
    assert_equal blogs_path, current_path
  end

  test "user can go to the reviews page" do
    visit '/'
    within(".navbar") do
      click_link 'Reviews'
    end
    assert_equal reviews_path, current_path
  end

  test "user can go to the food challenges page" do
    visit '/'
    within(".navbar") do
      click_link 'Food Challenges'
    end
    assert_equal challenges_path, current_path
  end

  test "user can go to the about page" do
    visit '/'
    within(".navbar") do
      click_link 'About'
    end
    assert_equal about_path, current_path
  end
end
