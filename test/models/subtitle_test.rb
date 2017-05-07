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

require 'test_helper'

class SubtitleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
