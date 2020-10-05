class ArticlesController < ActionController
  def new
      @article = Article.new
  end
  
  private
  def article_params
      params.require(:article).permit(:title, :content)
  end
  
  def confirm
      @article = Article.new(article_params)
      if !@article.valid?
        render :new
      end
  end
  
  def create
    @article = Article.new(article_params)
    if params[:back].present?
      render :new
    else
      if @article.savedredirect_to articles_path, notice: '登録が完了しました'
      else
        render :new
      end
    end
  end
  
  def index
    @articles = Article.all
  end
  
  def index
    @users = User.all
    render layout: 'hoge'
  end
end
