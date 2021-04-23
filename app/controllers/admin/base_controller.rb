class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  layout 'admin'

  protected

  def check_admin
    redirect_to tickets_path, alert:  'У вас немає прав для перегляду цієї сторінки' unless current_user.admin?
  end
end
