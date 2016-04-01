class Subforum < ActiveRecord::Base
	has_many :topics
	has_many :replies

end
