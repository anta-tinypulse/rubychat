class PrivateMessagesController < ApplicationController
  before_action :require_login

  def index
    @messages = PrivateMessage.where(receiver_id: current_user.id).order(:created_at)
    @friends = Friendship.where(user_id: current_user.id).map { |f| User.find(f.friend_id) }
  end

  def create
    @private_message = PrivateMessage.new(
        content: params[:private_message][:content],
        receiver_id: params[:private_message][:receiver_id],
        sender_id: current_user.id,
        unread: true
    )
    @private_message.save

    flash[:notice] = "Message sent successfully!"
    redirect_to private_messages_path
  end

  def show
    @message = PrivateMessage.find(params[:id])

    if @message.unread?
      @message.unread = false
      @message.save
    else
      flash[:warning] = "You already read this message!"
      redirect_to private_messages_path
    end

  end

  def sent_messages
    @messages = PrivateMessage.where(sender_id: current_user.id).order(:created_at)
  end
end