class ConversationsController < ApplicationController
    before_action :authenticate_user!

    def index
      @users = User.all
      @conversations = conversation.involving(current_user)
    end

    def create
      if conversation.between(params[:sender_id], params[:recipient_id]).present?
        @conversation = conversation.between(params[:sender_id], params[:recipient_id]).first
      else
        @conversation = conversation.create(conversation_params)
      end
      redirect_to conversation_messages_path(@conversation)
    end

  private
   def conversation_params
     params.permit(:sender_id, :recipient_id)

end
