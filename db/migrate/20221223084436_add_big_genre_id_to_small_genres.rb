class AddBigGenreIdToSmallGenres < ActiveRecord::Migration[6.1]
  def change
    add_reference :small_genres, :big_genre, foreign_key: true
  end
end
