class Room < ApplicationRecord
  has_many :users
  has_many :messages

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
