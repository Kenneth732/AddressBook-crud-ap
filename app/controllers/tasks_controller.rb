class TasksController < ApplicationController
    def index
      tasks = Task.all 
      render json: tasks 
    end
  
    def show
      task = Task.find_by(id: params[:id])
      render json: task
    end
  
    def create 
      task = Task.new(task_params)
      if task.save 
        render json: task, status: :created
      else
        render json: task.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      task = Task.find_by(id: params[:id])
      task.destroy
      head :no_content  
    end
  
    private 
  
    def task_params
      params.require(:task).permit(:firstname, :lastname, :phonenumber, :emailaddress, :image)
    end
  end
  