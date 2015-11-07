class AboutController < ApplicationController
  def show
    @about = About.find_by(params[:id])
  end
end