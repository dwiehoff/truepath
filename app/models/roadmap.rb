class Roadmap < ApplicationRecord
  has_many :steps

  validates :completion, inclusion: { in: [ true, false ] }
end
