class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.string :pathname
      t.text :discription
      t.string :img
      
      t.timestamps
    end
  end
end
