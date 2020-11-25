class Profession < ApplicationRecord
  has_many :steps
  has_many :users
  has_one_attached :image

  validates :track, presence: true
end
