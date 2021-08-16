class AddRoomMessagesToRoom < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :room_message, foreign_key: true
  end
end
