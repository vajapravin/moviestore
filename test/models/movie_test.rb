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

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
