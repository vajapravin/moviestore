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
#  language                  :string
#

class Movie < ApplicationRecord
	acts_as_taggable
	acts_as_taggable_on :directors, :writers, :languages, :filming_locations, :countries, :cast_members, :genres
	
	has_one :subtitle
	has_many :banners, dependent: :destroy

  has_attached_file :poster, styles: { small: "50x50>", medium: "300x300>", thumb: "600x800>" }, default_url: "/images/:style/missing.png"
  do_not_validate_attachment_file_type :poster
  accepts_nested_attributes_for :banners

  scope :with_poster, -> { where.not(poster_file_name: nil) }
  scope :with_large_cover, -> { where.not(large_cover_image: nil) }

	def movie_size
		Filesize.from("#{size} B").pretty rescue size
	end

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |product|
	      csv << product.attributes.values_at(*column_names)
	    end
	  end
	end

	def cover_photo size="670x266"
		if poster.exists?
			poster.url(:original)
		elsif banners.size > 0 
			banners.first.image.url(:original)
		else
			large_cover_image || "http://placehold.it/#{size}"
		end
	end

	def poster_url
		large_cover_image || poster.url(:thumb)
	end

	def detail_url
		"/movies/#{id}/#{name.parameterize}"
	end

	def watch_movie
		link.sub! '/f/', '/embed/' rescue nil
	end
end
