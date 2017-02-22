class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true
	scope :return_x_size, ->(x){ where(size: x)}
	scope :return_nil_users, ->{ where(user_id: nil)}
end
