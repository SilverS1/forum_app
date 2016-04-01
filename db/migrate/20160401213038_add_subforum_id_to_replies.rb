class AddSubforumIdToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :subforum_id, :integer
    add_index :replies, :subforum_id
  end
end
