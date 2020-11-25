class Profession < ApplicationRecord
  has_many :steps
  
  validates :name, presence: true
end
