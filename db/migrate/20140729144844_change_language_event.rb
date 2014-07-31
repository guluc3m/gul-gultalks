class ChangeLanguageEvent < ActiveRecord::Migration
  def change
      reversible do |dir|
            change_table :events do |t|
                dir.up { t.change :language, :string, limit:2 }
                dir.down{ t.change :language, :integer }
            end
        end
  end
end
