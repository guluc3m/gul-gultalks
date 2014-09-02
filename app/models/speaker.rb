class Speaker < ActiveRecord::Base
  attr_accessible :confirmed, :email, :event_id, :name, :surname
  belongs_to :event


  #validates :email,
  #          presence: true,
  #          allow_blank: false,
  #          email: true,
  #          uniqueness: {scope: [:event_id]}

  #validates :event_id,
  #          presence: true,
  #          allow_blank: false

  #validates :name,
  #          presence: true,
  #          allow_blank: false,
  #          format: { with: /\A[a-z\W]+\z/i }

  #validates :surname,
  #          allow_blank: true,
  #          format: { with: /\A[a-z\W]+\z/i }
end
