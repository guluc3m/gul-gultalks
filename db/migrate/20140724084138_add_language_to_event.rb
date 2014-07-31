class AddLanguageToEvent < ActiveRecord::Migration
  def change
    add_column :events, :language, :integer
  end
end
