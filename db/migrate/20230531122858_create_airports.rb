class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :airport_code, unique: true
      t.string :city_name

      t.timestamps
    end
  end
end
