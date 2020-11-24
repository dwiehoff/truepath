class Kasi < ApplicationRecord
  has_many :users
  has_many :answers, depenedent: :destroy
  validates :category, :name, presence: true
end
