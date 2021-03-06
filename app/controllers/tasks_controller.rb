class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :all_tasks, only: [:index, :update, :create, :destroy]


  def new
    @task = Task.new
  end


  def create
    @task = Task.create(task_params)
  end


  def update
    @task.update(task_params)
  end

  
  def destroy
    @task.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

def all_tasks
  @tasks = Task.all
end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:description, :deadline)
    end
end
