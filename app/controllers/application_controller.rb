class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  APP_DOMAIN = 'www.thedifferenceengine.io'
  before_filter :ensure_domain

  def ensure_domain
  	unless request.env['HTTP_HOST'] == APP_DOMAIN || Rails.env.development?
      redirect_to "https://#{APP_DOMAIN}", :status =&gt; 301
  	end
  end

  def after_sign_in_path_for(resource)
    projects_path
  end
  
end
