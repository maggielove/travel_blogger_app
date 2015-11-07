class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :cities
  has_attached_file :image, styles: { medium: "500x400>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
