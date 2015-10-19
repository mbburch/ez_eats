require_relative '../test_helper'

class BlogIndexViewTest < ActionDispatch::IntegrationTest

  test "user sees blog index content" do
    visit blogs_path

    within(".header") do
      assert page.has_content?("Blog")
    end

    assert page.has_content?("Blog Entry One")
    assert page.has_content?("Blog Entry Two")
    assert page.has_content?("This is my first blog entry")
    assert page.has_content?("This is my second blog entry")
    assert page.has_content?("Oct 10, 2015")
    assert page.has_content?("Oct 18, 2015")

  end
end