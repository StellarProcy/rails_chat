class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :firstname, null: false
      t.string :lastname
      t.string :nickname, null: false
      t.string :state
      t.date :birthday

      t.timestamps
    end
  end
end
