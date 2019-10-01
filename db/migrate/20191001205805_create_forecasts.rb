class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |el|
    el.string :name
    el.integer :temp
    el.string  :humidity
    el.string  :cloudiness
    end
  end
end