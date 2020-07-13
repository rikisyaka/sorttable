class ParentsController < ApplicationController
  def index
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

  private
    def parent_params
      params.require(:parent).permit(:name)
    end
  
  def sort
    @parent = Parent.find(params[:id])
    child = @parent.children[params[:from].to_i]
    child.insert_at(params[:to].to_i + 1)
    head :ok
  end
  
end
