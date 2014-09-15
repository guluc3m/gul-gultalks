class WizardSession < ActiveRecord::Base
  attr_accessible :event_id, :session_id

  validates :event_id,
     presence: true

  validates :session_id,
     presence: true 
end
