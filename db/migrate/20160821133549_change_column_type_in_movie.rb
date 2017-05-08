class ChangeColumnTypeInMovie < ActiveRecord::Migration[5.0]
  def change
  	change_column :movies, :plot_summary, :string
  	add_column :movies, :imdb_synced, :boolean, default: false
  	add_column :movies, :meta_title, :string
  	add_column :movies, :meta_description, :text
  	add_column :movies, :meta_keywords, :string
  end
end
