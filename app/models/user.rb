class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, on: [:create, :update], presence: true
  validates :password, :password_confirmation, presence: true, length: { minimum: 6 }
  validates_confirmation_of :password
end
