#app_controllers/users_controller.rb

class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :dashboard]

  def index
  end

  def dashboard
  end
end
