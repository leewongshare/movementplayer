# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  song_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Purchase < ActiveRecord::Base
  attr_accessible :song_id, :user_id
  belongs_to :song
  belongs_to :user
end
