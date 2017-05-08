# == Schema Information
#
# Table name: subtitles
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  link       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subtitle < ApplicationRecord
  belongs_to :movie
end
