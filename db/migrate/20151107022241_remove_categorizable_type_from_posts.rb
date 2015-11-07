class RemoveCategorizableTypeFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :categorizable_type, :string
  end
end
