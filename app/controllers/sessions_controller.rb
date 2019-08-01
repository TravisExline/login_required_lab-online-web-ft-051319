class SessionsController < ApplicationController 
  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to '/'
  end

  def destroy
    session.destroy :username
  end
end
