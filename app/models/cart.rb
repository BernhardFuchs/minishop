class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_many :products
end
