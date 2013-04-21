# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :mangas
end
