class TasksController < ApplicationController
    before_action :set_category
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    def index
      @tasks = current_user.tasks
    end
  
    def show
      @task = Task.find(params[:id])
      @category = current_user.categories.find(params[:category_id])
      @task = @category.tasks.find(params[:id])

      rescue ActiveRecord::RecordNotFound
          redirect_to category_tasks_path,  alert: "Task not found." 
      end
  
    def new
      @task = Task.new(user_id: current_user.id)
      # @category = Category.find(params[:category_id])
      @category = current_user.categories.find(params[:category_id])

      if @category.nil?
        redirect_to category_tasks_path(@category), notice: "Category id not found."
      end
      
    end
  
    def create
      @task = @category.tasks.build(task_params)
      @task.user_id = current_user.id
      @task.category_id = @category.id

      if @task.save
        redirect_to tasks_path(@category), notice: "Task was successfully created."
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
      redirect_to tasks_path(@category), notice: "Task was successfully deleted."
    end

    def today
      @tasks_today = current_user.tasks.where(date: Date.today)
    end
  
    private
  
    def set_category
        if params[:category_id].present?
          @category = current_user.categories.find(params[:category_id])
        end
      end
  
    def set_task
      @task = current_user.tasks.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to tasks_path, alert: "Task not found." 
        end
    end
  
    def task_params
      params.require(:task).permit(:title, :date, :desc, :category_id)
    end