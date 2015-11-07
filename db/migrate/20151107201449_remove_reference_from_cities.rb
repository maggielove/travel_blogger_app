class RemoveReferenceFromCities < ActiveRecord::Migration
  def change
    remove_reference :cities, :post, index: true
  end
end
