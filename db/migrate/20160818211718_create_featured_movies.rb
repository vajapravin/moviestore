class CreateFeaturedMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :featured_movies do |t|
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
