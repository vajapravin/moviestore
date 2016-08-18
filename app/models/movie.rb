# == Schema Information
#
# Table name: movies
#
#  id             :integer          not null, primary key
#  name           :string
#  folderid       :string
#  upload_at      :string
#  size           :integer
#  download_count :integer
#  cstatus        :string
#  link           :string
#  linkextid      :string
#  youtube        :string
#  facebook       :string
#  twitter        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Movie < ApplicationRecord
	acts_as_taggable_on :categories
	has_one :subtitle

	def movie_size
		Filesize.from("#{size} B").pretty rescue size
	end
end