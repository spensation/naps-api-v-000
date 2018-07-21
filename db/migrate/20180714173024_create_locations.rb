class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.belongs_to :nap

      t.timestamps
    end
  end
end
