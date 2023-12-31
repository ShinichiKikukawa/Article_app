#app/controllers/users/sessions_controller.rb

# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  def after_sign_in_path_for(resource)
    users_dash_boards_path  # リダイレクト先を名前付きルートに変更
  end

  # DELETE /resource/sign_out
  def destroy
    super
    flash[:notice] = "サインアウトしました!"
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
