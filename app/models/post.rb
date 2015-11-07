class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :locating
  has_many :cities, through: :locating
  has_many :comments
  has_attached_file :image, styles: { medium: "500x400>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def city_list
    self.cities.collect do |city|
      city.name
    end.join(", ")
  end

  def city_list=(cities_string)
    city_names = cities_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_cities = city_names.collect { |name| City.find_or_create_by(name: name) }
    self.cities = new_or_found_cities
  end

end
