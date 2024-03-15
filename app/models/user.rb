class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :tasks, through: :categories

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
