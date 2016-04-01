class Topic < ActiveRecord::Base
	belongs_to :subforum
	belongs_to :user
	has_many :replies

end
