class CreateRangers < ActiveRecord::Migration
  def change
    create_table :rangers do |t|
      t.string :name
      t.integer :year

      t.timestamps null: false
    end
  end
end
