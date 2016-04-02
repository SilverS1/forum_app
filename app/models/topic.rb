class Topic < ActiveRecord::Base
	belongs_to :subforum
	belongs_to :user
	has_many :replies
	validates :title, presence: true, length: {maximum: 200}
	validates :content, presence: true, length: {maximum: 5000}

end
