class ChangeReferencesPosts < ActiveRecord::Migration
  def change
    remove_reference :posts, :city, index: true

    add_reference :posts, :locating, index: true
  end
end
