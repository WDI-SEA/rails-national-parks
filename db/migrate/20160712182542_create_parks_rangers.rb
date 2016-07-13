class CreateParksRangers < ActiveRecord::Migration
  def change
    create_table :parks_rangers do |t|
      t.references :park, index: true
      t.references :ranger, index: true

      t.timestamps
    end
  end
end
