class RepliesController < ApplicationController

	before_action :set_topic, only: [:new, :create]

  def new
  	@reply = @topic.replies.new
  end

  def create
  	@reply = @topic.replies.new(reply_params)
  	@reply.user_id = current_user.id
  	@subforum = @topic.subforum
  	@reply.subforum_id = @subforum.id
  	if @reply.save
  		redirect_to @topic
  	else
  		render 'new'
  	end
  end


  def destroy
    authorize! :destroy, @reply
    @reply = Reply.find(params[:id]).destroy
    redirect_to :back
  end
  
  def reply_params
  	params.require(:reply).permit(:content)
  end
  
  def set_topic
		@topic = Topic.find(params[:topic_id])
	end
  
end
