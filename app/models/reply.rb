class Reply < ActiveRecord::Base
	belongs_to :user
	belongs_to :topic
	belongs_to :subforum

end
