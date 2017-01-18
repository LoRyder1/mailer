class ArticlesController < ApplicationController

  def create
    @article = Article.new(params[:article])

    if @article.save
      sleep(5)

      flash[:notice] = "Article"
  end
end
