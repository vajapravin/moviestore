# == Schema Information
#
# Table name: movies
#
#  id             :integer          not null, primary key
#  name           :string
#  folderid       :string
#  upload_at      :string
#  size           :integer
#  sha1           :string
#  download_count :integer
#  cstatus        :string
#  status         :string
#  content_type   :string
#  link           :string
#  linkextid      :string
#  youtube        :string
#  facebook       :string
#  twitter        :string
#  released_year  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Movie < ApplicationRecord
	acts_as_taggable_on :categories
	has_one :subtitle
	has_many :banners, dependent: :destroy

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
end