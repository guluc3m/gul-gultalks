class AddEditionToken < ActiveRecord::Migration
  def change
    add_column :events, :token, :string, limit: 50
  end
end
