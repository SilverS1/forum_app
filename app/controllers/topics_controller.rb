class TopicsController < ApplicationController
	impressionist :actions => [:show]
	before_action :authenticate_user!

	def new
		@subforum = Subforum.find(params[:subforum_id])
		@topic = @subforum.topics.new
	end
	
	def create
		@subforum = Subforum.find(params[:subforum_id])
		@topic = @subforum.topics.new(topic_params)
		@topic.user_id = current_user.id
		if @topic.save
			redirect_to @subforum
		else
			render 'new'
		end
	end
	
	def edit
		@topic = Topic.find(params[:id])
	end
	
	def update
		@topic = Topic.find(params[:id])
		if @topic.update_attributes(topic_params)
			redirect_to @topic
		else
			render 'edit'
		end
	end
	
	def show
		@topic = Topic.find(params[:id])
		@reply = Reply.new
	end

	def destroy
		authorize! :destroy, @topic
		@topic = Topic.find(params[:id]).destroy
		redirect_to root_path
	end
	
	def topic_params
		params.require(:topic).permit(:title, :content)
	end
	
	def set_subforum
		@subforum = Subforum.find(params[:id])
	end

end
