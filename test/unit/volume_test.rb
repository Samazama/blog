# == Schema Information
#
# Table name: volumes
#
#  id         :integer          not null, primary key
#  manga_id   :integer
#  picture    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VolumeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
