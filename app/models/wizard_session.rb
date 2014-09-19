class WizardSession < ActiveRecord::Base
  validates :event_id,
     presence: true

  validates :session_id,
     presence: true 
end
