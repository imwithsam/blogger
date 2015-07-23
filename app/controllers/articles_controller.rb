class ArticlesController < ApplicationController
  include ArticlesHelper
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    flash.notice = "Article '#{@article.title}' created."
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    flash.notice = "Article '#{@article.title}' deleted."
    redirect_to articles_path
  end

  def edit
    
  end

  def update
    @article.update(article_params)
    flash.notice = "Article '#{@article.title}' updated."
    redirect_to article_path
  end
end
