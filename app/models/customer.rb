class Customer < ApplicationRecord
	has_many :orders

	validates :name, presence: true
	validates :street, presence: true
	validates :zipcode, presence: true
	validates :city, presence: true

	validates :banknumber, length: { minimum: 5 }
	validates :accountnumer, length: { minimum:10 }
end
