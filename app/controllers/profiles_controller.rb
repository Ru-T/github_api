class ProfilesController < ApplicationController
  def search
  end

  def profile
    @user = Profile.new(params[:username])
    @repository = Repository.new(params[:username])
  end
end
