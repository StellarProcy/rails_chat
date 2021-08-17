class Message < ApplicationRecord
  belongs_to :user
  has_many :room_messages, dependent: :destroy
  has_many :users, through: :room_messages

  validates :content, presence: true
end
