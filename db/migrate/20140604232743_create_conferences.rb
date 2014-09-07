class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title, limit: 128, null: false
      t.text :description, limit: 1024, null: false
      t.string :location, limit: 32, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :coordinator, null: false
      t.boolean :active, null: false
      t.boolean :call_for_papers_enabled, null: false
      t.boolean :voting_enabled, null: false
      t.boolean :show_calendar, null: false, default: false
      t.date :call_for_papers_start_date, null: false
      t.date :call_for_papers_end_date, null: false
      t.date :voting_start_date, null: false
      t.date :voting_end_date, null: false
      t.string :slug

      t.timestamps
    end
  end
end
