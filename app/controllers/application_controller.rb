class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :move_to_index, except: [:index, :new ,:create]

  private
  def configure_permitted_parameters  # メソッド名は慣習
    # deviseのUserモデルにパラメーターを許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end 

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end

end
