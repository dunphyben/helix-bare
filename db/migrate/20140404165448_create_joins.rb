class CreateJoins < ActiveRecord::Migration
  def change
    create_table :ideas_tags do |t|
      t.belongs_to :ideas
      t.belongs_to :tags

      t.timestamps
    end

    create_table :ideas_users do |t|
      t.belongs_to :ideas
      t.belongs_to :users
      t.timestamps
    end

    create_table :formats_ideas do |t|
      t.belongs_to :formats
      t.belongs_to :ideas
      t.timestamps
    end
  end
end
