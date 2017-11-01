class Boat < ApplicationRecord
  belongs_to :user
  has_one :job
  has_many :containers

  def containers
  end
  

end
