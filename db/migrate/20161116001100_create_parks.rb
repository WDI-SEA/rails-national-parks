class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string :parkname
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
