# == Schema Information
#
# Table name: manga_comments
#
#  id         :integer          not null, primary key
#  manga_id   :integer
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MangaCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
