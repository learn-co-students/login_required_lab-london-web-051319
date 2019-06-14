class SessionsController < ApplicationController

  def new
  end

  def create
     # byebug
     if params[:name].nil? || params[:name].empty?
        redirect_to sessions_new_path
     else
        session[:name] = params[:name]
     end
  end

  def destroy
     session.delete :name unless session[:name].nil?
     redirect_to home_path
  end

  def home
  end

end
