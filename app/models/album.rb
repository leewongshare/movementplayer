# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  photo       :string(255)
#  releasedate :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :photo, :releasedate
end
