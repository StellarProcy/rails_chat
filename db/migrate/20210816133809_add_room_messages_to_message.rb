class AddRoomMessagesToMessage < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :room_message, foreign_key: true
  end
end
