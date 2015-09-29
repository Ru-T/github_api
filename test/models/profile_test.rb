require 'test_helper'
require './app/models/profile.rb'
require 'json'

class Profile
  private def get_response
    file = File.open('test/models/user.json')
    JSON.load(file)
  end
end

class ProfileTest < ActiveSupport::TestCase

  def test_user_name
    assert_equal "Mason F. Matthews", Profile.new("masonfmatthews").name
  end

  def test_user_company
    assert_equal "The Iron Yard", Profile.new("masonfmatthews").company
  end

  def test_user_location
    assert_equal "Durham, NC", Profile.new("masonfmatthews").location
  end

  def test_user_joined_at_date
    assert_equal "2013-08-31T02:31:11Z", Profile.new("masonfmatthews").joined_at
  end

  def test_user_followers
    assert_equal 33, Profile.new("masonfmatthews").followers
  end

  def test_user_following
    assert_equal 6, Profile.new("masonfmatthews").following
  end

end
