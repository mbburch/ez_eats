# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
class Seed

  def initialize
    generate_blogs
    generate_tags
  end

  def generate_blogs
    10.times do
      title  = Faker::Lorem.word.capitalize
      image = "http://lorempixel.com/400/200/food"
      content = Faker::Lorem.paragraph
      Blog.create!(title:  title,
                   content: content,
                   image: image,
                   created_at: Faker::Time.between(20.days.ago, Time.now, :all))
    end
  end

  def generate_tags
    10.times do
      name = Faker::Lorem.word.capitalize
      Tag.create!(name: name)
    end
  end
end

Seed.new