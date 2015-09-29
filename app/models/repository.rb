class Repository

  attr_reader :username

  def initialize(username)
    @username = username
    @response = get_response
  end

  private def get_response
    auth = {:username => "Ru-T", :password => ENV['GITHUB_TOKEN']}
    @response = HTTParty.get("https://api.github.com/users/#{@username}/repos", :basic_auth => auth)
    # key = ENV['GITHUB_CLIENT_ID']
    # key2 = ENV['GITHUB_CLIENT_SECRET']
    # HTTParty.get("?client_id=#{key}&client_secret=#{key2}")
  end

  def repository_name(item)
    repositories = []
    @response.each_index do |item|
      repositories << @response[item]["name"]
    end
    repositories
  end

  def repository_description(item)
    repositories = []
    @response.each_index do |item|
      repositories << @response[item]["description"]
    end
    repositories
  end

  def repository_details
    repositories = {}
    @response.each_index do |item|
      repositories[repository_name(item)] = repository_description(item)
    end
    repositories
  end

  def repository_updated_at
    repositories = []
    @response.each_index do |item|
      repositories << @response[item]["updated_at"]
    end
    repositories
  end

end

#
#
#
# repositories = @response.repository_name #now an array with all repo names
# repository_details = {} #empty hash
# repositories.each do |r| #take each rep from my repositories array
#   repository_details[r] = @response[r]["description"] #make the repo name the key in a hash, make the description the value
# end
# recommendation_concerts # return the new hash!! YAY!!!!!!
