class TasksController < ApplicationController
    def index
      tasks = Task.all 
      render json: tasks 
    end
  
    def show
      task = Task.find_by(id: params[:id])
      render json: task
    end
  
  end
  