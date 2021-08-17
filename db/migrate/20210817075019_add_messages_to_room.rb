class AddMessagesToRoom < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :message, foreign_key: true
  end
end
