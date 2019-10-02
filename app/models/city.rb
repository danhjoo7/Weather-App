class City < ActiveRecord::Base
    has_many :forecasts
    has_many :users, through: :forecast
end
