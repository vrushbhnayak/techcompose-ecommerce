class UserCartItem < ApplicationRecord
  belongs_to :userdevise
  belongs_to :product
end
