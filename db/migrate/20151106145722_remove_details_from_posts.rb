class RemoveDetailsFromPosts < ActiveRecord::Migration
  def change
    remove_reference :posts, :city, index: true
  end
end
