# == Schema Information
#
# Table name: home_sliders
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HomeSlider < ApplicationRecord
  belongs_to :movie
end
