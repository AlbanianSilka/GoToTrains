class WelcomeController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin
  def check_admin
    redirect_to tickets_path, alert: 'У вас нет прав на просмотр этой страницы' unless current_user.admin?
  end
  def index
  end
end
