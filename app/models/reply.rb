class Reply < ActiveRecord::Base
	belongs_to :user
	belongs_to :topic
	belongs_to :subforum
	validates :content, presence: true, length: {maximum: 10000}
	
end
