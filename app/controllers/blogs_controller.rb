class BlogsController < ApplicationController
  helper_method :archive

  def index
    @blogs = Blog.all
    @tags = Tag.all
  end

  def archive
    blogs = Blog.all

    array = blogs.map do |blog|
      blog.created_at.strftime("%B, %Y")
    end
    array.uniq
  end
end
