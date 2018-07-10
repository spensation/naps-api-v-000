class CreateNaps < ActiveRecord::Migration[5.1]
  def change
    create_table :naps do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
