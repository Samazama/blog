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

class Link < ActiveRecord::Base
  attr_accessible :url

  belongs_to :volume
end
