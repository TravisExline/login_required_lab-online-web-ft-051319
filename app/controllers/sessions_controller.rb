class SessionsController < ApplicationController 
  def new
  end

  def create
    if !params[:username].present?
      session[:username] = nil
      redirect_to '/login'
    else
      session[:username] = params[:username]
      redirect_to secret_path
  end

  def destroy
    session.destroy :username
  end
end
