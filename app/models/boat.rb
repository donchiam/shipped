class Boat < ApplicationRecord
  belongs_to :user
  has_one :job

end
