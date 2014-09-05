class Speaker < ActiveRecord::Base
  attr_accessible :confirmed, :email, :event_id, :name, :twitter
  belongs_to :event


  validates :email,
            presence: true,
            allow_blank: false,
            email: true,
            uniqueness: {scope: [:event_id]}

  validates :name,
            presence: true,
            allow_blank: false,
            format: { with: /\A[a-z\W]+\z/i }

  validates :twitter,
            allow_blank: true,
            twitter: true
end
