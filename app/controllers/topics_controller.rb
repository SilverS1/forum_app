class TopicsController < ApplicationController

	before_action :set_subforum

	def new
		@topic = @subforum.topics.new
	end
	
	def create
		@topic = @subforum.topics.new(topic_params)
		if @topic.save
			redirect_to root_url
		else
			render 'new'
		end
	end
	
	
	def topic_params
		params.require(:topic).permit(:title, :content)
	end
	
	def set_subforum
		@subforum = Subforum.find(params[:subforum_id])
	end

end
