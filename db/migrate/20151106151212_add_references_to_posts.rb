class AddReferencesToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :categorizable, polymorphic: true, index: true
  end
end
