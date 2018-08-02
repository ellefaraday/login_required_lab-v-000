class SessionsController < ApplicationController

  private
  def current_user
    redirect_to '/login' unless session.include? :username
end
