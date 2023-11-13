# app/controllers/users/articles_controller.rb

module Users
  class ArticlesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to users_article_path(@article), notice: '記事が作成されました。'
      else
        render :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @article.update(article_params)
        redirect_to users_article_path(@article), notice: '記事が更新されました。'
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      redirect_to users_articles_path, notice: '記事が削除されました。'
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :image)
    end
  end
end
