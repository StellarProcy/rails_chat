class AddMessageRefToRooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :message, null: false, foreign_key: true
  end
end
