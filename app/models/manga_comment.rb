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

class MangaComment < ActiveRecord::Base
  attr_accessible :content, :manga_id, :user_id

  belongs_to :manga
  has_one :user
end
