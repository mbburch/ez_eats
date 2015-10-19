class Blog < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }

  def date
    created_at.strftime("%b %d, %Y")
  end
end
