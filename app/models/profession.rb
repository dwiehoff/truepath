class Profession < ApplicationRecord
  has_many :roadmaps

  validates :name, presence: true
end
