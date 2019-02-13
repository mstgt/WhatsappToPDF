class Line < ActiveRecord::Migration[5.1]
  def change
    create_table :lines do |t|
      t.text :content 
      t.timestamps 
    end
  end
end
