class ArticlesController < ApplicationController

  def create
    @article = Article.new(params[:article])

    if @article.save
      sleep(5)

      flash[:notice] = "Article was created."
      redirect_to article_path
    else
      render :new
    end
  end
end
