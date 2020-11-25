class Kasi < ApplicationRecord
  has_many :user_kasis
  has_many :users, through: :user_kasis
  has_many :answers, dependent: :destroy
  validates :category, :name, presence: true
end
