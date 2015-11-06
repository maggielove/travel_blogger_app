class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :categorizable, polymorphic: true
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

end
