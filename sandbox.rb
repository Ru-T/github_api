require 'httparty'
require 'byebug'
require './app/models/profile.rb'

puts "Enter a username:"
username = gets.chomp

api = Profile.new(username)

puts "The user's name is #{api.name}."
# puts ""
# puts "The venue for the next upcoming show is #{api.venue_name(0)}, located in #{api.venue_city(0)}, #{api.venue_region(0)} on #{api.concert_date(0)}."
# puts ""
# puts "The artist's next 10 shows are at the following venues:"
# puts ""
# api.venues_all.each do |k, v|
#   puts "#{k} in #{v}"
# end


auth = {:username => "Ru-T", :password => "1914ba50c0a120f68c5bd7ca6411d82f129fdbc0"}
response = HTTParty.get("", :basic_auth => auth)
