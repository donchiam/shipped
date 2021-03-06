class Boat < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :jobs, through: :assignments

has_attached_file :photo, styles: { medium: "200x200>", thumb: "50x50>", large: '300x300>'}, default_url: "/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end

