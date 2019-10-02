require 'pry'
require_relative '../config/environment'

class CommandLineApplication
    
    def welcome
        puts "Hello there! Welcome to the Weather App!" 
        puts
        puts 'Which city would you like to see the forecast for?'
        user_input = gets.chomp
        sel_city = City.find_by(name: user_input)
        sel_city.temp
    #     puts "The temperature for #{user_input} is currently #{sel_city.temp}. The high and low for 
    #       today is #{} and #{}."
    end
    
    

end

CITIES = ["New York City", "Los Angeles", "Chicago", "San Francisco", 
          "Seattle", "Houston", "Boston", "Washington D.C.", "Denver", "Austin",
          "San Jose", "San Diego", "Minneapolis", "Atlanta","Philadelphia", "Dallas",
          "Detroit", "Portland", "Miami", "Nashville", "Columbus", "Baltimore",
          "Las Vegas", "Honolulu", "Oakland"] 





#

binding.pry





# binding.pry
# 0