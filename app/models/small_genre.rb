class SmallGenre < ApplicationRecord
  belongs_to :big_genre
  has_many :items, dependent: :destroy
end
