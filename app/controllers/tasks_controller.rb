class TasksController < ApplicationController

  def index
    @tasks = Task.all.limit(4)
    render :json => @tasks
  end

  def show
    @task = Task.find(params[:id])
    render :json => @task
  end

  def done_tasks
    @tasks = Task.first(2)
    render :json => @tasks
  end

  def update
    @task = Task.find(task_params[:id])

      if @task.update(task_params)
        render :json => @task
      else
        render :json => {'success': false}
      end
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

  private
  def task_params
    params.permit(:id, :title, :description)
  end
end
