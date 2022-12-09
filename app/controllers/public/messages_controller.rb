class Public::MessagesController < ApplicationController
  def show
    @message = Message.find(params[:id])
  end

  def index
    @messages = Message.order(id: :DESC).last(10)
  end
end
