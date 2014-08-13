class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = %i[admin mod]
  attr_accessible :email, :password, :password_confirmation, :role
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    if self.role == "admin"
      return true
    else
      return false
    end
  end

  def mod?
    if self.role == "mod"
      return true
    else
      return false
    end
  end
end
