class SubforumsController < ApplicationController

	def new
		@subforum = Subforum.new
	end
	
	def create
		@subforum = Subforum.new(subforum_params)
		if @subforum.save
			redirect_to root_url
		else
			render 'new'
		end
	end
	
	def edit
		@subforum = Subforum.find(params[:id])
	end
	
	def update
		@subforum = Subforum.find(params[:id])
		if @subforum.update_attributes(subforum_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end
	
	def show
		@subforum = Subforum.find(params[:id])
		@topic = @subforum.topics
	end
	
	def destroy
		@subforum = Subforum.find(params[:id]).destroy
	end
	
	def subforum_params
		params.require(:subforum).permit(:title, :description)
	end

end
