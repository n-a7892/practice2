class Admin::ItemsController < ApplicationController

  def index
    @item = Item.new
    @items = Item.all
  end

  def create
    item = Item.new(item_params)
    item.save
    redirect_to admin_items_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :code, :introduction, :price, :small_genre_id)
  end

end
