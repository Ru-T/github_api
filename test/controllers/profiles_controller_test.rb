require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  def test_should_get_search
    get :search
    assert_response :success
  end

  def test_should_get_profile
    get :profile
    assert_response :success
  end
  # 
  # def test_basic_information
  #   get :show, artist: params(:artist)
  #   assert_response :success
  #
  #   assert response.body.include?("Ruti")
  # end

end
