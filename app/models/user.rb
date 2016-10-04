class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # if a user is deleted, then the tasks related must also be deleted, i.e. the reason for dependent: :destroy
  has_many :tasks, dependent: :destroy  
end
