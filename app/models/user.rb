class User < ApplicationRecord
	has_many :items
	validates :name, presence: true
	validates :email, uniqueness: true

	before_save :capitalize_name

	def capitalize_name
		self.name.capitalize!
	end


end
