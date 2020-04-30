class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @username = user.username
    @address = user.address
    @introduction = user.introduction
  end
end
