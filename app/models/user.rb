class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
	 :confirmable

  has_and_belongs_to_many :units

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :is_superadmin, :confirmed_at, :confirmation_sent_at

  def status
    if self.confirmed_at == nil
      :invited
    else
      :active
    end
  end
end
