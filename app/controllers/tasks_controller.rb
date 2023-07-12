class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    tasks = Task.all
    render json: tasks
  end

  def show
    render json: @task
  end

  def create
    task = Task.new(task_params)

    if task.save
      render json: task, status: :created
    else
      render json: { error: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: { error: @task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    head :no_content
  end

  private

  def set_task
    @task = Task.find_by(id: params[:id])

    unless @task
      render json: { error: 'Task not found' }, status: :not_found
    end
  end

  def task_params
    params.require(:task).permit(:firstname, :lastname, :phonenumber, :emailaddress, :image)
  end
end
