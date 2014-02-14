class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :coordinator
      t.boolean :active
      t.boolean :call_for_papers_enabled
      t.boolean :voting_enabled
      t.date :call_for_papers_start_date
      t.date :call_for_papers_end_date
      t.date :voting_start_date
      t.date :voting_end_date

      t.timestamps
    end
  end
end
