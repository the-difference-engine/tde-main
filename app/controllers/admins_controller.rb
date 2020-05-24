class AdminsController < ApplicationController
  before_action :authenticate_admin!, :except => [:show]
  def index
    @admins = Admin.all
  end
