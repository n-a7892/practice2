class Public::MessagesController < ApplicationController
  def show
    @message = Message.find(params[:id])
  end

  def index
    @messages = Message.first(10)
  end
end
