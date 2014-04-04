class CreateNewJoins < ActiveRecord::Migration
  def change
    create_table :ideas_tags do |t|
      t.belongs_to :idea
      t.belongs_to :tag

      t.timestamps
    end

    create_table :ideas_users do |t|
      t.belongs_to :idea
      t.belongs_to :user
      t.timestamps
    end

    create_table :formats_ideas do |t|
      t.belongs_to :format
      t.belongs_to :idea
      t.timestamps
    end
  end
end
