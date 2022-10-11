class CreateChatRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_rooms do |t|
      t.string :name
      t.string :description
      t.boolean :is_private, :default => false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
