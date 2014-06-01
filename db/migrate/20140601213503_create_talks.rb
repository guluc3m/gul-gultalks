class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title, :limit => 128 ,:null => false
      t.string :brief_description, :null => false
      t.text :description, :limit => 2048, :null => false
      t.string :speaker, :limit => 64, :null => false
      t.string :room
      t.string :location, :limit => 64
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :assisted_by
      t.string :speaker_contact_info, :null => false
      t.integer :votes, :default => 0, :null => false
      t.text :comments, :limit => 2048
      t.integer :level, :null => false
      t.string :tags, :limit => 64
      t.string :content_url
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
