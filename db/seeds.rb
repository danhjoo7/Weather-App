require_relative '../config/environment'
require 'pry'
User.destroy_all
Forecast.destroy_all
City.destroy_all



# 25 top cities
# CITIES = ["New York City", "Los Angeles", "Chicago", "San Francisco", 
#               "Seattle", "Houston", "Boston", "Washington D.C.", "Denver", "Austin",
#               "San Jose", "San Diego", "Minneapolis", "Atlanta","Philadelphia", "Dallas",
#               "Detroit", "Portland", "Miami", "Nashville", "Columbus", "Baltimore",
#               "Las Vegas", "Honolulu", "Oakland"] 


# 25 forecasts
muse = User.create(name: "Muse")
daniel = User.create(name: "Daniel")

nyc = City.create(name: "New York City")
los_angeles = City.create(name: "Los Angeles")
chicago = City.create(name: "Chicago")
san_francisco = City.create(name: "San Francisco")
seattle = City.create(name: "Seattle")
houston = City.create(name: "Houston")
boston = City.create(name: "Boston")
washington_dc = City.create(name: "Washington D.C.")
denver = City.create(name: "Denver")
austin = City.create(name: "Austin")
san_jose = City.create(name: "San Jose")
san_diego = City.create(name: "San Diego")
minneapolis = City.create(name: "Minneapolis")
atlanta = City.create(name: "Atlanta")
philadelphia = City.create(name: "Philadelphia")
dallas = City.create(name: "Dallas")
detroit = City.create(name: "Detroit")
portland = City.create(name: "Portland")
miami = City.create(name: "Miami")
nashville = City.create(name: "Nashville")
columbus = City.create(name: "Columbus")
baltimore = City.create(name: "Baltimore")
las_vegas = City.create(name: "Las Vegas")
honolulu = City.create(name: "Honolulu")
oakland = City.create(name: "Oakland")

forecast_es = Forecast.create(temp: rand(40..100), humidity: rand(1..100), cloudiness: rand(1..100), user_id: muse.id , city_id: miami.id) 
binding.pry

# binding.pry
25.times do 
    # binding.pry 
Forecast.create(temp: rand(40..100), humidity: rand(1..100), cloudiness: rand(1..100), user_id: muse.id , city_id: miami.id)
end
