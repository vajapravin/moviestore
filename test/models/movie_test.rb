# == Schema Information
#
# Table name: movies
#
#  id                        :integer          not null, primary key
#  name                      :string
#  folderid                  :string
#  upload_at                 :string
#  size                      :integer
#  sha1                      :string
#  download_count            :integer
#  cstatus                   :string
#  status                    :string
#  content_type              :string
#  link                      :string
#  linkextid                 :string
#  youtube                   :string
#  facebook                  :string
#  twitter                   :string
#  released_year             :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  file_name                 :string
#  google_fetch_url          :string
#  is_openload_synced        :boolean
#  published                 :boolean          default(TRUE)
#  imdbid                    :string
#  rating                    :float
#  released_date             :date
#  metascore                 :integer
#  tagline                   :string
#  vote_count                :integer
#  plot_summary              :string
#  company                   :string
#  length                    :integer
#  poster_file_name          :string
#  poster_content_type       :string
#  poster_file_size          :integer
#  poster_updated_at         :datetime
#  imdb_synced               :boolean          default(FALSE)
#  meta_title                :string
#  meta_description          :text
#  meta_keywords             :string
#  facebook_commenter_url    :string
#  yts_url                   :string
#  title_long                :string
#  slug                      :string
#  runtime                   :string
#  summary                   :string
#  description_full          :string
#  synopsis                  :string
#  yt_trailer_code           :string
#  mpa_rating                :string
#  background_image          :string
#  background_image_original :string
#  small_cover_image         :string
#  medium_cover_image        :string
#  large_cover_image         :string
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
