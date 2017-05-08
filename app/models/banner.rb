# == Schema Information
#
# Table name: banners
#
#  id                 :integer          not null, primary key
#  name               :string
#  folderid           :string
#  upload_at          :string
#  size               :integer
#  download_count     :integer
#  cstatus            :string
#  link               :string
#  linkextid          :string
#  movie_id           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  sha                :string
#

class Banner < ApplicationRecord
  belongs_to :movie
  has_attached_file :image, styles: { small: "50x50>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :image, content_type: { content_type: "image/jpeg" }
  do_not_validate_attachment_file_type :image
end
