class Line < ApplicationRecord
    belongs_to :conversation

    def print_ready
        "<div>#{content}</div>"
    end
end  