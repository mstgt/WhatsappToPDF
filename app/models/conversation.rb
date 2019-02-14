class Conversation < ApplicationRecord
    has_many :lines
    belongs_to :user
end    