class CreateTagsCreateFormatsCreateUser < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :name, :string
      t.timestamps
    end
    create_table :users do |t|
      t.column :name, :string
      t.timestamps
    end
    create_table :formats do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
