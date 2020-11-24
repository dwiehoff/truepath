class Question < ApplicationRecord
  has_many :answers

  validates :text, presence: true, length: { minimum: 5 }
end
