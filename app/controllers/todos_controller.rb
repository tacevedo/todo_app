class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new(params[:todo])
  end

  private
  def post_params
    params.require(:todo).permit(:description, :completed)
  end
end
