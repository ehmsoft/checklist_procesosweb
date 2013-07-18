class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    rondas_path
  end
end
