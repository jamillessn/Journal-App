class CategoriesController < ApplicationController
    before_action :authenticate_user!
    # before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
        @categories = Category.all
    end

    def show
        @category = Category.find_by(id: params[:id])
    end

    def new
        @category = Category.new
    end

    def create
       @category = Category.create(category_params)

       if @category.save
            redirect_to categories_path
        else
            render :new
        end
    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to @category, notice: "Category was successfully updated.", status: :see_other
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy!
        redirect_to categories_path, notice: "Category ' #{@category.title} ' was successfully removed.", status: :see_other
    end

    private

    def category_params
        params.require(:category).permit(:title,:desc,:user_id)
    end

    # def set_category
    #     @category = Category.find(params[:id])
    # end
end
