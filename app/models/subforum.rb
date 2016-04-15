class Subforum < ActiveRecord::Base
	has_many :topics
	has_many :replies
	validates :title, presence: true, length: {maximum: 20}
	validates :description, presence: true, length: {maximum: 65}

	SUBHEADINGS = ["Main", "Secondary", "Miscellaneous"]




end
