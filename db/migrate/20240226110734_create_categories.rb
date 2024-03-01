class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.text :title
      t.text :desc

      t.timestamps
    end
  end
end
