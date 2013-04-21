# == Schema Information
#
# Table name: mangas
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  plot       :text
#  author_id  :integer
#  genre_id   :integer
#  release    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string(255)
#

require 'test_helper'

class MangaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
