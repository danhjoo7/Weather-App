class User < ActiveRecord::Base
  has_many :forecasts
  has_many :cities, through: :forecast
end
