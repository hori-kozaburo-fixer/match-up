class CreateChatmessages < ActiveRecord::Migration[6.0]
  def change
    create_table :chatmessages do |t|
      t.integer :chat_room_id, null: false
      t.integer :user_id,      null: false
      t.string  :message,      null: false
      t.timestamps
    end
  end
end
