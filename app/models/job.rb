class Job < ApplicationRecord
	belongs_to :user
	has_many :assignments
   	has_many :boats, through: :assignments
   	validates :description,
    presence: true,
    length: {minimum: 50},
    on: :create,
    allow_nil: false

end
