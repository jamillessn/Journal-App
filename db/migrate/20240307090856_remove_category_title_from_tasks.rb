class RemoveCategoryTitleFromTasks < ActiveRecord::Migration[7.1]
  def change
    remove_column :tasks, :category
  end
end
