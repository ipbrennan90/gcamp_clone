class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
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
    if @task.update(blog_post_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    task= Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description)
  end
end
