class AddAttachmentImageToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :image
      t.string :sha
    end
  end

  def self.down
    remove_attachment :banners, :image
    remove_column :banners, :sha
  end
end
