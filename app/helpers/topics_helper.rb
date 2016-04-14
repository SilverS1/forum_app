module TopicsHelper

   def owned?(subject)
		current_user.id == subject.user_id
	end

end
