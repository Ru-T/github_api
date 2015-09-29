class ProfilesController < ApplicationController
  def search
  end

  def profile
    @user = Profile.new(params[:username])
  end
end
