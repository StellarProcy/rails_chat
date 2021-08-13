class User < ApplicationRecord
  has_secure_password

  has_many :rooms

  validates :login, presence: true, uniqueness: { case_sensitive: true }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :firstname, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
