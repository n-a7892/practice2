class Admin::BigGenresController < ApplicationController
  def index
    @big_genre = BigGenre.new
    @big_genres = BigGenre.all
  end

  def create
    big_genre = BigGenre.new(big_genre_params)
    big_genre.save
    redirect_to admin_big_genres_path
  end

  def show
    @big_genre = BigGenre.find(params[:id])
  end

  def edit
    @big_genre = BigGenre.find(params[:id])
  end

  def update
    big_genre = BigGenre.find(params[:id])
    big_genre.update(big_genre_params)
    redirect_to admin_big_genres_path
  end

  def destroy
    big_genre = BigGenre.find(params[:id])
    big_genre.destroy
    redirect_to admin_big_genres_path
  end

  private

  def big_genre_params
    params.require(:big_genre).permit(:name)
  end

end