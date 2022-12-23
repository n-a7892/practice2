class CreateBigGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :big_genres do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
