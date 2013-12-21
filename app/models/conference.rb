class Conference < ActiveRecord::Base
  attr_accessible :active, :call_for_papers_enabled, :call_for_papers_end_date, :call_for_papers_start_date, :coordinator, :creation_date, :description, :end_date, :start_date, :title, :voting_enabled, :voting_end_date, :voting_start_date
  has_many :talks
end
