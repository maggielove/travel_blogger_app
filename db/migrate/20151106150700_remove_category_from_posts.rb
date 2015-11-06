class RemoveCategoryFromPosts < ActiveRecord::Migration
  def change
    remove_reference :posts, :category, index: true
  end
end
