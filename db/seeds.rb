require_relative '../config/environment'
require 'pry'
User.destroy_all
Forecast.destroy_all
City.destroy_all

m = User.create(name: 'Muse')

nyc = City.create(name: 'New York City')
la = City.create(name: 'Los Angeles')
chicago = City.create(name: 'Chicago')
sf = City.create(name: 'San Francisco')
seattle = City.create(name: 'Seattle')

ny_forecast1 = Forecast.create(user_id: 1, city_id: nyc.id, temp: 1, humidity: 2)
ny_forecast2 = Forecast.create(user_id: 1, city_id: nyc.id, temp: 2, humidity: 2)
ny_forecast3 = Forecast.create(user_id: 1, city_id: nyc.id, temp: 1, humidity: 3)

la_forecast1 = Forecast.create(user_id: 1, city_id: la.id, temp: 3, humidity: 1)
la_forecast2 = Forecast.create(user_id: 1, city_id: la.id, temp: 2, humidity: 2)
la_forecast3 = Forecast.create(user_id: 1, city_id: la.id, temp: 1, humidity: 3)

chicago_forecast1 = Forecast.create(user_id: 1, city_id: chicago.id, temp: 3, humidity: 2)
chicago_forecast2 = Forecast.create(user_id: 1, city_id: chicago.id, temp: 3, humidity: 2)
chicago_forecast3 = Forecast.create(user_id: 1, city_id: chicago.id, temp: 3, humidity: 3)

sf_forecast1 = Forecast.create(user_id: 1, city_id: sf.id, temp: 2, humidity: 2)
sf_forecast2 = Forecast.create(user_id: 1, city_id: sf.id, temp: 2, humidity: 1)
sf_forecast3 = Forecast.create(user_id: 1, city_id: sf.id, temp: 1, humidity: 3)

seattle_forecast1 = Forecast.create(user_id: 1, city_id: seattle.id, temp: 3, humidity: 2)
seattle_forecast2 = Forecast.create(user_id: 1, city_id: seattle.id, temp: 1, humidity: 1)
seattle_forecast3 = Forecast.create(user_id: 1, city_id: seattle.id, temp: 1, humidity: 2)

# houston = City.create(name: "Houston")
# boston = City.create(name: "Boston")
# washington_dc = City.create(name: "Washington D.C.")
# denver = City.create(name: "Denver")
# austin = City.create(name: "Austin")
# san_jose = City.create(name: "San Jose")
# san_diego = City.create(name: "San Diego")
# minneapolis = City.create(name: "Minneapolis")
# atlanta = City.create(name: "Atlanta")
# philadelphia = City.create(name: "Philadelphia")
# dallas = City.create(name: "Dallas")
# detroit = City.create(name: "Detroit")
# portland = City.create(name: "Portland")
# miami = City.create(name: "Miami")
# nashville = City.create(name: "Nashville")
# columbus = City.create(name: "Columbus")
# baltimore = City.create(name: "Baltimore")
# las_vegas = City.create(name: "Las Vegas")
# honolulu = City.create(name: "Honolulu")
# oakland = City.create(name: "Oakland")
