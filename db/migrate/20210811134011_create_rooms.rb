class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :Name
      t.string :decription

      t.timestamps
    end
  end
end