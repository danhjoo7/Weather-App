class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |el|
    el.string :name
    el.integer :user_id
    el.integer :forecast_id
    end
  end
end