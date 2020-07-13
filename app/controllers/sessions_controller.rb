class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      render :landing
    end
  end
end
