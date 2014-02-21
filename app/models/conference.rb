class Conference < ActiveRecord::Base
  attr_accessible :active, :call_for_papers_enabled, :call_for_papers_end_date, :call_for_papers_start_date, :coordinator, :description, :end_date, :start_date, :title, :voting_enabled, :voting_end_date, :voting_start_date
  has_many :talks
  validates_presence_of :title, :description
  validates_uniqueness_of :title
end
