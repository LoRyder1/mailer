class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])  
  end

  def new
    
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      Resque.enqueue(Sleeper, 5)

      flash[:notice] = "Article was created."
      redirect_to articles_path
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
