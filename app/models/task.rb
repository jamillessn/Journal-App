class Task < ApplicationRecord
    validates :title, presence: true
    validates :category, presence: true
    validates :desc, presence: true
    validates :user_id, presence: true
    # Add any other validations as necessary

    belongs_to :user
end
  
 

