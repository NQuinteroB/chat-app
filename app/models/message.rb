class Message < ApplicationRecord
  belongs_to :user_id
  belongs_to :chat_room_id
end
