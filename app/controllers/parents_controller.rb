class ParentsController < ApplicationController
  def index
    @todo = Parent.find(1)
    @todo_children = @todo.children

    @doing = Parent.find(2)
    @doing_children = @doing.children
  end
  
  def new
    @parent = Parent.new
  end
  
  def show
     @parent = Parent.find(params[:id])
     @children = @parent.children
  end
  
  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def sort
    @parent = Parent.find(params[:id])
    child = Child.find_by(position: params[:from].to_i + 1, parent_id: @parent.id)
    child.insert_at(params[:to].to_i + 1)
  end

  private
    def parent_params
      params.require(:parent).permit(:name)
    end
  
end
