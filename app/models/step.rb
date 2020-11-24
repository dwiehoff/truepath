class Step < ApplicationRecord
  belongs_to :roadmap

  validates :name, presence: true
  validates :order, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true, allow_nil: false }
  validates :roadmap_id, presence: true
end
