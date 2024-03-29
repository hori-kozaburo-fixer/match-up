class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :full_name, :full_name_kana, :birth_day, :self_introduction, :sex, :img_name, :team_id])

    devise_parameter_sanitizer.permit(:account_update, keys:[:nickname, :full_name, :full_name_kana, :birth_day, :self_introduction, :sex, :img_name, :team_id])
  end

  

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
end
