class AddConversationToLines < ActiveRecord::Migration[5.1]
  def change
    add_column :lines, :conversation_id, :integer
    add_column :lines, :order, :integer
  end
end
