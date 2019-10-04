require_relative '../config/environment'
require_relative './cli.rb'

new_cli = CommandLineApplication.new
new_cli.welcome
new_cli.choose_city
new_cli.describe_city_weather
new_cli.create_their_ratings
new_cli.updated_avg_rating
new_cli.delete_option
new_cli.delete_again