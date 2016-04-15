class AddSubheadingToSubforum < ActiveRecord::Migration
  def change

  	add_column :subforums, :subheading, :string

  end
end
