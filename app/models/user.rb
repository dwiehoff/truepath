class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :profession
  has_many :user_kasis, dependent: :destroy
  has_many :kasis, through: :user_kasis
  has_many :user_completed_steps, dependent: :destroy
  has_many :steps, through: :professions
  has_many :user_answers, dependent: :destroy

  has_one_attached :avatar
end
