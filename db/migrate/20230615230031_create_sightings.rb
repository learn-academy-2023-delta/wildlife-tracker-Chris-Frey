class CreateSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :sightings do |t|
      t.float :latitude
      t.float :longitude
      t.string :date

      t.timestamps
    end
  end
end
