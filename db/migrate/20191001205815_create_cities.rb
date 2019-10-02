class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |el|
    el.string :name
    end
  end
end