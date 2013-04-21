# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  volume_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string(255)
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
