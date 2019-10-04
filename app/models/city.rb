class City < ActiveRecord::Base
  has_many :forecasts
  has_many :users, through: :forecast

  def avg_temp
    # city = City.all.find_by(name: @@city_input)
    # conditional if user_rating != nil - avg_temp(user_rating)
  count = 0
    forecasts.map do |city|
      count += city.temp
    end
    average = count.to_f / forecasts.count
    average
  end
  
  def avg_hum
    # city = City.all.find_by(name: @@city_input)
    count = 0
    forecasts.map do |city|
      count += city.humidity
    end
    average = count.to_f / forecasts.count
    average
  end
end
