class UpdateIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :published, :boolean
  end
end
