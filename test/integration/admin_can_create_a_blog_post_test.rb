require_relative '../test_helper'

class AdminCreatesPostTest < ActionDispatch::IntegrationTest

  test "admin can create a blog post" do
    visit admin_blogs_path
    click_on "New Entry"
    assert current_path, new_admin_blog_path

    fill_in("blog[title]", with: "Test Post")
    fill_in("blog[content]", with: "What a great post.")
    click_link("Post Blog")

    assert current_path, admin_blog_path

    assert page.has_content?("Test Post")
    refute page.has_content?("What a great post.")
  end