class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :categories, dependent: :destroy
  has_many :tasks, through: :categories
   #current_user.categories 
   #SELECT categories.* FROM categories WHERE categories.user_id = x

   # current_user.tasks
   # SELECT tasks.* FROM tasks
   # INNER JOIN categories
   # ON categories.id = tasks.category_id
   # WHERE categories.user_id = x;

  #  def tasks
  #     Task.joins(:category).where(categories: { user_id: id })
  #  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
