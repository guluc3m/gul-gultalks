class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|

      t.string :name, limit: 64, null: false
      t.string :email, limit: 64, null: false
      t.string :twitter, limit: 64
      t.integer :event_id, null: false
      t.boolean :certificate, default: false
      t.boolean :confirmed, default: true

      t.timestamps
    end
  end

  def self.up
    add_index :event_speakers, [:email, :event_id]
  end
end
