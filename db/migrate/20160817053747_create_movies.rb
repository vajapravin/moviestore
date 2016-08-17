class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :folderid
      t.string :upload_at
      t.integer :size
      t.integer :download_count
      t.string :cstatus
      t.string :link
      t.string :linkextid
      t.string :youtube
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
