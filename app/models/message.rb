class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :users
  validates_presence_of :content, :conversation_id, :user_id
end
