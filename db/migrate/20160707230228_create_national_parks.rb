class CreateNationalParks < ActiveRecord::Migration
  def change
    create_table :national_parks do |t|
      t.string :name
      t.text :description
      t.text :picture

      t.timestamps null: false
    end
  end
end
