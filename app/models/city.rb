class City < ActiveRecord::Base
  has_many :posts, as: :categorizable
end
