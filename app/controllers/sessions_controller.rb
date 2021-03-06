#encoding: UTF-8
class SessionsController < ApplicationController

  before_action :set_user, only: [:create]
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    if @user
      SessionHistory.create(user_id: current_user.id, message: 'Log In')
      redirect_to root_url , :success => "Sesión Iniciada"
    else
      redirect_to root_url, :alert => 'Email y/o password incorrectos'
    end
  end
  def destroy
    SessionHistory.create(user_id: current_user.id, message: 'Log Out')
    logout
    redirect_to root_url, :notice => 'Sesión Finalizada'
  end

  private
  def set_user
    @user = login(params[:sessions][:email], params[:sessions][:password])
  end

  def session_params
    params.require(:user).permit(:email, :password)
  end

end
