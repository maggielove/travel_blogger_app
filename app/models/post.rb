class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :locating
  has_many :cities, through: :locating
  has_many :comments
  # set the default size for an uploaded image (medium) in case user doesn't upload one & have thumb option
  has_attached_file :image, styles: { medium: "910x520>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  #Instead of displaying a list of tag instances, display the actual tag names.
  def city_list
    self.cities.collect do |city|
      city.name
    end.join(", ")
  end


  def city_list=(cities_string)
    # split cities_string into an array of string with whitespace removed.
    # Ensure each string is unique.
    city_names = cities_string.split(",").collect{|s| s.strip.downcase}.uniq
    # Look for a City object with that name. If there isn't one, create it.
    # Add the tag object to a list of tags for the article.
    new_or_found_cities = city_names.collect { |name| City.find_or_create_by(name: name) }
    # Set article's cities to the list of cities we have found/created.
    self.cities = new_or_found_cities
  end

end
