require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "user can go to the blog pags" do
    visit '/'
    click_link 'Blog'
    assert_equal blogs_path, current_path
  end

  test "user can go to the blog pags" do
    visit '/'
    click_link 'Blog'
    assert_equal blogs_path, current_path
  end

  test "user can go to the blog pags" do
    visit '/'
    click_link 'Reviews'
    assert_equal reviews_path, current_path
  end

  test "user can go to the blog pags" do
    visit '/'
    click_link 'Food Challenges'
    assert_equal challenges_path, current_path
  end

  test "user can go to the blog pags" do
    skip
    visit '/'
    click_link 'About'
    assert_equal ???????, current_path
  end

  test "user can go to the blog pags" do
    skip
    visit '/'
    click_link 'Login'
    assert_equal 'session#create' #??????? , current_path
  end

  test "user can go to the blog pags" do
    skip
    visit '/'
    click_link 'Create Account'
    assert_equal , current_path
  end
end
