require "rubygems"
require 'wunderground'
require 'open-uri'
require 'nokogiri'

def wunderground
w = wunderground::Base.new
end

w_api = Wunderground.new("2d2f765c1499b60e")

ask_location = puts "Find out what the weather is like today! Enter your zip code."
zip = gets.chomp


condition = w_api.forecast_and_conditions_for("#{zip}")

puts condition

