class Conversation < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.text :content 
      t.timestamps 
    end  
  end
end
