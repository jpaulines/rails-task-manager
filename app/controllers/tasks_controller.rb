class TasksController < ApplicationController
  # READ
  # GET /tasks
  def index
    @tasks = Task.all
  end
  # GET /tasks/id
  def show
    @task = Task.find(params[:id])
  end

  # CREATE
  # GET /tasks/new
  def new
    @task = Task.new
  end
  # POST /tasks
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to show_path(@task)
  end

  # UPDATE
  # GET /tasks/:id/edit
  def edit
    @task = Task.find(params[:id])
  end

  # PATCH /tasks/:id
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    @task.save
    redirect_to show_path(@task)
  end

  # DESTROY
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
