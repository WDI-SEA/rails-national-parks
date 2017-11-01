class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.text :description
      t.text :picture

      t.timestamps
    end
  end
end
