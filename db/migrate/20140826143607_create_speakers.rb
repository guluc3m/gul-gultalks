class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|

      t.string :name, limit: 28, null: false
      t.string :surname, limit: 36
      t.string :email, limit: 64, null: false
      t.integer :event_id, null: false
      t.boolean :confirmed, default: true

      t.timestamps
    end
  end

  def self.up
    add_index :event_speakers, [:email, :event_id]
  end
end
