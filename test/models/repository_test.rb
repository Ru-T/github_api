require 'test_helper'
require './app/models/repository.rb'
require 'json'

class Profile
  private def get_response
    file = File.open('test/models/repos.json')
    JSON.load(file)
  end
end

class RepositoryTest < ActiveSupport::TestCase

  def test_repository_name
    assert Repository.new("masonfmatthews").repository_name(0).include?("axyoms")
  end

  def test_repository_description
    assert Repository.new("masonfmatthews").repository_description(0).include?("Graph-based student evaluation system")
  end

  def test_repository_updated_at
    assert Repository.new("masonfmatthews").repository_updated_at.include?("2015-08-10T18:27:00Z")
  end


end
