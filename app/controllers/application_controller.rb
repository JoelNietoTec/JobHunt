class ApplicationController < ActionController::Base
  include TheRole::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_breadcrumb "Inicio", :root_path

  before_filter :require_login, :except => [:not_authenticated]

  def current_candidate
     Candidate.where("user_id = ?", current_user.id).first
  end

  def current_company
     Company.where("user_id = ?", current_user.id).first
  end

  def not_authenticated
    redirect_to root_url, :alert => "Iniciar Sesión"
  end

end
