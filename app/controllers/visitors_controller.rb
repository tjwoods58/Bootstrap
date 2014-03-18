class VisitorsController < ApplicationController
  
  def index
    @visitors = Visitor.all
  end
  
  def new
    @visitor = Visitor.new
  end
  
  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.save
      flash[:notice] = "Chose #{@visitor.favorite}."
      redirect_to :root
    else
      redirect_to :root
    end
  end
  
  private
  
  def secure_params
    params.require(:visitor).permit(:favorite, :comment)
  end
end
