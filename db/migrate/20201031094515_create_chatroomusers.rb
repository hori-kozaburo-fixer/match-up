class CreateChatroomusers < ActiveRecord::Migration[6.0]
  def change
    create_table :chatroomusers do |t|
      t.integer :chat_room_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
