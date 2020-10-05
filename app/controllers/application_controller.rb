class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :tags, :current_cart, :set_search_q

  def after_sign_out_path_for(_resource)
    new_user_session_path
  end

  def after_sign_in_path_for(_resource)
    books_path
  end

  def tags
    @tags = Tag.all
  end

  def set_search_q
    @q = Book.ransack params[:q]
  end
  
  def new
      @article = Article.new
  end
  
  private
  def current_favorite
    favorite = Favorite.find_by(id: session[:favorite_id])
    favorite = Favorite.create unless favorite
    session[:favorite_id] = favorite.id
    favorite
  end
  
  private
  def current_cart
    @current_cart = Cart.find_by(id: session[:cart_id])
    @current_cart = Cart.create unless @current_cart
    session[:cart_id] = @current_cart.id
    @current_cart
  end
  
end
