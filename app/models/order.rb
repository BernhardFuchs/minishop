class Order < ApplicationRecord
	belongs_to :cart
	belongs_to :customer
	has_one :cart
	has_one :customer
end
