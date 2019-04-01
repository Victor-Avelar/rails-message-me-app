class ChatroomController < ApplicationController
  before_action :require_user
  def index
    @message = Message.new
    # @messages = Message.custom_display
    @messages = Message.all
    @users = User.where(is_online?: true)
  end
end
