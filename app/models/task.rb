class Task < ApplicationRecord
    validates :title, presence: true
    validates :desc, presence: true
    validates :date, presence: true
    validates :user_id, presence: true
    validates :category_id, presence: true

    belongs_to :user
    belongs_to :category
    
    #@task.category 
    #SELECT categories * FROM categories WHERE categories.id = x LIMIT 1   
 
end
  


  
 


 

