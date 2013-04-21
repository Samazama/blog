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

class Volume < ActiveRecord::Base
  attr_accessible :picture

  belongs_to :manga
  has_many :links

  accepts_nested_attributes_for :links
end
