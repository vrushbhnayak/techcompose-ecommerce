class Userdevise < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :product_carts
  has_many :products, through: :product_carts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
