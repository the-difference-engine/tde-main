class AdminsController < ApplicationController
  before_action :authenticate_admin!, :super_admin_only 
  
  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        redirect_to @admin, notice: "New Admin Created!"
      else
        render 'new'
      end
  end

  def update
    @admin = Admin.find(params[:id])
      if @admin.update(admin_params)
        redirect_to @admin, notice: "Admin Updated!"
      else
        render 'edit'
      end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to admins_path, alert: "Admin Destroyed!"
  end

  private

  def super_admin_only
    unless current_admin.super_admin?
      ## redirect_to :back, :alert => "Access denied."
      render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    end
  end

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password, :super_admin)
  end

end 
