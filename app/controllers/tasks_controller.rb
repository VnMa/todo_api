class TasksController < ApplicationController

  def index
    @tasks = Task.all.limit(4)
    render :json => @tasks
  end

  def show

  end

  def done_tasks

    @tasks = Task.first(2)
    render :json => @tasks
  end

  def update

  end

  def create
    @task = Task.new params

    if @task.save
      render :json => @task
    else
      render :json => {success: false}
    end
  end

  def delete

  end
end
