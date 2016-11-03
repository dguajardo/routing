class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :id_ruta
      t.string :nid
      t.float :latitude
      t.float :longitude
      t.time :arrives_at
      t.time :departs_at

      t.timestamps null: false
    end
  end
end
