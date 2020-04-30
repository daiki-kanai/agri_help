class MapsController < ApplicationController
  def index
    @users = User.all
  end
end