class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.column :title, :string
      t.column :content, :text
      t.column :summary, :string

      t.timestamps
    end
  end
end
