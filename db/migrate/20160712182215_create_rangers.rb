class CreateRangers < ActiveRecord::Migration
  def change
    create_table :rangers do |t|
      t.string :name
      t.integer :years

      t.timestamps
    end
  end
end
