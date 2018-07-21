class AddLocationToNaps < ActiveRecord::Migration[5.1]
  def change
  	add_column :naps, :location, :string
  end
end
