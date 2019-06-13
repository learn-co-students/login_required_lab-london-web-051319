class SessionsController < ApplicationController
  def new
  end
  def create
    session[:name] = params[:name] if params[:name] && !params[:name].empty?
    if current_user.nil? || current_user.empty?
      redirect_to new_session_path
    else
      redirect_to sessions_path
    end
  end
  def destroy
    session.delete :name
  end
end
