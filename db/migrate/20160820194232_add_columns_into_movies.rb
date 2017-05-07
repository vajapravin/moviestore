class AddColumnsIntoMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :imdbid, :string
  	add_column :movies, :rating, :float
  	add_column :movies, :released_date, :date
  	add_column :movies, :metascore, :integer
  	add_column :movies, :tagline, :string
  	add_column :movies, :vote_count, :integer
  	add_column :movies, :plot_summary, :integer
  	add_column :movies, :company, :string
  	add_column :movies, :length, :integer
  	change_table :movies do |t|
      t.attachment :poster
    end
  end
end