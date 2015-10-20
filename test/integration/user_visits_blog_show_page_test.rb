require_relative '../test_helper'

class BlogShowViewTest < ActionDispatch::IntegrationTest

  test "user navigates to blog show page by clicking title" do
    visit blogs_path
    click_on "Blog Entry One"
    assert current_path, blog_path(:one)
    within(".blog-heading") do
      assert page.has_content?("Blog Entry One")
    end

    assert page.has_content?("Blog Entry One")
    refute page.has_content?("Blog Entry Two")
    assert page.has_content?("This is my first blog entry")
    assert page.has_content?("Oct 10, 2015")
  end

  test "user navigates to blog show page by clicking read more" do
    visit blogs_path

    within ".each-blog" do
      click_on("Read More", match: :first)
    end
    assert current_path, blog_path(:one)
    within("h1") do
      assert page.has_content?("Blog Entry One")
    end

    assert page.has_content?("Blog Entry One")
    refute page.has_content?("Blog Entry Two")
    assert page.has_content?("This is my first blog entry")
    assert page.has_content?("Oct 10, 2015")
  end
end