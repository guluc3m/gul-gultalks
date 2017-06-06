class CreateApiKeys < ActiveRecord::Migration[4.2]
  def change
    create_table :api_keys do |t|
      t.string :token
      t.string :description

      t.timestamps null: false
    end
  end

  def self.up
    add_index :api_keys, :token, unique: true
  end
end
