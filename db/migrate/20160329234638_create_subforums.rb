class CreateSubforums < ActiveRecord::Migration
  def change
    create_table :subforums do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
