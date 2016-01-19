class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.string :title
      t.float :celcius
      t.float :fahrenheit
      t.text :description

      t.timestamps null: false
    end
  end
end
