class Kasi < ApplicationRecord
  has_many :users, :answers
  validates :category, :name, presence: true
end
