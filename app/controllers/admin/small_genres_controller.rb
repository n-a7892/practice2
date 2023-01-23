class Admin::SmallGenresController < ApplicationController
  def index
    @big_genres = BigGenre.all
    @small_genre = SmallGenre.new
    @small_genres = SmallGenre.all
  end

  def create
    small_genre = SmallGenre.new(small_genre_params)
    small_genre.save
    redirect_to admin_small_genres_path
  end

  def show
    @small_genre = SmallGenre.find(params[:id])
    @items = @small_genre.items.all
  end

  def edit
    @big_genres = BigGenre.all
    @small_genre = SmallGenre.find(params[:id])
  end

  def update
    small_genre = SmallGenre.find(params[:id])
    small_genre.update(small_genre_params)
    redirect_to admin_small_genres_path
  end

  def destroy
    small_genre = SmallGenre.find(params[:id])
    small_genre.destroy
    redirect_to admin_small_genres_path
  end

  private

  def small_genre_params
    params.require(:small_genre).permit(:name, :big_genre_id)
  end
end
