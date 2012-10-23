class TodosController < ApplicationController
	def create
		@new_todo = Todo.new(params[:todo])
		if @new_todo.save
			redirect_to :back
  	end
	end
  def index
    @todos = Todo.search(params[:search]).order('created_at DESC')
    @new_todo = Todo.new(params[:todo])
  end
  def update
    @change_todo = Todo.find(params[:id])
		if @change_todo.update_attributes(params[:todo])
      redirect_to :back
    end
  end
  def destroy
    Todo.find(params[:id]).destroy
    redirect_to(:back)
  end
end
