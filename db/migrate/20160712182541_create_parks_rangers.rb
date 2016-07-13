class CreateParksRangers < ActiveRecord::Migration[5.0]
  def change
    create_table :parks_rangers do |t|
      t.references :park, foreign_key: true
      t.references :ranger, foreign_key: true

      t.timestamps
    end
  end
end
