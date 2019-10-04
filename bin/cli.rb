require 'pry'
require_relative '../config/environment'

class CommandLineApplication
    attr_accessor :user, :city, :temp, :humidity
    #displays all 5 cities that the user can choose from
    def cities  
        puts
        @city_names = City.all.map {|city| city.name}
        puts @city_names
        puts
    end
    
    #shows the welcome prompt and prompts user to enter name
    def welcome
        puts
        puts "==============================================================================================="
        puts "======================= Hello there! Welcome to the Weather Review App! =======================" 
        puts "==============================================================================================="
        puts "What is your name?"
        @user_input = gets.chomp.capitalize
        @user = User.create(name: @user_input)
        puts 
        puts
    end

    #prompts user to select one of the 5 cities
    def choose_city
        puts "Hey #{@user_input}, for which one of these cities would you like to describe the weather?"
        puts "==============================================================================================="
        cities
        @city_input = gets.chomp.split
        @city_input.map! do |el| 
        el.capitalize 
        end
        @city_input = @city_input.join(' ')
        @city = City.all.find_by(name: @city_input)
    end
   

    #asks user to describe weather on the 1-3 scale
    def describe_city_weather
        if @city_names.include?(@city_input) 
            puts
            puts "I love #{@city_input}!\n==============================================================================================\n
            I'd like to know how'd you rate the temperature & the humidity on a scale of 1-3,\n
            with 1 being hot and 3 being cold?"
            puts "=============================================================================================="
        else reask_user
        end
    end 

    def create_their_ratings
        puts "Temp? (1-3)"
        @temp_input = gets.chomp
        puts "Humdity? (1-3)"
        @hum_input = gets.chomp
        forecast= Forecast.create(user_id: @user.id, city_id: @city.id, temp: @temp_input, humidity: @hum_input)
        forecast
    end


    #re-asks user to select one of the 5 given cities 
    def reask_user
        while @city_names.exclude?(@city_input) do
            puts
            puts
            puts "Sorry #{@user_input}, that's not one of the cities we have available. Which one of these cities would you like to\ndescribe the weather for?" 
            puts
            puts @city_names
            puts
            @city_input = gets.chomp.capitalize
        end
        describe_city_weather

    end

    #displays average temp rating
    def updated_avg_rating
        puts "=============================================================================================="
        puts "Thanks for your input!"
        puts "Here are both the average temperature & humidity ratings today for #{@city_input}:"
        puts
        puts "Temperature: #{@city.avg_temp.round}"
        puts
        puts "Humidity: #{@city.avg_hum.round}"
     end

     def delete_option
        puts "=============================================================================================="
        puts "Would you like to delete your ratings?       Enter 'Y' or 'N'."
        puts
        @delete_response= gets.chomp.capitalize
        puts
        if @delete_response == "Y" || "y"
            Forecast.all.last.delete
        else delete_again
            
    binding.pry
        end
    end

     def delete_again
        if @delete_response == "N" || "n" && delete_response != "Y" || "y"
           puts "Thank You! We appreciate you adding to our ratings!"
        else 
            
            puts "That's not a valid response."

        end
        delete_option
     end


    


end