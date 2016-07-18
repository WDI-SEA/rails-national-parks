class CreateParksRangers < ActiveRecord::Migration
  def change
    create_table :parks_rangers do |t|
      t.references :park, index: true, foreign_key: true
      t.references :ranger, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
