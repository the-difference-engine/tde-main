class AdminsController < ApplicationController
  before_action :authenticate_admin!, :super_admin_only 
  
  def index
    @admins = Admin.all
  end

  private

  def super_admin_only
    unless current_admin.super_admin?
      ## redirect_to :back, :alert => "Access denied."
      render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    end
  end

end 

## render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false