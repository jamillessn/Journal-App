class Task < ApplicationRecord
    validates :title, presence: true
    validates :category, presence: true
    validates :desc, presence: true
    validates :date, presence: true
    validates :user_id, presence: true
    # Add any other validations as necessary

    # belongs_to :user
    belongs_to :category
    
    #@task.category 
    #SELECT categories * FROM categories WHERE categories.id = x LIMIT 1   
 
end
  


  
 


 

