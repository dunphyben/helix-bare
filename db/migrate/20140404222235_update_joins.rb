class UpdateJoins < ActiveRecord::Migration
  def change
    drop_table :ideas_tags
    drop_table :ideas_users
    drop_table :formats_ideas
  end
end
