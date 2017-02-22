class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true
	scope :return_x_size, ->(x){ where(size: x)}
	scope :return_nil_users, ->{ where(user_id: nil)}
	after_destroy :category_delete

	def category_delete
		c = Category.all
		c.each do |elem|
			if elem.items.empty? 
				elem.destroy
			end
		end
	end
end
