class Item < ApplicationRecord
  belongs_to :small_genre

  def with_tax_price
    (price * 1.1).floor
  end
end
