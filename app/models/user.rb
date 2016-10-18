class User < ActiveRecord::Base

  has_one :profile
  

  enum role: {individual: 0,agency: 1}
 
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  
end
