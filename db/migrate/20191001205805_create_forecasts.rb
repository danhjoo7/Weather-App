class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |el|
      el.integer :temp
      el.string  :humidity
      el.string  :cloudiness
      el.integer :user_id
      el.integer :city_id
    end
  end
end
