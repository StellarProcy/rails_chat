class CreateRoomMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :room_messages do |t|
      t.timestamps
    end
  end
end
