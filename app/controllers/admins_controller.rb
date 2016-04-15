class AdminsController < ApplicationController

	def dashboard
		@users = User.all
	end

	def subforums_index
		@subforums = Subforum.all
	end

	def users_index 
		@users = User.all
	end

end
