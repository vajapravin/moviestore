# == Schema Information
#
# Table name: movie_categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  movie_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MovieCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
