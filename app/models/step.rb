class Step < ApplicationRecord
  belongs_to :profession
  has_many :user_completed_steps

  validates :name, presence: true
  validates :order, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true, allow_nil: false }
end
