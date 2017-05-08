# == Schema Information
#
# Table name: featured_movies
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FeaturedMovie < ApplicationRecord
  belongs_to :movie

  def self.row1
  	Movie.find_by(sha1: '7a4d696b90814fa3c8286cf9b05574c303ecc6e7')
  end

  def self.row2
  	Movie.find_by(sha1: 'd3419791b55d59babdeb326c45fdeb53d92b0d8c')
  end

  def self.row3
  	Movie.find_by(sha1: 'c9c2d808fc855effd837afb6449a112af4c75ea4')
  end

  def self.row4
  	Movie.find_by(sha1: '4b3868bea0ee2eaee8d6272fff7ecb7cc10414e7')
  end
end
