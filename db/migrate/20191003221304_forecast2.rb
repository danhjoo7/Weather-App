class Forecast2 < ActiveRecord::Migration[5.2]
  def change
    change_column :forecasts, :humidity, :integer 
    remove_column :forecasts, :cloudiness
  end
end
