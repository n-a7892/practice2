class BigGenre < ApplicationRecord
  has_many :small_genres, dependent: :destroy
end
