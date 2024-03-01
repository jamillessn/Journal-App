class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find_by(id: params[:id])
    end

    def new
        @task = Task.new
    end

    def create
       @task = Task.create(task_params)
       @task.date = Date.strptime(params[:task][:date], "%Y-%m-%d")

       if @task.save
            redirect_to tasks_path
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to @task, notice: "Task was successfully updated.", status: :see_other
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy!
        redirect_to tasks_path, notice: "Task number #{@task.id} was successfully destroyed.", status: :see_other
    end

    private

    def task_params
        params.require(:task).permit(:user_id, :title, :category, :desc, :date)
    end

    def set_task
        @task = Task.find(params[:id])
    end
end
