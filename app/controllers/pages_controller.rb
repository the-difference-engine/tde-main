class PagesController < ApplicationController
  def home
    @projects = Project.all
    @developers = Developer.all
  end
end
