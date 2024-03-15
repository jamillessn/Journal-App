class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
  
    def index
      @categories = current_user.categories
    end
  
    def show
    end
  
    def new
      @category = current_user.categories.build
    end
  
    def create
      @category = current_user.categories.build(category_params)
      @category.user_id = current_user.id
  
      if @category.save
        redirect_to categories_path, notice: "Category was successfully created."
      else
        render :new
      end
      
    end
  
    def edit
    end
  
    def update
      if @category.update(category_params)
        redirect_to @category, notice: "Category was successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      @category.destroy
      redirect_to categories_path, notice: "Category was successfully deleted."
    end
  
    private
  
    def set_category
      @category = current_user.categories.find(params[:id])
        rescue ActiveRecord::RecordNotFound
        redirect_to categories_path,  alert: "Category not found."  
        end
    end
  
    def category_params
      params.require(:category).permit(:title, :desc)
    end
