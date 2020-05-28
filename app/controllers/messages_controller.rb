class MessagesController < ApplicationController
  before_action :authenticate_user!, only: :create

  # def index
  #   @messages = Message.all
  #   @message = Message.new
  # end

  def create
    if Entry.where(user_id: current_user.id, room_id: params[:message][:room_id]).present?
    Message.create(message_params)
    redirect_to "/rooms/#{@message.room_id}"
  end

  private
  def message_params
    params.require(:message).permit(:user_id, :content, :image, :room_id).merge(user_id: current_user.id)
  end

end


