class CreateLocatings < ActiveRecord::Migration
  def change
    create_table :locatings do |t|
      t.references :city
    end
  end
end
