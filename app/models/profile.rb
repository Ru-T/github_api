require 'httparty'
require 'byebug'

class Profile

  attr_reader :username

  def initialize(username)
    @username = username
    @response = get_response
  end

  private def get_response
    key = ENV['GITHUB_CLIENT_ID']
    key2 = ENV['GITHUB_CLIENT_SECRET']
    HTTParty.get("https://api.github.com/users/#{@username}?client_id=#{key}&client_secret=#{key2}")
  end

  def username
    @response[users]
  end

end


GET /users/:username
