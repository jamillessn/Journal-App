class TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_category
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    def index
      @tasks = current_user.tasks
    end
  
    def show
    end
  
    def new
      @task = Task.new(user_id: current_user.id)
      
    end
  
    def create
      @task = @category.tasks.build(task_params)
      @task.user_id = current_user.id
      @task.category_id = @category.id

      if @task.save
        redirect_to category_tasks_path(@category), notice: "Task was successfully created."
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @task.update(task_params)
        redirect_to category_tasks_path(@category), notice: "Task was successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      @task.destroy
      redirect_to category_tasks_path(@category), notice: "Task was successfully deleted."
    end
  
    private
  
    def set_category
        if params[:category_id].present?
          @category = current_user.categories.find(params[:category_id])
        else
          redirect_to categories_path, alert: "Category not found."
        end
      end
  
    def set_task
        @task = current_user.tasks.find(params[:id])
        @task = @category.tasks.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to categories_path, alert: "Task not found." 
        end
    end
  
    def task_params
      params.require(:task).permit(:user_id, :title, :date, :desc, :category_id)
    end

  