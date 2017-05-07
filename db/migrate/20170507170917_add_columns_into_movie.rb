class AddColumnsIntoMovie < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :yts_url, :string
		add_column :movies, :title_long, :string
		add_column :movies, :slug, :string
		add_column :movies, :runtime, :string
		add_column :movies, :summary, :string
		add_column :movies, :description_full, :string
		add_column :movies, :synopsis, :string
		add_column :movies, :yt_trailer_code, :string
		add_column :movies, :mpa_rating, :string
		add_column :movies, :background_image, :string
		add_column :movies, :background_image_original, :string
		add_column :movies, :small_cover_image, :string
		add_column :movies, :medium_cover_image, :string
		add_column :movies, :large_cover_image, :string
  end
end
