class Admin < User
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
