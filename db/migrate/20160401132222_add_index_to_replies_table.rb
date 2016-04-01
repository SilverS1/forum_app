class AddIndexToRepliesTable < ActiveRecord::Migration
  def change
  
  	add_index :replies, :user_id
  	add_index :replies, :topic_id
  
  end
end
