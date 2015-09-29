class Profile

  attr_reader :username

  def initialize(username)
    @username = username
    @response = get_response
  end

  private def get_response
    auth = {:username => "Ru-T", :password => ENV['GITHUB_TOKEN']}
    @response = HTTParty.get("https://api.github.com/users/#{@username}", :basic_auth => auth)
    # key = ENV['GITHUB_CLIENT_ID']
    # key2 = ENV['GITHUB_CLIENT_SECRET']
    # HTTParty.get("?client_id=#{key}&client_secret=#{key2}")
  end

  def name
    @response["name"]
  end

  def avatar
    @response["avatar_url"]
  end

  def company
    @response["company"]
  end

  def location
    @response["location"]
  end

  def joined_at
    @response["created_at"]#.strftime("%A, %B %e %I:%M %p").to_i
  end

  def followers
    @response["followers"]
  end

  def following
    @response["following"]
  end

  def followers_link
    @response["followers_url"]
  end

end
