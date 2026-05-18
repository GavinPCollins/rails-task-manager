class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def detail
    @task = Task.find(params[:id])
  end
end
