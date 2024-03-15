class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy 
    belongs_to :user
  
    validates :title, presence: true, uniqueness: {scope: :user_id}
    validates :desc, presence: true
    validates :user_id, presence:true
end
