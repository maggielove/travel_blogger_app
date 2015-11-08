class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :cities
  has_attached_file :image, :default_url => "missing.png", styles: { medium: "500x400>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  # def set_default_image
  #   image_tag "/assets/images/anonymous_user_gravatar.png"
  # end
end
