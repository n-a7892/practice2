class Admin::MessagesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to new_admin_message_path
  end

  private

  def message_params
    params.require(:message).permit(:title, :content, :image)
  end
end
