class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name, null: false, limit: 64
      t.string :email, limit: 64
      t.text :content, limit: 256
      t.string :ancestry
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end

  def self.up
    add_index :comments, :ancestry
  end

  def self.down
    remove_index :comments, :ancestry
  end
end
