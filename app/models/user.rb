class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	has_many :assignments
<<<<<<< HEAD
	has_many :boats, dependent: :destroy
=======
	has_many :boats, dependent: :destroy	
>>>>>>> b650b334d3f51215aa84cde44457f88b1d6b5700
	has_many :jobs, dependent: :destroy
end
