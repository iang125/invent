class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :transactions
  has_many :equipments, :through => :transactions

  before_validation :set_pasword
  def set_pasword
    self.password = self.email
    self.password_confirmation = self.email
  end
end
