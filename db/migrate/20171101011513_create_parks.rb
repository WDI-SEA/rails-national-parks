class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :decription
      t.string :picture

      t.timestamps
    end
  end
end
