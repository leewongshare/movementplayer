# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(, )
#  audiofile  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile

  mount_uploader :audiofile, MikUploader

  has_many :purchases
  has_many :users, :through => :purchases

  validates :name, :audiofile, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.0}

end
