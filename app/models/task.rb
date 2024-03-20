class Task < ApplicationRecord 
    belongs_to :user
    belongs_to :category

    validates :title, presence: true
    validates :desc, presence: true
    validates :date, presence: true
end
