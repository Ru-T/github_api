require 'httparty'
require 'byebug'
require './app/models/repository.rb'

puts "Enter a username:"
username = gets.chomp

api = Repository.new(username)

puts api.repository_name
# puts ""
# puts "The venue for the next upcoming show is #{api.venue_name(0)}, located in #{api.venue_city(0)}, #{api.venue_region(0)} on #{api.concert_date(0)}."
# puts ""
# puts "The artist's next 10 shows are at the following venues:"
# puts ""
# api.venues_all.each do |k, v|
#   puts "#{k} in #{v}"
# end
