class AdminController < ApplicationController
  respond_to :html

  skip_before_filter :require_login, only: [:new, :create]

  def index
    redirect_to new_admin_path unless logged_in?
  end

  def new
    redirect_to admin_index_path if logged_in? && current_user.admin?
  end

  def create
    user = login params[:email], params[:password]

    if user.try(:admin?)
      redirect_to admin_index_path and return
    else
      flash[:error] = "You shall not pass."
      redirect_to new_admin_path
    end
  end

  def destroy
    logout
    flash[:notice] = "You've been disconnected."
    redirect_to new_admin_path
  end
end