class AdminsController < ApplicationController
	# before_action :admin_checker

	def dashboard
	end

	def subforums_index
		@subforums = Subforum.all
	end

	def users_index 
		@users = User.all
	end

	def topics_index
		@subforums = Subforum.all
		@topics = Topic.all
	end

	def statistics

	end

	def admin_checker
		unless current_user.admin?
			redirect_to root_url
		end
	end

end
