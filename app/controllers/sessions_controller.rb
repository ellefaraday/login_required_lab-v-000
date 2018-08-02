class SessionsController < ApplicationController
  before_action :current_user
  skip_before_action :current_user, only: [:new, :create]

  def new
  end

  def create
  end
  private
  def current_user
    redirect_to '/login' unless session.include? :username
  end
end
