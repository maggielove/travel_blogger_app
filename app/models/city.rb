class City < ActiveRecord::Base
  has_many :locatings
  has_many :posts, through: :locatings
end
