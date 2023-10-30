#app/controllers/articles.rb

class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i(index)

  def index
    if user_signed_in?
      logger.debug current_user.id
    end
  end
end
