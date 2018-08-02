class SessionsController < ApplicationController
  before_action :current_user
  skip_before_action :current_user, only: [:new, :create]

  def new
  end

  def create
    if params[:username] && params[:username] != ""
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
    redirect_to '/login'
  end

  private

  def current_user
    redirect_to '/login' unless session.include? :username
  end
end
