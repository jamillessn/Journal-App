class Task < ApplicationRecord
    validates :title, presence: true
    validates :desc, presence: true
    validates :date, presence: true
    validates :user_id, presence: true
    validates :category_id, presence: true

    belongs_to :user
    belongs_to :category
 
end
  


  
 


 

