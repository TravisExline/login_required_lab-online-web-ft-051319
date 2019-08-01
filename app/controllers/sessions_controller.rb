class SessionsController < ApplicationController 
  def new
  end

  def create
    if !params[:name].present?
      session[:name] = nil
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    session.destroy :name
  end
end
