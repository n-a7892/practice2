class AddSmallGenreIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :small_genre, foreign_key: true
  end
end
