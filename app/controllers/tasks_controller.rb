class TasksController < ApplicationController
  def index
    @tasks= Task.all
  end

  def new
    @task= Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    @task = task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description)
  end
end
