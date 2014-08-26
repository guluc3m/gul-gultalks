class Speaker < ActiveRecord::Base
  #attr_accessible :confirmed, :email, :event_id, :name, :surname
  belongs_to :event


  #validates :email,
  #          email: true,
  #          allow_blank: true

  #validates :name,
  #          allow_blank: false,
  #          format: { with: /\A[a-z\W]+\z/i }

  #validates :surname,
  #          allow_blank: true,
  #          format: { with: /\A[a-z\W]+\z/i }
end
