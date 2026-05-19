class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def detail
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  # GET /tasks/:id/edit
  def edit
    # Use the params[:id] to get the task from the db (needed for the form)
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  private

  def task_params
    params.required(:task).permit(:title, :details)
  end
end
