class Profession < ApplicationRecord
  has_many :steps, :users

  validates :name, presence: true
end
