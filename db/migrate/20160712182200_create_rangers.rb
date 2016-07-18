class CreateRangers < ActiveRecord::Migration[5.0]
  def change
    create_table :rangers do |t|
      t.string :name
      t.integer :years

      t.timestamps
    end
  end
end
