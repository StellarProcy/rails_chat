class MessageController < ApplicationController
  def show
    @message = Message.all
  end
end
