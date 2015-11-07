class RemoveReferencesFromPosts < ActiveRecord::Migration
  def change
    remove_reference :posts, :categorizable
  end
end
