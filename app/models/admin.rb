class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :assistant]

  def admin?
    self.role == 'admin'
  end

  def assistant?
    self.role == 'assistant'
  end
end
