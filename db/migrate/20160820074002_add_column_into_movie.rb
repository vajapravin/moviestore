class AddColumnIntoMovie < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :file_name, :string
  	add_column :movies, :google_fetch_url, :string
  	add_column :movies, :is_openload_synced, :boolean
  	add_column :movies, :published, :boolean, default: true
  	Movie.all.map{|m| m.update_attributes(file_name: m.name) }
  end
end