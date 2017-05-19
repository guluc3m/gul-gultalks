class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :assistant]

  def admin?
    if self.role == "admin"
      return true
    else
      return false
    end
  end

  def assistant?
    if self.role == "assistant"
      return true
    else
      return false
    end
  end
end
