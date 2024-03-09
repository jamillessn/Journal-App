class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy 
    #@category.tasks
    # SELECT tasks FROM tasks WHERE tasks.category_id = x

    belongs_to :user

    # @category.user
    # SELECT users.* FROM users WHERE users.id = x
  
    validates :title, presence: true, uniqueness: {scope: :user_id}
    validates :desc, presence: true
    validates :user_id, presence:true
end
