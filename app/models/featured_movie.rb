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
end
