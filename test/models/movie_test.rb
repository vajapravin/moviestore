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

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
