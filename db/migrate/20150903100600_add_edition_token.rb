class AddEditionToken < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :token, :string, limit: 50
  end
end
