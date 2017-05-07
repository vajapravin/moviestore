class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :name
      t.string :folderid
      t.string :upload_at
      t.integer :size
      t.integer :download_count
      t.string :cstatus
      t.string :link
      t.string :linkextid
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
