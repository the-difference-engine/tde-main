class DevelopersController < ApplicationController
	before_action :authenticate_admin!, :except => [:show]
  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def create
    @developer = Developer.new(developer_params)
      if @developer.save
        redirect_to @developer, notice: "New Developer Created!"
      else
        render 'new'
      end
  end

  def update
    @developer = Developer.find(params[:id])
      if @developer.update(developer_params)
        redirect_to  @developer, notice: "Developer Updated!"
      else
        render 'edit'
      end
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy
    redirect_to developers_path
  end

  private
    def developer_params
      params.require(:developer).permit(:title, :first_name, :last_name, :developerpic, :location)
    end
end
