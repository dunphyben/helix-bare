class UpdateTables < ActiveRecord::Migration
  def change
    add_column :users, :slug, :string
    remove_column :ideas, :summary
    add_column :ideas, :summary, :text
    add_column :ideas, :slug, :string
    add_column :tags, :slug, :string
    add_column :formats, :slug, :string
  end
end
