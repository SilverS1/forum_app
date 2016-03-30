class AddIndexToSubforumIdToTopics < ActiveRecord::Migration
  def change
  	add_column :topics, :subforum_id, :integer
  	add_index :topics, :subforum_id
  end
end
