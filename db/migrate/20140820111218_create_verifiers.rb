class CreateVerifiers < ActiveRecord::Migration
  def change
    create_table :verifiers do |t|

      t.string :email, null: false
      t.integer :event_id, null: false
      t.string :token, limit: 32, null: false
      t.boolean :verified, default: false, null: false
      t.string :verify_type, null: false

      t.timestamps
    end
  end
end
