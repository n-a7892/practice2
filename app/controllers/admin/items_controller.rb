class Admin::ItemsController < ApplicationController

  def index
    @item = Item.new
    @items = Item.all
    @small_genres = SmallGenre.all
  end

  def create
    item = Item.new(item_params)
    item.save
    redirect_to admin_items_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    @small_genres = SmallGenre.all
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_items_path
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to admin_items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :code, :introduction, :price, :small_genre_id, :image)
  end

end
