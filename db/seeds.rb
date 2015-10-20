require 'ffaker'

class Seed

  def initialize
    generate_blogs
    generate_tags
  end

  def generate_blogs
    10.times do
      title  = FFaker::Food.herb_or_spice.titleize
      image = "http://lorempixel.com/400/200/food"
      content = FFaker::BaconIpsum.paragraphs.join
      Blog.create!(title:  title,
                   content: content,
                   image: image,
                   created_at: Faker::Time.between(20.days.ago, Time.now, :all))
    end
  end

  def generate_tags
    10.times do
      name = FFaker::Food.ingredient.titleize
      Tag.create!(name: name)
    end
  end
end

Seed.new