class PublicComment < ActiveRecord::Base

  attr_accessible :comment, :email, :event_id, :name
  belongs_to :event
  has_ancestry

end
