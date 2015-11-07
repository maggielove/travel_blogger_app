class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :comments
  has_attached_file :image, styles: { medium: "500x400>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  has_many :taggings
  has_many :tags, through: :taggings

end
