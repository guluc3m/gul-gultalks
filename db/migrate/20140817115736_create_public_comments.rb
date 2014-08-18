class CreatePublicComments < ActiveRecord::Migration
  def change
    create_table :public_comments do |t|
      t.string :name, null: false, limit: 64
      t.string :email, limit: 64
      t.text :comment, limit: 256
      t.string :ancestry
      t.integer :event_id, null: false

      t.timestamps
    end
  end

  def self.up
    add_index :public_comments, :ancestry
  end

  def self.down
    remove_index :public_comments, :ancestry
  end
end
