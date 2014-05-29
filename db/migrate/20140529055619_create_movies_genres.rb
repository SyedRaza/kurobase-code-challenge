class CreateMoviesGenres < ActiveRecord::Migration
  def change
    create_table :movies_genres do |t|
      t.references :movie, index: true
      t.references :genre, index: true

      t.timestamps
    end
  end
end
