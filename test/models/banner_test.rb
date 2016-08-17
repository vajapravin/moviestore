# == Schema Information
#
# Table name: banners
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
#  movie_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class BannerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
