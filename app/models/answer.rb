class Answer < ApplicationRecord
  belongs_to :kasi
  belongs_to :question

  has_many :user_answers
  validates :text, presence: true, length: { minimum: 5 }
end
