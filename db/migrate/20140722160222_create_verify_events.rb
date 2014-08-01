class CreateVerifyEvents < ActiveRecord::Migration
  def change
    create_table :verify_events do |t|
      t.integer :event_id
      t.string :email
      t.string :token, limit: 32
      t.boolean :validated, default: false
      t.timestamp :validated_at

      t.timestamps
    end
  end
end
