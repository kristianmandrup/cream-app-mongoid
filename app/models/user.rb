use_roles_strategy :role_string

class User
  include Mongoid::Document
  include Roles::Mongoid 
  strategy :role_string, :default
  
  valid_roles_are Cream::Role.available
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
