class Comment < ActiveRecord::Base
  belongs_to :post
  #has_attached_file :image, :default_url => "missing.png", styles: { medium: "500x400>", thumb: "60x60>" }
  #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  # def comment_default
  #   if current_user
  #      "#{current_user.image}"
  #   else
  #     "missing.png"
  #   end
  # end
end
