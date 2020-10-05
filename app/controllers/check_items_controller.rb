class CheckItemsController < ApplicationController
  before_action :set_check_item, only: [:show, :edit, :update, :destroy]

  # GET /check_items
  # GET /check_items.json
  def index
    @check_items = CheckItem.all
  end

  # GET /check_items/1
  # GET /check_items/1.json
  def show
  end

  # GET /check_items/new
  def new
    @check_item = CheckItem.new
  end

  # GET /check_items/1/edit
  def edit
  end

  # POST /check_items
  # POST /check_items.json
  def create
    favorite = current_favorite
    product = Product.find(params[:product_id])
    @check_item = favorite.add_product(product.id)

    respond_to do |format|
      if @check_item.save
        format.html { redirect_to root }
        format.json { render :show, status: :created, location: @check_item }
      else
        format.html { redirect_to products_index_url, notice: 'Unprocessable entity.' }
        format.json { render json: @check_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_items/1
  # PATCH/PUT /check_items/1.json
  def update
    respond_to do |format|
      if @check_item.update(check_item_params)
        format.html { redirect_to @check_item, notice: 'Check item was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_item }
      else
        format.html { render :edit }
        format.json { render json: @check_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_items/1
  # DELETE /check_items/1.json
  def destroy
    @check_item.destroy
    respond_to do |format|
      format.html { redirect_to check_items_url, notice: 'Check item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_item
      @check_item = CheckItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_item_params
      params.require(:check_item).permit(:product_id, :favorite_id)
    end
end
