class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
    def password_complexity
   #  if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /)
    if password.match(/^(?=.*[^a-zA-Z])(?=.*[a-z])(?=.*[A-Z])\S{8,}$/)
    else
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, one number, and be at least 8 characters in length."
    end
  end

  has_many :projects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  validates :username, presence: true, uniqueness: true
  validates :user_company, presence: true, uniqueness: true
  validate :password_complexity
  
end
